
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
final String title; final String subTitle;final String  imagepath ;

  const TileWidget({Key? key, required this.title, required this.subTitle, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(bottom:25,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12)),
                    height: 80,
                    child: Image.asset(imagepath),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 20
                      ),),
                      SizedBox(height: 12,),
                      Text(subTitle, style: TextStyle(
                      color: Colors.grey[700],
                        fontSize: 16
                      )),
                    ],
                  ),
                    ],
                  ),
                   SizedBox(width: 20,),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            );
  }
}