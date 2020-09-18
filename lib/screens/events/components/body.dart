import 'package:flutter/cupertino.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/screens/components/place_card.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Wrap(
        children: [
          PlaceCard(
            travelSpot: travelSpots[0],
            isFullCard: true,
            press: () {},
          )
        ],
      ),
    );
  }
}
