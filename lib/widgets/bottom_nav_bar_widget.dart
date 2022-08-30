import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'modal_bottom_sheet.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  final orangeColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  iconpath: 'assets/svgs/wallet-icon.svg',
                  selected: true,
                  onPressed: () {}),
              IconBottomBar(
                  iconpath: 'assets/svgs/refresh-icon.svg',
                  selected: false,
                  onPressed: () {}),
              IconBottomBar2(
                  text: "Add",
                  icon: Icons.add_outlined,
                  selected: false,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const ModalBottomSheet(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: Colors.white,
                    );
                  }),
              IconBottomBar(
                  iconpath: 'assets/svgs/list-icon.svg',
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  iconpath: 'assets/svgs/settings-icon.svg',
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.iconpath,
      required this.selected,
      required this.onPressed})
      : super(key: key);

  final String iconpath;
  final bool selected;
  final Function() onPressed;

  final primaryColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            iconpath,
            width: 25,
            height: 25,
            color: selected ? primaryColor : Colors.black38,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: const Color(0xff4476f8).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
          onPressed: onPressed,
          padding: const EdgeInsets.all(0),
          icon: Icon(icon, size: 25, color: const Color(0xff4476f8)),
        ),
      ),
    );
  }
}
