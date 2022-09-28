import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';


class CountryCard extends StatelessWidget {
  const CountryCard({
    required Key key,
    required this.country,
    required this.timeZone,
    required this.iconSrc,
    required this.time,
    required this.period
}) : super(key: key);

  final String country, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.getProportionateScreenWidth(20)),
      child: SizedBox(
        width: SizeConfig.getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    country,
                  style: Theme.of(context)
                      .textTheme.headline4?.copyWith(
                      fontSize: SizeConfig.getProportionateScreenWidth(16)),
                ),
                SizedBox(),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: SizeConfig.getProportionateScreenWidth(30),
                      color: Theme.of(context).colorScheme.copyWith().secondary,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}










