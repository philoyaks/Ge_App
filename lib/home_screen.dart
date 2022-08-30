import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ge_app/widgets/bottom_nav_bar_widget.dart';
import 'package:ge_app/widgets/card_tokens.dart';
import 'package:ge_app/widgets/dashboard_cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  size: 25,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/imgs/profile.png',
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Wallet',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Mobile Team',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  homeDashboardCategory(
                      title: 'Your Address',
                      icon: Icons.qr_code,
                      isCardSelected: true),
                  homeDashboardCategory(
                      title: 'Aliases', icon: Icons.person_outline),
                  homeDashboardCategory(title: 'Balance', hasCheckBox: true),
                  homeDashboardCategory(title: 'Recieve', hasSvgImg: true),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                selectorTabs(title: 'Tokens', isSelected: true),
                selectorTabs(title: 'Leasing'),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    color: const Color(0xffecf2f6),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        fillColor: Colors.grey.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/svgs/sort-icon.svg',
                  height: 30,
                  color: const Color(0xff9da7b4),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            tokenCards(
                isfavorite: true,
                title: 'Waves',
                tokenNumber: '5.0056',
                assetImg: 'assets/imgs/img1.png'),
            tokenCards(
                title: 'Pigeon/ My Token',
                tokenNumber: '144.0438924',
                assetImg: 'assets/imgs/img2.png'),
            tokenCards(
                title: 'Us Dollar',
                tokenNumber: '199.224',
                assetImg: 'assets/imgs/img3.png'),
            const SizedBox(
              height: 12,
            ),
            otherOptionsButtons(number: '2'),
            otherOptionsButtons(title: 'Suspicious Token', number: '15')
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Padding otherOptionsButtons(
      {String title = 'Hidden tokens', String number = '0'}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '$title: ',
                style: TextStyle(color: Colors.black.withOpacity(0.7))),
            TextSpan(
                text: '($number)',
                style: TextStyle(color: Colors.black.withOpacity(0.7)))
          ])),
          Icon(
            Icons.keyboard_arrow_down,
            size: 20,
            color: Colors.black.withOpacity(0.7),
          )
        ],
      ),
    );
  }

  Widget selectorTabs({bool isSelected = false, String title = ''}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.w300)),
          const SizedBox(
            height: 2,
          ),
          if (isSelected)
            Container(
              height: 3,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            )
        ],
      ),
    );
  }
}
