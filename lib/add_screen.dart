import 'package:flutter/material.dart';
import 'package:projectfinal/model.dart';
import 'package:projectfinal/service.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phooneController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: 'name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextField(
            controller: addressController,
            decoration: InputDecoration(
                hintText: 'address',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: 'email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextField(
            controller: phooneController,
            decoration: InputDecoration(
                hintText: 'phone',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextButton(
              onPressed: () {
                ProjectService().adddata(Projectmodel(
                    name: nameController.text,
                    address: addressController.text,
                    email: emailController.text,
                    phone: int.tryParse(phooneController.text)));
              },
              child: const Text('submit'))
        ],
      ),
    );
  }
}
