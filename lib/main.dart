import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  FlutterLogo(
          textColor: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon:  Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:  Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8.0, color: Colors.white),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            "YOU HAVE",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Container(
                          padding:
                          EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 5.0),
                          child: Text(
                            "205💞",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(10.0)),
                      child:Center(
                        child: Text(
                          "Buy more",
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding:EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY COACHES",
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                FlatButton(
                  onPressed: () {},
                  child:Text("VIEW PAST SESSIONS",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.green)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              _build('Maham' , 'Avaiable' ,1),
              _build('Tom' , 'Avaiable' ,2),
              _build('Vicky' , 'Away' ,3),
              _build('Mona' , 'Away' ,4),
              _build('Harry' , 'Avaiable' ,5),
              _build('Potter' , 'Away' ,6),
              _build('tokiyo' , 'Avaiable' ,7),
              _build('amber' , 'Avaiable' ,8),
              _build('Sana' , 'Away' ,9),
              _build('malik' , 'Away' ,10),
            ],
          )
        ],
      ),
    );
  }
  Widget _build(String name ,String status ,int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),

      ),
      elevation : 7.0,
      child : Column(
        children: [
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                        color: Colors.white,
                        style : BorderStyle.solid,
                        width: 2.0
                    )
                ),
              ),
            ],
          ),


          SizedBox(
            height: 8.0,
          ),
          Text(
            name,
            style:TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            status,
            style:TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )

              ),
              child:Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                      color: Colors.white ,
                      fontFamily: 'Quicksand'
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
          :  EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}
