import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/widgets/button_widget.dart';
import 'package:wallet_app_ui/widgets/card_widge.dart';
import 'package:wallet_app_ui/widgets/tile_widget.dart';

import 'gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
        
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:(){}, icon: Icon(Icons.home, size: 35,)),
              IconButton(onPressed:(){}, icon: Icon(Icons.settings, size: 35)),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black),
                      ),
                      Text(
                        'Card',
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              // color: Colors.blue,
              child: PageView(
                controller: _pageController,
                children: const [
                  CardWidget(
                      blance: 25341251,
                      cardNum: 23568,
                      expireMonth: 1,
                      expireYear: 25,
                      color: Colors.red),
                  CardWidget(
                      blance: 253440051,
                      cardNum: 23458,
                      expireMonth: 12,
                      expireYear: 20,
                      color: Colors.deepPurple),
                  CardWidget(
                      blance: 5000,
                      cardNum: 568791,
                      expireMonth: 10,
                      expireYear: 50,
                      color: Colors.green),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      imagePath: Assets.icons.sendMoney.path,
                      buttonText: 'send'),
                  MyButton(
                      imagePath: Assets.icons.creditCard.path,
                      buttonText: 'pay'),
                  MyButton(
                      imagePath: Assets.icons.bill.path, buttonText: 'bill'),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: Column(
              children: [
                TileWidget(title: 'statistics', subTitle: 'Payments and Icome', imagepath: Assets.icons.statistics.path), 
             TileWidget(title: 'transactions', subTitle: 'transactions historyr', imagepath: Assets.icons.statistics.path), 
              ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
