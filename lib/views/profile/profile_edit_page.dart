import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/color_const.dart';
import 'package:test_app/views/profile/phone_input.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool _isOldPasswordVisible = false;
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tahrirlash',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Color(0xffFD4D00)),),

        actions: [
          IconButton(
            onPressed: () {
              // Save action
            },
            icon: const Icon(Icons.check, color: Color(0xffFD4D00)),
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: _image != null ? FileImage(_image!) : AssetImage("assets/image/person.png"),
              
              child: _image == null
                  ? CircleAvatar(
                radius: 24,
                backgroundColor: Color(0xffF7F7F7).withOpacity(.5),
                child: Icon(Icons.edit, color: Color(0xffFD4D00),),)

                  : null,
            ),
          ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: 'Xumoyunmirzo Yakubjanov',
                decoration: const InputDecoration(
                  labelText: 'To\'liq ismingiz',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const PhoneInputField(),
              // Row(
              //   children: [
              //     Flexible(
              //       flex: 2,
              //       child: TextFormField(
              //         initialValue: '+998',
              //         enabled: false,
              //         decoration: const InputDecoration(
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 8),
              //     Flexible(
              //       flex: 5,
              //       child: TextFormField(
              //         initialValue: '99 842 79 79',
              //         decoration: const InputDecoration(
              //           labelText: 'Telefon raqam',
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
               SizedBox(height: 16),
              _buildPasswordField(
                label: 'Eski parol',
                isVisible: _isOldPasswordVisible,
                onVisibilityToggle: () {
                  setState(() {
                    _isOldPasswordVisible = !_isOldPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 16),
              _buildPasswordField(
                label: 'Yangi parol',
                isVisible: _isNewPasswordVisible,
                onVisibilityToggle: () {
                  setState(() {
                    _isNewPasswordVisible = !_isNewPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 16),
              _buildPasswordField(
                label: 'Yangi parolni takrorlang',
                isVisible: _isConfirmPasswordVisible,
                onVisibilityToggle: () {
                  setState(() {
                    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required String label,
    required bool isVisible,
    required VoidCallback onVisibilityToggle,
  }) {
    return TextFormField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: onVisibilityToggle,
        ),
      ),
    );
  }
}
