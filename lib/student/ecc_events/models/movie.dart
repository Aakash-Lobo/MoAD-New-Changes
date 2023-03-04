import 'package:flutter/material.dart';

class Movie {
  String title;
  String description;
  String imageUrl;
  String year;

  Movie(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.year});
}

List<Movie> movieList = [
  Movie(
      title: 'Queering Yourself, Decolonizing the Community',
      description: 'Lorem Ipsum',
      year: '4 th Feb',
      imageUrl: 'assets/index.jpeg'),
  Movie(
      title: 'Queering Yourself, Decolonizing the Community',
      description: 'Lorem Ipsum',
      year: '4 th Feb',
      imageUrl: 'assets/index.jpeg'),
  Movie(
      title: 'Queering Yourself, Decolonizing the Community',
      description: 'Lorem Ipsum',
      year: '4 th Feb',
      imageUrl: 'assets/index.jpeg'),
];
