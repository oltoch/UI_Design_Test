import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:interview_app/Widgets/image_card.dart';
import 'package:interview_app/constants.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: kBigTextStyle,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Explore dog walkers',
                        style: TextStyle(
                            color: Color(0xffb0b0b0),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: kButtonDecoration,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 16.0),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.add, color: Color(0xfffcfcfc)),
                              Text(
                                ' Book a walk',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xfffcfcfc),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                showCursor: false,
                style: TextStyle(color: Color(0xff2b2b2b), fontSize: 18),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff0f0f0),
                  prefixIcon: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xffaeaeb2),
                  ),
                  suffixIcon: Image.asset('images/filter_icon.png'),
                  hintText: 'Kiyv, Ukraine',
                  hintStyle: TextStyle(fontSize: 22, color: Color(0xffaeaeb2)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text('Near you', style: kBigTextStyle),
                  Text('View all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff2b2b2b),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2, //Assuming there are three cards in the list
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //maxCrossAxisExtent: 250,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 2,
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      child: ImageCard(
                          assetImage: AssetImage('images/card_image.png'),
                          name: 'Mason York',
                          distance: '7',
                          value: '\$3/h',
                          rating: '4.1'),
                    );
                  },
                ),
              ),
              //SizedBox(height: 10),
              Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text('Suggested', style: kBigTextStyle),
                  Text('View all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff2b2b2b),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2, //Assuming there are three cards in the list
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //maxCrossAxisExtent: 250,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 2,
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      child: ImageCard(
                          assetImage: AssetImage('images/card_image.png'),
                          name: 'Mason York',
                          distance: '7',
                          value: '\$3/h',
                          rating: '4.1'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
