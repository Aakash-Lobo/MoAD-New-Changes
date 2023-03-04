import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TimeTableAdd extends StatefulWidget {
  @override
  _TimeTableAddState createState() => _TimeTableAddState();
}

class _TimeTableAddState extends State<TimeTableAdd> {
  final _formKey = GlobalKey<FormState>();

  late String _name;
  late String _time;
  late String _profName;
  late String _location;

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
        title: Text("TimeTable Add"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upload Image: "),
                  IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: () {
                      getImage(ImageSource.gallery);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _name = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Time",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a time';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _time = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Professor Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a professor name';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _profName = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Location",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a location';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _location = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    // TODO: Submit the form
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
