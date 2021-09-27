import 'package:flutter/material.dart';

import 'Second_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String ,WidgetBuilder>{
        '/order' :(BuildContext context) => Second()
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selecteditem = 'All products';

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
                onPressed: () {},
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
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Starbucks Cofee',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
          child: Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _builditem('All products', 59),
                _builditem('Espresso', 17),
                _builditem('Iced Tea', 20),
                _builditem('black Tea', 24),
                _builditem('Herbal Tea', 28),

              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 10.0, left: 15.0),
          child: Container(
            height: MediaQuery.of(context).size.height-300.0,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCoffeeItem('assets/coffee.jpg', 'Latte with Turmeric', 'Iced Coffee','2.99'),
                _buildCoffeeItem('assets/coffee2.jpg', 'Latte with Turmeric', 'Iced Coffee','2.99'),
                _buildCoffeeItem('assets/coffee3.jpg', 'Latte with Turmeric', 'Iced Coffee','2.99'),
                _buildCoffeeItem('assets/coffee.jpg', 'Latte with Turmeric', 'Iced Coffee','2.99'),
              ],
            ),
          ),
        )
      ],
    ));
  }
  _buildCoffeeItem(String imgPath , String productName,String productType, String price){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 250.0,
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
                  height: 250.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                        image : DecorationImage(
                      image: AssetImage(imgPath),
                          fit: BoxFit.cover
                  ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 90.0),
                  child :Text(productName,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 120.0),
                  child: Text(
                      productType,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: 0.6,
                    color:Colors.grey.withOpacity(0.4),
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ '+ price,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed('/order');
                        },
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  _builditem(String productName , int count){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
            color: switchhighlight(productName),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: switchshadow(productName)
            )
          ]
        ),
        height: 50.0,
        width: 125.0,
          child: InkWell(
            onTap: (){
              selectProduct(productName);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 10.0
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Center(
                    child :Text(
                      count.toString(),
                      style: TextStyle(

                          fontFamily: 'Raleway',
                          fontSize: 17.0,
                          color: switchhighlightColor(productName)
                      ),
                    ),
                  )

                ),
                SizedBox(
                    height: 7.0
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Center(
                    child: Text(
                      productName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                          fontSize: 17.0,
                          color: switchhighlightColor(productName)
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
        ),

    );
  }
  selectProduct(prodName){
    setState(() {
      selecteditem = prodName;
    });
  }
  switchhighlight(prodName){
    if(prodName == selecteditem){
      return Color(0xFF116D51);
    }
    else{
      return Colors.grey.withOpacity(0.3);
    }
  }
  switchhighlightColor(prodName){
    if(prodName == selecteditem){
      return Colors.white;
    }
    else{
      return Colors.black;
    }

  }
  switchshadow(prodName){
    if(prodName == selecteditem){
      return Color(0xFF116D51).withOpacity(0.4);
    }
    else{
      return Colors.transparent;
    }
  }
}
