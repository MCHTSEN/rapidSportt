import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/product/utilities/package/util_image_picker.dart';

class CreateNewsLogic {
  final TextEditingController titleController = TextEditingController();

  Uint8List? _selectedFileBytes;
  Uint8List? get selectedFileBytes => _selectedFileBytes;
  bool _isValidateAllForm = false;
  bool get isValidateAllForm => _isValidateAllForm;

  XFile? _selectedFile;

  final GlobalKey<FormState> formKey = GlobalKey();

  bool checkAllValidate(ValueSetter<bool> onUpdate) {
    final value = formKey.currentState?.validate() ?? false;

    if (value != _isValidateAllForm && selectedFileBytes != null) {
      _isValidateAllForm = value;
      onUpdate.call(value);
    }
    return isValidateAllForm;
  }

  Future<void> pickAndCheck(ValueSetter<bool> onUpdate) async {
    _selectedFile = await UtilImagePicker().pickImage();
    _selectedFileBytes = await _selectedFile?.readAsBytes();
    checkAllValidate(
      (value) {},
    );
    onUpdate.call(true);
  }
}
