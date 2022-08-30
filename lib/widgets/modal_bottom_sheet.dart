import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0),
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xffdcdcdd),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            selectType(
                title: 'Send',
                color: const Color(0xfffebb31),
                svgImg: 'assets/svgs/arrow-up-icon.svg'),
            selectType(
                title: 'Recieve',
                color: Colors.lime,
                svgImg: 'assets/svgs/arrow-down-icon.svg'),
            selectType(
                title: 'Exchange',
                color: Colors.indigo,
                svgImg: 'assets/svgs/Exchange-icon.svg'),
            selectType(
                title: 'QR Scan',
                description: 'Invoices/addresses',
                color: Colors.blue,
                svgImg: 'assets/svgs/qr-scan-icon.svg'),
            const SizedBox(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }

  Container selectType(
      {String title = '',
      String description = '',
      String svgImg = '',
      Color? color}) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color!.withOpacity(0.3)),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                svgImg,
                color: color,
                fit: BoxFit.cover,
                height: 45,
                width: 45,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              if (description.isNotEmpty)
                const SizedBox(
                  height: 5,
                ),
              if (description.isNotEmpty)
                Text(
                  description,
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black.withOpacity(0.2),
          )
        ],
      ),
    );
  }
}
