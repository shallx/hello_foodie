import 'package:flutter/material.dart';

class Restaurant {
  final String imagePath;
  final String name;
  final String rating;
  final String noOfReviews;
  final String description;
  final int deliveryCharge;
  final int deliveryTime;

  Restaurant({
    this.imagePath,
    this.name,
    this.rating,
    this.noOfReviews,
    this.description,
    this.deliveryCharge,
    this.deliveryTime,
  });
}

class RestaurantList {
  RestaurantList();
  List<Restaurant> list() {
    return [
      Restaurant(
        name: 'Exit-Zindazar',
        description: 'Fast Food, Set Menu, Rice, Din..',
        imagePath: 'assets/images/exit_burger2.jpg',
        noOfReviews: '3.9',
        rating: '231',
        deliveryCharge: 9,
        deliveryTime: 30,
      ),
      Restaurant(
        name: 'Palki Restaurant',
        description: 'Bangladeshi, Rice, Upto 50%..',
        imagePath: 'assets/images/panshi.jpg',
        noOfReviews: '3.7',
        rating: '2k+',
        deliveryCharge: 9,
        deliveryTime: 25,
      ),
      Restaurant(
        name: 'Ishti Kutum Restaurant',
        description: 'Bangladeshi, Rice, Upto 50%..',
        imagePath: 'assets/images/ishti_kutum.jpg',
        noOfReviews: '3.5',
        rating: '317',
        deliveryCharge: 5,
        deliveryTime: 20,
      ),
      Restaurant(
        name: 'Chick Chicken - Zinda',
        description: 'Chinese, Set Menu, Rice upto..',
        imagePath: 'assets/images/chick_chicken.png',
        noOfReviews: '3.7',
        rating: '1k+',
        deliveryCharge: 9,
        deliveryTime: 40,
      ),
      Restaurant(
        name: 'Artisan Coffee Co.',
        description: 'Dessert, Upto 50% off, Snacks..',
        imagePath: 'assets/images/artisan.jpg',
        noOfReviews: '4.1',
        rating: '100',
        deliveryCharge: 9,
        deliveryTime: 30,
      ),
      Restaurant(
        name: 'Royal Kitchen',
        description: 'Chinese, Rice, Dinner Delights..',
        imagePath: 'assets/images/royal_kitchen.jpg',
        noOfReviews: '3.9',
        rating: '2k+',
        deliveryCharge: 5,
        deliveryTime: 30,
      ),
    ];
  }
}
