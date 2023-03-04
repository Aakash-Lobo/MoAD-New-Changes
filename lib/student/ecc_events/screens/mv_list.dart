import 'package:flutter/material.dart';

import '../models/movie.dart';
import 'movie_details.dart';

class MovieListScreen extends StatelessWidget {
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
      ),
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            Movie movie = movieList[index];
            return Card(
              child: ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.year.toString()),
                leading: Image.network(movie.imageUrl),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetailsScreen(movie)));
                },
              ),
            );
          }),
    );
  }
}
