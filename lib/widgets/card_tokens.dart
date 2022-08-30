



 import 'package:flutter/material.dart';

Card tokenCards(
      {String title = '',
      String tokenNumber = '',
      bool isfavorite = false,
      String assetImg = ''}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(assetImg), fit: BoxFit.cover),
                  color: Colors.blue,
                  shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    if (isfavorite)
                      const Icon(
                        Icons.favorite,
                        color: Color(0xff4476f8),
                        size: 12,
                      )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  tokenNumber,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }