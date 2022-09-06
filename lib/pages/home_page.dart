// ignore_for_file: avoid_print, prefer_const_constructors, sort_child_properties_last, prefer_typing_uninitialized_variables, prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var mytext = "change me";
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(
                        data[index]["url"],
                      ),
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        mini: true,
      ),
    );
  }
}
