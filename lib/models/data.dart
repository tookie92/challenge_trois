import 'package:flutter/material.dart';
import 'package:nike_idee/models/models.dart';

final currentUser = UserModel(
  id: 1,
 nom: 'Joseph Ikinda',
  adresse: 'Koblenz, Germany',
    shoes: [
      ShoeModel(
        nom: "Air one",
        prix: 200.0,
        description:
        'Lorem ipsum dolor',
        imgPath: 'un.png',
        color: Colors.deepOrangeAccent,

      ),
      ShoeModel(
        nom: "Air second",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur',
        imgPath: 'deux.png',
        color: Colors.deepPurple,

      ),
      ShoeModel(
        nom: "Papa Ikos",
        prix: 200.0,
        description:
        'Lorem ipsum dolor ',
        imgPath: 'trois.png',
        color: Colors.redAccent,

      ),
      ShoeModel(
        nom: "Air third",
        prix: 200.0,
        description:
        'Lorem ipsum dolor',
        imgPath: 'quatre.png',
        color: Colors.pink,

      ),
      ShoeModel(
        nom: "Air fourth",
        prix: 200.0,
        description:
        'Lorem ipsum dolor',
        imgPath: 'cinq.png',
        color: Colors.blueAccent,
      ),
      ShoeModel(
        nom: "Air sixth",
        prix: 200.0,
        description:
        'Lorem ipsum dolor',
        imgPath: 'six.png',
        color: Colors.red,
      ),
    ]

);