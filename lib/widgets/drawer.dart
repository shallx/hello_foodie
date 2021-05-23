import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData t = Theme.of(context);
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          buildDrawerHeader(t),
          buildRefundAccount(),
          buildNavList(),
        ],
      ),
    );
  }

  Widget buildNavList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerListTile(
          icon: Icons.favorite_border_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Favourites',
        ),
        DrawerListTile(
          icon: Icons.description_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Orders',
        ),
        DrawerListTile(
          icon: Icons.person_outline_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Profile',
        ),
        DrawerListTile(
          icon: Icons.location_on_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Addresses',
        ),
        DrawerListTile(
          icon: Icons.emoji_events_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Challenges & rewards',
        ),
        DrawerListTile(
          icon: Icons.confirmation_num_outlined,
          onPressed: () {
            print("what");
          },
          title: 'Vouchers',
        ),
        DrawerListTile(
          icon: Icons.help_outline,
          onPressed: () {
            print("what");
          },
          title: 'Help Center',
        ),
        SimpleListTile(
          title: "Settings",
        ),
        SimpleListTile(
          title: "Terms & Conditions / Privacy",
        ),
        SimpleListTile(
          title: "Log out",
        ),
      ],
    );
  }

  Widget buildRefundAccount() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Refund account",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Balance and payment method"),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }

  Widget buildDrawerHeader(ThemeData t) {
    return Container(
      height: 150,
      width: double.infinity,
      color: t.colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text(
                "R",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              radius: 30,
              backgroundColor: t.colorScheme.onPrimary,
              foregroundColor: t.colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            child: Text(
              "Rafat Rashid",
              style: TextStyle(
                color: t.colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SimpleListTile extends StatelessWidget {
  final String title;
  const SimpleListTile({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 30),
        child: Text(title),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final String title;
  const DrawerListTile({
    Key key,
    @required this.icon,
    @required this.onPressed,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData t = Theme.of(context);
    return InkWell(
      onTap: () {
        print("On Pressed");
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Icon(
              icon,
            ),
            SizedBox(
              width: 30,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
