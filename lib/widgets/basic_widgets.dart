import 'package:flutter/material.dart';
import 'package:foodpanda/screens/search_screen.dart';
import 'package:get/route_manager.dart';

AppBar buildAppBar(ThemeData t, String title, String subtitle) {
  return AppBar(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Text(
          subtitle,
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
  );
}

Widget buildSearchBox(ThemeData t) {
  return InkWell(
    onTap: () => Get.to(() => SearchScreen()),
    child: Container(
      // width: double.infinity,
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

class CampaignCard extends StatelessWidget {
  final String imagePath;
  const CampaignCard({
    this.imagePath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Going to the campaign");
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 180,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
