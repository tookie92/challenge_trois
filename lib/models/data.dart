import 'package:flutter/material.dart';
import 'package:nike_idee/models/models.dart';

final currentUser = UserModel(
  id: 1,
 nom: 'Joseph Ilanga',
  adresse: 'Kowelenz 400, Germany, 90400 ',
    status: 'Best Client',
    imgPath: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    shoes: [
      ShoeModel(
        nom: "Air one",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'un.png',
        color: Colors.deepOrangeAccent,

      ),
      ShoeModel(
        nom: "Air second",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'deux.png',
        color: Colors.deepPurple,

      ),
      ShoeModel(
        nom: "Papa Ikos",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'trois.png',
        color: Colors.redAccent,

      ),
      ShoeModel(
        nom: "Air third",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'quatre.png',
        color: Colors.pink,

      ),
      ShoeModel(
        nom: "Air fourth",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'cinq.png',
        color: Colors.blueAccent,
      ),
      ShoeModel(
        nom: "Air sixth",
        prix: 200.0,
        description:
        'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
        imgPath: 'six.png',
        color: Colors.red,
      ),
    ]

);



final lastOrder = OrderModel(
  quantity: 3,
  shoes: [
        ShoeModel(
          nom: "Air third",
          prix: 200.0,
          description:
          'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
          imgPath: 'quatre.png',
          color: Colors.pink,

        ),
        ShoeModel(
          nom: "Air fourth",
          prix: 200.0,
          description:
          'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
          imgPath: 'cinq.png',
          color: Colors.blueAccent,
        ),
        ShoeModel(
          nom: "Air sixth",
          prix: 200.0,
          description:
          'Lorem ipsum dolor sit amet consectetur adipiscing, elit rutrum velit ligula malesuada himenaeos, eleifend convallis pulvinar dictum hendrerit.',
          imgPath: 'six.png',
          color: Colors.red,
        ),

  ]
);