import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {Key? key,
      required this.assetImage,
      required this.name,
      required this.distance,
      required this.value,
      required this.rating})
      : super(key: key);
  final AssetImage assetImage;
  final String name, distance, value, rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: assetImage,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Color(0xff2b2b2b),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 1),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: Color(0xffaeaeb2)),
                          Text(
                            '${distance}km from you',
                            style: TextStyle(
                                color: Color(0xffaeaeb2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff2b2b2b)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 8.0),
                      child: Text(
                        value,
                        style: TextStyle(color: Color(0xfffcfcfc)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
