import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ECCAdd extends StatefulWidget {
  @override
  _ECCAddState createState() => _ECCAddState();
}

class _ECCAddState extends State<ECCAdd> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _eccPointsController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

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
        title: Text("Upload ECC Event"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _eccPointsController,
                decoration: InputDecoration(
                  labelText: "Ecc Points",
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the ecc points';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: "Date",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the date';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: submit the form
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
