import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FeedAdd extends StatefulWidget {
  @override
  _FeedAddState createState() => _FeedAddState();
}

class _FeedAddState extends State<FeedAdd> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _summaryController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _authorNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  late File _image;

  Future getImage(ImageSource gallery) async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feed Add"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                controller: _summaryController,
                decoration: InputDecoration(
                  labelText: "Summary",
                ),
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the summary';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                ),
                maxLines: 5,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the description';
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
              TextFormField(
                controller: _authorNameController,
                decoration: InputDecoration(
                  labelText: "Author Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the author name';
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
                    return 'Please enter the email';
                  } else if (!value!.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
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
