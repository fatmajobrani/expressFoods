import 'dart:io';

import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  TextEditingController nameController = TextEditingController();
  TextEditingController desciptionController = TextEditingController();
  late File _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            const Text(
              'name',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: nameController,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('desciption'),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select Image'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddFood()),
                      );
              },
              child: const Text('Add Food'),
            )
          ],
        ),
      ),
    );
  }
}
