// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mansi"),
            accountEmail: Text("mansigupta02ktl@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1318482009/photo/young-woman-ready-for-job-business-concept.webp?s=612x612&w=is&k=20&c=Y-sEnmRyacoG3NlkJBox243kZKd0dxhdSY7RMTGNO1k="),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("mansigupta02ktl@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
