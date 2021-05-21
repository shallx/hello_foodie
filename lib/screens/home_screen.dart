import 'package:flutter/material.dart';
import 'package:foodpanda/screens/search_screen.dart';
import 'package:foodpanda/shared/ui_library.dart';
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
  int delivery_time = 30;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Home"),
            Text(
              address,
              style: t.textTheme.bodyText2,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () => print("Favourite"),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () => print("Shop"),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [Text("What")],
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Container(
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
                      "There are $shops shops in your area\nDelivery in under $delivery_time minutes!",
                      style: t.textTheme.subtitle1,
                    )
                  ],
                ),
              ),
              buildSearchBox(context),
              SizedBox(
                height: 20,
              ),
              buildFoodDeliveryCard(context),
              Row(
                children: [
                  Expanded(child: buildPandaMartCard(context)),
                  SizedBox(
                    width: 20,
                  ),
                  // Expanded(
                  //   child: Column(
                  //     children: [
                  //       Expanded(child: buildFoodDeliveryCard(context)),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Expanded(child: buildPandaMartCard(context)),
                  //     ],
                  //   ),
                  // )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget buildFoodDeliveryCard(BuildContext context) {
    return PandaHomeCard(
      backgroundColor: Theme.of(context).colorScheme.primary,
      textColor: Theme.of(context).colorScheme.onPrimary,
      heading: "Food delivery",
      description: "Best deals on your favourites!",
      imagePath: "assets/images/food_delivery_banner.png",
      hasPills: true,
    );
  }

  Widget buildPandaMartCard(BuildContext context) {
    return PandaHomeCard(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      textColor: Theme.of(context).colorScheme.onSecondary,
      heading: "pandamart",
      description: "Get groceries in 30\nmins",
      imagePath: "assets/images/food_delivery_banner.png",
      hasPills: true,
    );
  }

  Widget buildSearchBox(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => SearchScreen()),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              offset: Offset(0, 0.2),
              blurRadius: 0.3,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(0, -0.2),
              blurRadius: 0.3,
            ),
          ],
        ),
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.primary,
                size: 35,
              ),
            ),
            Text(
              "Search for shops & restaurants",
              style: TextStyle(color: Colors.grey[600], fontSize: 15.5),
            )
          ],
        ),
      ),
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
  const PandaHomeCard({
    Key key,
    @required this.backgroundColor,
    this.textColor = Colors.black,
    @required this.heading,
    @required this.description,
    this.onPressed,
    @required this.imagePath,
    this.alignment = Alignment.topRight,
    this.hasPills = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 27,
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
                      onPressed: () {},
                      margin: EdgeInsets.only(top: 10),
                    )
                  : SizedBox()
            ],
          ),
        ),
        Align(
          alignment: alignment,
          child: Container(
            height: 130,
            width: 130,
            margin: EdgeInsets.all(15),
            child: Image.asset('assets/images/food_delivery_banner.png'),
          ),
        )
      ],
    );
  }
}
