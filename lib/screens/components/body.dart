import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/screens/components/home_header.dart';
import 'package:travel_app/screens/components/search_field.dart';
import 'package:travel_app/screens/components/section_title.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          SectionTitle(
            title: "Right Now At Spark",
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(137),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.29,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(travelSpots[0].image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(137),
                  padding: EdgeInsets.all(
                      getProportionateScreenWidth(kDefaultPadding)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [kDefaultShadow],
                  ),
                  child: Column(
                    children: [
                      Text(
                        travelSpots[0].name,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      ClipOval(
                          child: Image.asset(
                        travelSpots[0].users[0].image,
                        height: getProportionateScreenWidth(28),
                        width: getProportionateScreenWidth(28),
                        fit: BoxFit.cover,
                      )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
