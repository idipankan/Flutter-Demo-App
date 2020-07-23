
import 'package:flutter/material.dart';

myApp(){
  var x = Text(
    "Dipankan\'s App",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  myPress(){
    print("You clicked Email");
  }
  myPress1(){
    print("Somebody Clicked Alarm");
  }
  var url = "https://idipankan.com/wp-content/uploads/2020/03/70801175_1762193123924580_6468186117454692352_o-2.jpg";
  var myImage = Image.network(url);
  var myCalIcon = Icon(Icons.access_alarm);
  var myCalButton = IconButton(icon: myCalIcon, onPressed: myPress1);
  var myEmailIcon = Icon(Icons.thumb_up);
  var myEmailButton = IconButton(icon: myEmailIcon ,onPressed: myPress,);
  // Set up padding for 100 px height
  var paddingTop = Container(
    height:20,
    alignment: Alignment.center,
  );
  var paddingProfileAndName = Container(
    height:25,
    alignment: Alignment.center,
  );
  // Set up my rounded image
  var roundImg = Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
	    shape: BoxShape.circle,
	    image: DecorationImage(
	    image: NetworkImage(url),
	    fit: BoxFit.fill
	    ),
    ),
  );
  var myName = Text(
    'Dipankan Bandopadhyay',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontSize: 28,
      color: Colors.pink,
    ),
  );
  var socialMedia = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    Icon(Icons.perm_identity, color: Colors.blue,
    ),
    Icon(Icons.call, color: Colors.green,),
    Icon(Icons.add, color: Colors.pink),
  ],);
  var about = Text('About', 
  style: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 18
  ),
  );
  var desText = Text('I am a blogger, writer, and public affairs enthusiast. Presently an undergraduate student at KIIT School of Electronics Engineering, BBSR. Completed high school from Don Bosco School, Bandel (ISC and ICSE).', 
        style: TextStyle(fontSize: 14,
          color: Colors.black,
        ),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr,
  );
  var containerDesText = Container(
    width: 300,
    alignment: Alignment.center,
    child: desText,
  );
  var buttonEmail = RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Send me an e-Mail!', style: TextStyle(fontSize: 20)),
            ));
  var mybody = Column(
    children: <Widget>[
      paddingTop, roundImg, paddingProfileAndName, 
      myName, paddingTop, socialMedia, paddingTop, about, paddingProfileAndName,
      containerDesText, paddingProfileAndName, buttonEmail
    ], //Everything is put one after the other. Padding is done by container
  );

  var myappbar = AppBar(
    title: x,
    backgroundColor: Colors.amber,
    leading: Icon(Icons.favorite_border, color:Colors.pink),
    actions: <Widget>[
      myEmailButton,
    
    ],
  );
  
  var myhome = Scaffold(
    appBar: myappbar,
    body: Center(child: mybody,), //Everything is centred
    backgroundColor: Colors.pink.shade50,
    );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}