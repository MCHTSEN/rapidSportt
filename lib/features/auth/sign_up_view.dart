import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/features/auth/create_news_logic.dart'; // Eklediğimiz firestore paketi
import 'package:myapp/features/home/home_view.dart';
import 'package:myapp/product/enums/firebase_collection.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';

class SingUpView extends ConsumerStatefulWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  ConsumerState<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends ConsumerState<SingUpView> {
  late final CreateNewsLogic _homeLogic;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();

  String selectedOption = 'Öğrenci';
  String selectedBranch = 'Fitnes';
  bool changeLoading = false;
  @override
  void initState() {
    _homeLogic = CreateNewsLogic();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> type = ['Eğitmen', 'Öğrenci'];
    final List<String> branch = [
      'Futbol',
      'Fitnes',
      'Basketbol',
      'Voleybol',
      'Tenis',
      'Yüzme',
      'Jimnastik',
      'Atletizm',
      'Boks',
      'Masa Tenisi',
    ];
    DateTime? selectedDate;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilgilerini Gir'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _nameTextField(),
                    _emptyBox(context),
                    _surNameTextField(),
                    _emptyBox(context),
                    _numberTextField(),
                    _emptyBox(context),
                    TextField(
                      controller: birthDateController,
                      decoration: const InputDecoration(
                        labelText: 'Dogum Tarihinizi Giriniz',
                        hintText: '10/02/1998',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        ),
                      ),
                    ),
                    _emptyBox(context),
                    DropdownButtonFormField(
                      value: selectedOption,
                      isExpanded: true,
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption = newValue ?? '';
                        });
                      },
                      items: type
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                    ),
                    if (selectedOption == 'Eğitmen')
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              'Alan seciniz',
                              style: context.general.textTheme.bodyLarge,
                            ),
                          ),
                          DropdownButtonFormField(
                            value: selectedBranch,
                            isExpanded: true,
                            onChanged: (newValue) {
                              setState(() {
                                selectedBranch = newValue ?? '';
                              });
                            },
                            items: branch
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    _emptyBox(context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Profil Fotografinizi Yukleyin'),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(),
                          ),
                          child: IconButton(
                            onPressed: () async {
                              await _homeLogic.pickAndCheck(
                                (value) {
                                  setState(() {});
                                },
                              );
                              setState(() {});
                            },
                            icon:
                                const Icon(Icons.add_photo_alternate_outlined),
                          ),
                        ),
                      ],
                    ),
                    _emptyBox(context),
                    ElevatedButton(
                      onPressed: () async {
                        final userModel = UserModel(
                            name: nameController.text,
                            surname: surnameController.text,
                            phone: numberController.text,
                            birthDate: birthDateController.text,
                            email: FirebaseAuth.instance.currentUser?.email,
                            uid: FirebaseAuth.instance.currentUser?.uid,
                            type: selectedOption,
                            branch: selectedBranch,
                            lat: '0',
                            lng: '0');

                        ref.read(firebaseServiceProvider).saveUserInfo(
                            userModel,
                            ref
                                .read(firebaseServiceProvider)
                                .auth
                                .currentUser!
                                .uid,
                            FirebaseColletions.users.name);

                        ref.read(firebaseServiceProvider).saveUserLocation(
                            const GeoPoint(0, 0),
                            ref
                                .read(firebaseServiceProvider)
                                .auth
                                .currentUser!
                                .uid,
                            FirebaseColletions.location.name);

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()));
                      },
                      child: const Center(child: Text('Kaydet')),
                    ),
                  ],
                ),
              ),
            ),
            if (changeLoading) const Center(child: CircularProgressIndicator())
          ]),
        ),
      ),
    );
  }

  TextField _numberTextField() {
    return TextField(
      controller: numberController,
      decoration: const InputDecoration(
        labelText: 'Telefon Numaranızı Giriniz',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }

  TextField _surNameTextField() {
    return TextField(
      controller: surnameController,
      decoration: const InputDecoration(
        labelText: 'Soyisminizi Giriniz',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }

  TextField _nameTextField() {
    return TextField(
      controller: nameController,
      decoration: const InputDecoration(
        labelText: 'İsminizi Giriniz',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }

  Future<void> _addUserToFirestore() async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': nameController.text,
      'surname': surnameController.text,
      'type': selectedOption,
    });
  }

  SizedBox _emptyBox(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.03,
    );
  }
}
