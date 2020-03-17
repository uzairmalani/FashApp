import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own import
import 'components/Horizontal_ListView.dart';
import 'components/Products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('Images/c1.jpg'),
          AssetImage('Images/c2.jpg'),
          AssetImage('Images/c3.jpg'),
          AssetImage('Images/c4.jpg'),
          AssetImage('Images/c5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fash App'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
                accountName: Text('Uzair Malani'),
                accountEmail: Text('uzairmalani80@gmail.com'),
                currentAccountPicture: GestureDetector (
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),

                ),
                  decoration: new BoxDecoration(
                    color: Colors.red
                  ),

                ),
                //body
                InkWell(

                    child: ListTile(
                    title: Text('Home page'),
                    leading: Icon(Icons.home, color: Colors.red,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.red,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('My Order'),
                    leading: Icon(Icons.shopping_basket, color: Colors.red,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.category, color: Colors.red,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite, color: Colors.red,),
                  ),
                ),
               InkWell(

                    child: ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings, color: Colors.blue,),
                  ),
                ),
                 InkWell(

                    child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.green,),
                  ),
                ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent products'),),

          Container(
            height:320.0,
            child: Products()
          )

        ],
      ),
    );
  }
}
