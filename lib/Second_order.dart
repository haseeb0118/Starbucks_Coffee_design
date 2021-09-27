import 'package:flutter/material.dart';

import 'main.dart';

class Second extends StatefulWidget {


  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(context ,MaterialPageRoute(builder : (context) => MyHomePage())
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0, right: 15.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.transparent),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF116D51),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_basket),
                            color: Colors.white,
                            iconSize: 20.0,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 25.0,
                          right: 30.0,
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.red),
                            child: Center(
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                  ),
                                )),
                          ))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCoffeeItem('assets/coffee4.jpg'),
                    _buildCoffeeItem('assets/coffee5.jpg'),
                    _buildCoffeeItem('assets/coffee6.jpg'),
                    _buildCoffeeItem('assets/coffee7.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iced coffee',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.grey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0),
              child: Text(
                'Latte with Turmeric',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontSize: 30.0
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 30.0),
            child: Text(
            'This warming drink is made by steaming milk with aromatic turmeric powder and spices and poured over espresso-bringing a new twist to the much-loved latte.',
            style: TextStyle(
              fontSize: 17.0,
                  fontFamily: 'Raleway',
                  color: Colors.grey,
              fontWeight: FontWeight.bold
            )
            )
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 30.0,right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Quality',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                        fontFamily: 'Raleway'
                      ),
                    ),
                  Text(
                    '8',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                        fontFamily: 'Raleway'
                    ),
                  ),

                ],
              ),
            ),
            Padding(
             padding: EdgeInsets.only(bottom: 15.0,left: 30.0,right: 30.0,top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cost',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15.0,
                      color :Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$ 2.99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: 'Raleway',
                      color: Colors.black
                    ),
                  )
                ],

    ),
    )
          ]

      ),
    );
  }

  _buildCoffeeItem(String imgPath) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 225.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 4.0,
                      blurRadius: 4.0
                  ),
                ]
            ),
            child: Stack(
                children: [
                  Column(
                      children: [
                        Container(
                          height: 190,
                          width: 225.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0)),
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ]
                  )
                ]
            )
        ),

    );
  }
}
