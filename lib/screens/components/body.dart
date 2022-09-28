import 'package:app_theme_design/screens/components/clock.dart';
import 'package:app_theme_design/screens/components/country_card.dart';
import 'package:app_theme_design/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  "Body",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const TimeInHourAndMinute(),
              // const Spacer(),
              Clock(),
              // const Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      key: UniqueKey(),
                      country: "Lagos, Nigeria",
                      timeZone: "+1 HRS | GMT",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    ),
                    CountryCard(
                      key: UniqueKey(),
                      country: "Lagos, Nigeria",
                      timeZone: "+1 HRS | GMT",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    )
                  ],
                ),
              ),
            ],
          ),
        )

    );
  }

}