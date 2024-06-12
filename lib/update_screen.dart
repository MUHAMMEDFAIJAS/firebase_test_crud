import 'package:flutter/material.dart';
import 'package:projectfinal/model.dart';
import 'package:projectfinal/service.dart';

class UpdateScreen extends StatefulWidget {
  String? name;
  String? address;
  String? email;
  String? phone;
  String? id;

  UpdateScreen(
      {super.key, this.name, this.address, this.email, this.phone, this.id});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: widget.name);
    TextEditingController addressController =
        TextEditingController(text: widget.address);
    TextEditingController emailController =
        TextEditingController(text: widget.email);
    TextEditingController phooneController =
        TextEditingController(text: widget.phone);
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
                ProjectService().updatedata(
                    widget.id!,
                    Projectmodel(
                        address: addressController.text,
                        name: nameController.text,
                        email: emailController.text,
                        phone: int.tryParse(phooneController.text)));
              },
              child: const Text('update'))
        ],
      ),
    );
  }
}
