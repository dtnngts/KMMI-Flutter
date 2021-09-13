import 'dart:convert';

class Recipe {
  final String name;
  final String thumbnailURL;
  final List<String> ingredients;
  Recipe({
    required this.name,
    required this.thumbnailURL,
    required this.ingredients,
  });

  Recipe copyWith({
    String? name,
    String? thumbnailURL,
    List<String>? ingredients,
  }) {
    return Recipe(
      name: name ?? this.name,
      thumbnailURL: thumbnailURL ?? this.thumbnailURL,
      ingredients: ingredients ?? this.ingredients,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'thumbnailURL': thumbnailURL,
      'ingredients': ingredients,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      name: map['name'],
      thumbnailURL: map['thumbnailURL'],
      ingredients: List<String>.from(map['ingredients']),
    );
  }

}