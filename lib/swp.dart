import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3, color: Colors.black, style: BorderStyle.solid)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      'img/d1.jpg',
                      width: 200,
                      height: 200,
                    );
                  },
                  itemCount: 5,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
                child: Text(
              " This is text",
              style: TextStyle(
                fontSize: 40,
              ),
            )),

            Container(
              margin: EdgeInsets.fromLTRB(20, 150, 10, 20),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/d1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //  onTap: () {
                  // SetState()
                  // };

                  Container(
                    width: 100.0,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/d1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('img/d1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        // shape: BoxShape.circle,
                      )),

                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/d1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/d1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/d1.jpg'),
                        fit: BoxFit.fill,
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
