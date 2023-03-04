import "package:flutter/material.dart";

import '../models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailsScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          //       onPressed: () => Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => HomePage()))
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Attend"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(movie.title),
            Image.network(
              movie.imageUrl,
              height: 500,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(movie.year.toString(),
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(movie.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0)),
            ),
          ],
        ),
      ),
    );
  }
}
