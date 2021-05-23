import 'package:flutter/material.dart';
import 'package:foodpanda/screens/restaurant_delivery_screen.dart';
import 'package:foodpanda/screens/search_screen.dart';
import 'package:foodpanda/shared/ui_library.dart';
import 'package:foodpanda/widgets/basic_widgets.dart';
import 'package:foodpanda/widgets/drawer.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color amber = Color(0xFFFED271);

  Color blue = Color(0xFF84C0FF);

  String address = "Waves-87/3 Electric Supply Rd";
  String name = 'Rafat';
  int shops = 56;
  int deliveryTime = 30;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Scaffold(
      appBar: buildAppBar(t, "Home", address),
      drawer: SafeArea(
        child: MyDrawer(),
      ),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            shrinkWrap: true,
            children: [
              buildHomeIntro(t),
              buildSearchBox(t),
              SizedBox(height: 20),
              buildFoodDeliveryCard(t),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: buildPandaMartCard(t)),
                  SizedBox(width: 20),
                  Expanded(
                      child: Column(
                    children: [buildShopsCard(t), buildPickUpCard(t)],
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Your daily deals",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              buildCampainList()
            ],
          ),
        ),
      ]),
    );
  }

  Container buildHomeIntro(ThemeData t) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 35, 0, 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, $name",
            style: t.textTheme.headline6,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "There are $shops shops in your area\nDelivery in under $deliveryTime minutes!",
            style: t.textTheme.subtitle1,
          )
        ],
      ),
    );
  }

  Widget buildCampainList() {
    return Container(
      height: 180,
      margin: EdgeInsets.only(bottom: 10),
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

  Widget buildFoodDeliveryCard(ThemeData t) {
    return PandaHomeCard(
      backgroundColor: t.colorScheme.primary,
      textColor: t.colorScheme.onPrimary,
      heading: "Food delivery",
      description: "Best deals on your favourites!",
      imagePath: "assets/images/food_delivery_banner.png",
      hasPills: true,
      onPressed: () {
        Get.to(() => RestaurantDeliveryScreen());
      },
    );
  }

  Widget buildPandaMartCard(ThemeData t) {
    return PandaHomeCard(
      backgroundColor: t.colorScheme.secondary,
      textColor: t.colorScheme.onSecondary,
      heading: "pandamart",
      description: "Get groceries in 30\nmins",
      imagePath: "assets/images/pandabag.png",
      alignment: Alignment.center,
      topMargin: 120,
      hasPills: true,
    );
  }

  Widget buildShopsCard(ThemeData t) {
    return PandaHomeCard(
      backgroundColor: Color(0xFF84C0FF),
      textColor: Theme.of(context).colorScheme.onSecondary,
      heading: "Shops",
      description: "Grocery, electronics &\nmore",
      imagePath: "assets/images/shopping_bag.png",
      alignment: Alignment.centerRight,
      topMargin: 70,
      pictureSize: 110,
      pictureMargin: EdgeInsets.zero,
    );
  }

  Widget buildPickUpCard(ThemeData t) {
    return PandaHomeCard(
      backgroundColor: Color(0xFFEE9EC1),
      textColor: t.colorScheme.onSecondary,
      heading: "Pick-Up",
      description: "Get up to 60% off",
      imagePath: "assets/images/pandabag.png",
      alignment: Alignment.topRight,
      topMargin: 0,
      pictureSize: 50,
    );
  }
}



class PandaHomeCard extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String heading;
  final String description;
  final Function onPressed;
  final String imagePath;
  final Alignment alignment;
  final hasPills;
  final double topMargin;
  final double pictureSize;
  final EdgeInsetsGeometry pictureMargin;
  const PandaHomeCard({
    Key key,
    @required this.backgroundColor,
    this.textColor = Colors.black,
    @required this.heading,
    @required this.description,
    this.topMargin = 27,
    this.onPressed,
    @required this.imagePath,
    this.pictureSize = 130,
    this.alignment = Alignment.topRight,
    this.pictureMargin = const EdgeInsets.all(15),
    this.hasPills = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            // height: 100,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: topMargin,
                ),
                Text(
                  heading,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                hasPills
                    ? Pills(
                        text: "Order now",
                        onPressed: onPressed,
                        margin: EdgeInsets.only(top: 10),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
        Align(
          alignment: alignment,
          child: Container(
            height: pictureSize,
            width: pictureSize,
            margin: pictureMargin,
            child: Image.asset(imagePath),
          ),
        )
      ],
    );
  }
}
