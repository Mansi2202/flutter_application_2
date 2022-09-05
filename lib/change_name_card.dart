import 'package:flutter/material.dart';
import 'package:flutter_application_2/bgimage.dart';

class Change_name_card extends StatelessWidget {
  const Change_name_card({
    Key? key,
    required this.mytext,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String mytext;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          BGimage(),
          SizedBox(
            height: 20,
          ),
          Text(
            mytext,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your name",
                  labelText: "Name"),
            ),
          ),
        ],
      ),
    );
  }
}
