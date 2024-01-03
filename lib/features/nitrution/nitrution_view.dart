// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/math/nutrition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:myapp/features/nitrution/nitrution_logic.dart';

class NitrutionView extends ConsumerStatefulWidget {
  const NitrutionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NitrutionViewState();
}

class _NitrutionViewState extends ConsumerState<NitrutionView> {
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String gender = '';

  // Cinsiyet seçenekleri

  @override
  Widget build(BuildContext context) {
    List<String> genderOptions = ['Erkek', 'Kadın'];
    String selectedGender = 'Erkek';
    ActivityLevel selectedActivityLevel = ActivityLevel.sedentary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR Hesaplama'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Yaş'),
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField(
              value: selectedGender,
              items: genderOptions.map((gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value.toString();
                });
              },
              decoration: const InputDecoration(labelText: 'Cinsiyet'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: weightController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Kilo'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: heightController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Boy'),
            ),
            const SizedBox(height: 32.0),
            DropdownButton(
              value: selectedActivityLevel,
              items: ActivityLevel.values.map((level) {
                return DropdownMenuItem(
                  value: level,
                  child: Text(NutritionFunc().activityLevelToString(level)),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedActivityLevel = value as ActivityLevel;
                });
              },
            ),
            ElevatedButton(
                onPressed: () async {
                  int age = int.tryParse(ageController.text) ?? 0;
                  double weight = double.tryParse(weightController.text) ?? 0.0;
                  double height = double.tryParse(heightController.text) ?? 0.0;
                  final bmr = NutritionFunc().calculateBMR(UserInfo(
                      age: age,
                      gender: selectedGender == 'Kadın' ? 'female' : 'male',
                      weight: weight,
                      height: height));

                  final dailyCalories = NutritionFunc()
                      .calculateDailyCalories(bmr, selectedActivityLevel);
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => SizedBox(
                          height: 60.h,
                          width: 100.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'BMR sonucunuz: ${bmr.toString()}',
                                style: context.general.textTheme.bodyLarge,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Gunluk Kalori Ihtiyaciniz: ${dailyCalories.toString()} kcal',
                                  style: context.general.textTheme.bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Gunluk Karbonhidrat Ihtiyaciniz\n ${(dailyCalories * 0.53).toString()} kcal/ ${(dailyCalories * 0.53 / 4).toString()} gr.',
                                  style: context.general.textTheme.bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Gunluk Yağ Ihtiyaciniz\n ${(dailyCalories * 0.25).toString()} kcal/ ${(dailyCalories * 0.25 / 9).toString()} gr.',
                                  style: context.general.textTheme.bodyLarge,
                                ),
                              ),
                              Text(
                                'Gunluk Protein Ihtiyaciniz\n ${(dailyCalories * 0.22).toString()} kcal/ ${(dailyCalories * 0.22 / 4).toString()} gr.',
                                style: context.general.textTheme.bodyLarge,
                              ),
                            ],
                          )));
                },
                child: const Text('Hesapla')),
          ],
        ),
      ),
    );
  }
}
