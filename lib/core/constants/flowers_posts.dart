import 'package:flutter/material.dart';

import '../../features/flowers/domain/entities/post_entity.dart';

List<PostEntity> flowersPosts = [
  const PostEntity(
      id: 1,
      imageName: 'roses11.png',
      name: 'Rose',
      description:
          'Bouquet of velvet roses with delicate flavor, the perfect gift for any occasion.',
      color: Colors.red,
      size: 2,
      quantity: 11,
      price: 900),
  const PostEntity(
      id: 2,
      imageName: 'white_roses_19.png',
      name: 'Roses',
      description: 'Such flowers might be presented only for special ones. '
          'A bright and stylish bouquet is abale to convert a boring day into a holiday.',
      color: Colors.white,
      size: 2,
      quantity: 19,
      price: 1460),
  const PostEntity(
      id: 3,
      imageName: 'chrysanthemum_7.png',
      name: 'Chrysanthemum',
      description: 'Bright suns of chrysanthemums will '
          'delight your dear recipient and give a smile on your beloved face!',
      color: Colors.white,
      size: 3,
      quantity: 7,
      price: 1460),
  const PostEntity(
      id: 4,
      imageName: 'white_tulips_25.png',
      name: 'Tulip',
      description:
          'Delicate bunch of white spring tulips will not leave indifferent any woman!',
      color: Colors.white,
      size: 1,
      quantity: 25,
      price: 1650),
  const PostEntity(
      id: 5,
      imageName: 'irises_11.png',
      name: 'Irise',
      description:
          'Give a bright dream and create a fairy tale for your beloved!',
      color: Colors.purple,
      size: 3,
      quantity: 11,
      price: 800),
  const PostEntity(
      id: 6,
      imageName: 'alstroemerias_9.png',
      name: 'Alstroemeria',
      description:
          'Delicate bouquet of alstroemerias will surely charm your recipient!',
      color: Colors.white,
      size: 2,
      quantity: 9,
      price: 800),
  const PostEntity(
      id: 7,
      imageName: 'yellow_roses_11.png',
      name: 'Rose',
      description: 'This bright bouquet of flowers will certainly cheer '
          'you up, because yellow is the sunniest and most positive color.',
      color: Colors.yellow,
      size: 3,
      quantity: 11,
      price: 1350),
];
