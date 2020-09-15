import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/components/body.dart';
import 'package:travel_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(kDefaultPadding)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavItem(
                  icon: "assets/icons/calendar.svg",
                  title: "Events",
                  press: () {},
                ),
                NavItem(
                  icon: "assets/icons/chat.svg",
                  title: "Chat",
                  press: () {},
                ),
                NavItem(
                  icon: "assets/icons/friendship.svg",
                  title: "Friends",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: ClipOval(
            child: Image.asset(("assets/images/profile.png")),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem(
      {Key key,
      @required this.icon,
      @required this.title,
      this.isActive = false,
      @required this.press})
      : super(key: key);
  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: getProportionateScreenWidth(60),
      width: getProportionateScreenWidth(60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [if (isActive) kDefaultShadow],
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 28,
            color: kTextColor,
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
