import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class StudentAdd extends StatefulWidget {
  @override
  _StudentAddState createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final ImagePicker picker = ImagePicker();
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      var image = img;
      var txt = img?.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text("Upload Your Image and Aadhar Card Copy Here",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87)),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      //if user click this button, user can upload image from gallery
                      onPressed: () {
                        getImage(ImageSource.gallery);
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.upload_file),
                          Text('Upload'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //TODO: Submit the form data
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
