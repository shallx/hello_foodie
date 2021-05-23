import 'package:flutter/material.dart';
import 'package:foodpanda/models/restaurantCard.dart';
import 'package:foodpanda/screens/restaurant_screen.dart';
import 'package:foodpanda/widgets/basic_widgets.dart';
import 'package:get/get.dart';

class RestaurantDeliveryScreen extends StatelessWidget {
  RestaurantDeliveryScreen({Key key}) : super(key: key);

  List<Restaurant> restaurantList = RestaurantList().list();

  @override
  Widget build(BuildContext context) {
    ThemeData t = Theme.of(context);
    return Scaffold(
      appBar: buildAppBar(t, "Restaurant Delivery", "Home"),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          buildOffer(t),
          buildSearchRow(t),
          buildCampainList(),
          buildYourRestaurantsRow(),
          buildPandapicks(),
          buildSuperDealsRow(),
        ],
      ),
    );
  }

  Widget buildYourRestaurantsRow() {
    return RestaurantListView(
      title: "Your restaurants",
      restaurantList: restaurantList,
    );
  }

  Widget buildPandapicks() {
    List<Restaurant> list = List.from(restaurantList);
    list.shuffle();
    return RestaurantListView(
      title: "Pandapicks",
      restaurantList: list,
    );
  }

  Widget buildSuperDealsRow() {
    List<Restaurant> list = List.from(restaurantList);
    list.shuffle();
    return RestaurantListView(
      title: "Super Deals!",
      restaurantList: list,
    );
  }

  Widget buildCampainList() {
    return Container(
      height: 180,
      margin: EdgeInsets.only(bottom: 10, left: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CampaignCard(
            imagePath: 'assets/images/deal1.jpg',
          ),
          CampaignCard(
            imagePath: 'assets/images/deal2.jpg',
          ),
          CampaignCard(
            imagePath: 'assets/images/deal3.png',
          ),
        ],
      ),
    );
  }

  Widget buildSearchRow(ThemeData t) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(child: buildSearchBox(t)),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: t.colorScheme.background,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                  ),
                  BoxShadow(
                    color: Colors.grey[100],
                    offset: Offset(-1, -1),
                  ),
                ],
              ),
              child: Icon(Icons.tune),
            ),
          )
        ],
      ),
    );
  }

  Widget buildOffer(ThemeData t) {
    return Container(
      color: Color(0xFFFDF1F5),
      height: 100,
      padding: EdgeInsets.all(20),
      child: Text(
        "Code: KHUSHI35 | Tk 35 off on orders over Tk\n100 | selected restaurants only",
        style: TextStyle(
          color: t.colorScheme.primary,
        ),
      ),
    );
  }
}

class RestaurantListView extends StatelessWidget {
  const RestaurantListView(
      {Key key, @required this.restaurantList, @required this.title})
      : super(key: key);

  final List<Restaurant> restaurantList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          height: 190,
          margin: EdgeInsets.only(left: 20, top: 10),
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: restaurantList
                .map(
                  (e) => RestaurantCard(
                    description: e.description,
                    imagePath: e.imagePath,
                    name: e.name,
                    noOfReviews: e.noOfReviews,
                    rating: e.rating,
                    deliveryCharge: e.deliveryCharge,
                    deliveryTime: e.deliveryTime,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String rating;
  final String noOfReviews;
  final String description;
  final int deliveryCharge;
  final int deliveryTime;
  const RestaurantCard({
    Key key,
    @required this.imagePath,
    @required this.name,
    @required this.rating,
    @required this.noOfReviews,
    @required this.description,
    @required this.deliveryTime,
    this.deliveryCharge = 9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => RestaurantScreen());
                },
                child: Container(
                  height: 120,
                  width: 220,
                  decoration: BoxDecoration(
                    color: t.colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SmallPills(text: "$deliveryTime min", onPressed: () {}),
              ),
              Positioned(
                right: 7,
                child: Container(
                  margin: EdgeInsets.only(top: 7),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 17,
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 220,
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: t.textTheme.headline4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 17,
                    ),
                    Text(rating),
                    Text(
                      "($noOfReviews)",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            "\$\$ . $description",
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Tk $deliveryCharge Delivery fee",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class SmallPills extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry margin;
  const SmallPills({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.margin = const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 12),
      ),
    );
  }
}
