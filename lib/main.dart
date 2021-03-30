import 'package:flutter/material.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;
import 'helpers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shannon Setter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Avatar(),
    );
  }
}

class Avatar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Avatar();
}

class _Avatar extends State<Avatar> with TickerProviderStateMixin {
  AnimationController _controller;
  Tween<double> _tween = Tween(begin: 1.25, end: 2);

  var all_shadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
  );

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this);
    _controller.repeat(reverse: true);
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Center(
          child: Text(""),
        ),
        backgroundColor: HexColor("002D3F"),
      ),*/
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: HexColor("005274"),
          child: GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, '/mainmenu');
              }, // handle your image tap here
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: PreferredSize(
                      preferredSize: Size.fromHeight(150.0),
                      child: AppBar(
                        automaticallyImplyLeading:
                            false, // hides leading widget
                        flexibleSpace: Container(
                            //alignment: Alignment.center,
                            //color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            height: 300.0,
                            decoration: new BoxDecoration(
                              //shape: BoxShape.circle,
                              image: new DecorationImage(
                                //fit: BoxFit.fill,
                                fit: BoxFit.cover,
                                image: new AssetImage("assets/imgs/banner.jpg"),
                              ),
                              boxShadow: [all_shadow],
                            )),
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              icon: Icon(Icons.home),
                              text: "Home",
                            ),
                            Tab(icon: Icon(Icons.directions_transit)),
                            Tab(icon: Icon(Icons.directions_bike)),
                          ],
                        ),
                        title: Center(
                          child: Text('Shannon Setter portfolio'),
                        ),
                        backgroundColor: HexColor("002D3F"),
                      )),
                  body: TabBarView(
                    children: [
                      Container(
                        color: HexColor("005274"),
                        child: CustomScrollView(
                        slivers: <Widget>[
                          SliverGrid.extent(maxCrossAxisExtent: 400, children: [
                            /*Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Card(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            const ListTile(
                                              leading: Icon(Icons.album),
                                              title: Text('The Enchanted Nightingale'),
                                              subtitle: Text("Welcome, here we will explore the projects I've developed and the multiple different technologies that were used which are accessible via github showcased here on pressback.space."),

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                TextButton(
                                                  child: const Text('BUY TICKETS'),
                                                  onPressed: () {/* ... */},
                                                ),
                                                const SizedBox(width: 8),
                                                TextButton(
                                                  child: const Text('LISTEN'),
                                                  onPressed: () {/* ... */},
                                                ),
                                                const SizedBox(width: 8),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                              )*/
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                              width: MediaQuery.of(context).size.width,
                              //height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage("assets/imgs/me.jpg"),
                                ),
                              ),
                            ),),
                            //Card(
                            //clipBehavior: Clip.antiAlias,

                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              child: Column(
                              children: [
                                 ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Welcome', style: TextStyle(
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),child: Text(
                                     "Here we will explore the projects I've developed and the multiple different technologies that were used which are accessible via github and showcased here on pressback.space",
                                    style: TextStyle(
                                        color: Colors.white),
                                  )),
                                ),
                                /*Text(
                                    "Here we will explore the projects I've developed and the multiple different technologies that were used which are accessible via github and showcased here on pressback.space",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),*/
                                ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    FlatButton(
                                    child: Text('Linkedin', style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),),
                                    onPressed: () {
                                      js.context.callMethod('open', ['https://www.linkedin.com/in/shannon-setter-63a964a1/']);
                                    },
                                  ),
                                    FlatButton(
                                      textColor: const Color(0xFF6200EE),
                                      onPressed: () {
                                        // Perform some action
                                      },

                                      child: FlatButton(
                                    child: Text('github.com/planetbridging', style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),),
                                    onPressed: () {
                                      js.context.callMethod('open', ['https://github.com/planetbridging']);
                                    },
                                  ),

                                    ),

                                    FlatButton(
                                    child: Text('Youtube', style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),),
                                    onPressed: () {
                                      js.context.callMethod('open', ['https://www.youtube.com/channel/UCYl4NKZJjuC4CqqiGoj9xqA']);
                                    },
                                  ),
                                  ],
                                ),

                                ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Where to begin', style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child:Text(
                                    "Developing with a range of technologies, which have been fun every step of learning and experiencing the in's and out's of the what I can do through to what the client needs.",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),),
                                ),
                                
                                //Image.asset("assets/imgs/me.jpg",fit: BoxFit.fill,),
                                //Image.asset('assets/card-sample-image-2.jpg'),
                              ],
                            ),
                            ),

                            Padding(
                                    padding: EdgeInsets.all(20.0),
                            child: ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Cyber security', style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child:Text(
                                    "Through experiencing the OSCP training, multiple Udemy courses and personal projects I've used tools with penetration testing and developed some of my own. Using and exploring and some case designing operating systems such as Kali linux, parrot os, blackarch, ubuntu and derivatives and flavors, windows xp through to 10, windows server deployment. At home I've even tried some open source firewalls like pfsense and untangled which I have to say was amazing to use and deploy.",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),),
                                )),

                                Padding(
                                    padding: EdgeInsets.all(20.0),
                            child: ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Web development', style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child:Text(
                                    "Learning and developed web development since 2006 I've been exposed to XAMP, WAMP, phpmyadmin for local web development and testing. Upon completing a project I've hosted on various platforms such as godaddy, crazy domains, linode, various free platforms and even did port forward through my home router.",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),),
                                )),

                                Padding(
                                    padding: EdgeInsets.all(20.0),
                            child: ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Software development', style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child:Text(
                                    "Programming is really fun to me and specially learning the strengths and weaknesses of different language's. While learning multiple IDE's and frameworks it's fun going from a blank canvas to a large multi platform software. I have used android studio, netbeans, eclipse, visual studio, visual studio code and the server edition, flash with actionscript when it was popular and even the Microsoft office products with VBA to automate my tasks with excel.",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),),
                                )),


                                Padding(
                                    padding: EdgeInsets.all(20.0),
                            child: ListTile(
                                  //leading: Icon(Icons.arrow_drop_down_circle),
                                  title: const Text('Multimedia', style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child:Text(
                                    "Using most of the programs in the adobe master collection such as photoshop, illustrator, premiere pro and even after effects. Even the corel paint/draw suite to help produce content for the client and the printer for advertising purposes.",
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),),
                                )),
                            
                            // ),
                          ]),

                          //SliverGrid.count(
                          // crossAxisCount: 1,
                          SliverGrid.extent(
                            maxCrossAxisExtent: 400,
                            children: [
                              /*for (int i = 0; i < 30; i++)
                                new Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: SizedBox(
                                        //width: double.infinity / 2,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        height: 50.0,
                                        child: RaisedButton(
                                            onPressed: () {
                                              //Navigator.pushNamed(context, '/galleryview');
                                            },
                                            //color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                                            //color: randomGenerator(),
                                            child: Text(
                                              "cha" + i.toString(),
                                              //style: TextStyle(fontSize: 50),
                                            )))),*/
                                            
                            ],
                          ),
                        ],
                      ),
                      ),
                      
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              )

              /**/
              )),
              
      /*drawer: Drawer(
        child: Container(
          color: HexColor("005274"),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: HexColor("002D3F"),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
