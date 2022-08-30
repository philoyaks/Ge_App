import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

SizedBox homeDashboardCategory(
    {String title = '',
    bool isCardSelected = false,
    bool hasCheckBox = false,
    bool hasSvgImg = false,
    IconData? icon,
    String svgImagePath = 'assets/svgs/opp-arrows-icon.svg'}) {
  return SizedBox(
    height: 90,
    width: 120,
    child: Card(
      elevation: 2,
      margin: const EdgeInsets.only(right: 8, bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: isCardSelected
              ? const Color(0xff4476f8).withOpacity(0.9)
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            hasSvgImg
                ? Transform.rotate(
                    angle: 80,
                    child: SvgPicture.asset(
                      svgImagePath,
                      height: 20,
                      width: 20,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  )
                : hasCheckBox
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Transform.scale(
                            scale: 0.5,
                            child: CupertinoSwitch(
                              value: true,
                              onChanged: (val) {},
                              activeColor: const Color(0xff4476f8),
                            ),
                          ),
                        ))
                    : Icon(
                        icon,
                        size: 20,
                        color: isCardSelected ? Colors.white : Colors.black,
                      ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.w300,
                  color: isCardSelected
                      ? Colors.white
                      : Colors.black.withOpacity(0.6)),
            )
          ],
        ),
      ),
    ),
  );
}
