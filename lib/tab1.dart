import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'helpers.dart';
import 'dart:js' as js;

var most_shadow = BoxShadow(
  color: Colors.black.withOpacity(0.1),
  spreadRadius: 0.01,
  blurRadius: 1,
  offset: Offset(0, 1), // changes position of shadow
);

var wheretobegin =
    "Developing with a range of technologies, which have been fun every step of learning and experiencing the in's and out's of the what I can do through to what the client needs.";
var welcome =
    "Here we will explore the projects I've developed and the multiple different technologies that were used which are accessible via github and showcased here on pressback.space";
var cybersecurity =
    "Through experiencing the OSCP training, multiple Udemy courses and personal projects I've used tools with penetration testing and developed some of my own. Using and exploring and some case designing operating systems such as Kali linux, parrot os, blackarch, ubuntu and derivatives and flavors, windows xp through to 10, windows server deployment. At home I've even tried some open source firewalls like pfsense and untangled which I have to say was amazing to use and deploy.";
var webdevelopment =
    "Learning and developed web development since 2006 I've been exposed to XAMP, WAMP, phpmyadmin for local web development and testing. Upon completing a project I've hosted on various platforms such as godaddy, crazy domains, linode, various free platforms and even did port forward through my home router.";
var softwaredevelopment =
    "Programming is really fun to me and specially learning the strengths and weaknesses of different language's. While learning multiple IDE's and frameworks it's fun going from a blank canvas to a large multi platform software. I have used android studio, netbeans, eclipse, visual studio, visual studio code and the server edition, flash with actionscript when it was popular and even the Microsoft office products with VBA to automate my tasks with excel.";
var multimedia = "Using most of the programs in the adobe master collection such as photoshop, illustrator, premiere pro and even after effects. Even the corel paint/draw suite to help produce content for the client and the printer for advertising purposes.";

class Example07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text('dynamic tile sizes'),
      ),*/
      body: Container(
          color: HexColor("005274"),
          child: StaggeredGridView.count(
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            children: <Widget>[
              new Container(
                  color: HexColor("002D3F"),
                  child: _Tile("", "Welcome", welcome)),
              new Container(
                  color: HexColor("002D3F"),
                  child: _Links(
                    "Quick links",
                    [
                      [
                        "Linkedin",
                        "https://www.linkedin.com/in/shannon-setter-63a964a1/"
                      ],
                      ["Github", "https://github.com/planetbridging"],
                      [
                        "Youtube",
                        "https://www.youtube.com/channel/UCYl4NKZJjuC4CqqiGoj9xqA"
                      ],
                    ],
                  )),
              new Container(
                  color: HexColor("002D3F"),
                  child: _Default(
                    "",
                    "Where to begin",
                    wheretobegin,
                  )),


                  new Container(
                  color: HexColor("002D3F"),
                  child: _Default(
                    "",
                    "Web development",
                    webdevelopment,
                  )),

                  new Container(
                  color: HexColor("002D3F"),
                  child: _Default(
                    "",
                    "Cyber security",
                    cybersecurity,
                  )),


                  new Container(
                  color: HexColor("002D3F"),
                  child: _Default(
                    "",
                    "Software development",
                    softwaredevelopment,
                  )),

                  new Container(
                  color: HexColor("002D3F"),
                  child: _Default(
                    "",
                    "Multimedia",
                    multimedia,
                  )),
              /*new _Tile(
              'https://cdn.pixabay.com/photo/2013/04/07/21/30/croissant-101636_960_720.jpg',
              1),
          new _Tile(
              'https://cdn.pixabay.com/photo/2016/01/22/16/42/eiffel-tower-1156146_960_720.jpg',
              2),
          new _Tile(
              'https://cdn.pixabay.com/photo/2016/10/22/20/34/two-types-of-wine-1761613_960_720.jpg',
              3),
          new _Tile(
              'https://cdn.pixabay.com/photo/2016/10/21/14/50/plouzane-1758197_960_720.jpg',
              4),
          new _Tile(
              'https://cdn.pixabay.com/photo/2016/11/16/10/59/mountains-1828596_960_720.jpg',
              5),
          new _Tile(
              'https://cdn.pixabay.com/photo/2013/04/13/18/42/the-eiffel-tower-103417_960_720.jpg',
              6),
          new _Tile(
              'https://cdn.pixabay.com/photo/2017/08/24/22/37/gyrfalcon-2678684_960_720.jpg',
              7),
          new _Tile(
              'https://cdn.pixabay.com/photo/2013/01/17/08/25/sunset-75159_960_720.jpg',
              8),*/
            ],
            staggeredTiles: const <StaggeredTile>[
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              const StaggeredTile.fit(2),
              /*const StaggeredTile.fit(2),
          const StaggeredTile.fit(1),
          const StaggeredTile.fit(3),
          const StaggeredTile.fit(3),
          const StaggeredTile.fit(1),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),*/
            ],
          )),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.title, this.data);

  final String source;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            //color: HexColor("002D3F"),
            decoration: new BoxDecoration(
              //shape: BoxShape.circle,
              boxShadow: [most_shadow],
            ),
            child: new Card(
              color: HexColor("004966"),
              child: new Column(
                children: <Widget>[
                  //new Image.asset("assets/imgs/me.jpg",width: 200,height: 600,),
                  //new Container( child: AssetImage("assets/imgs/me.jpg"),),
                  Padding(
        padding: const EdgeInsets.all(10.0),
                  child: new Container(
                      //alignment: Alignment.center,
                      //color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: 300.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          //fit: BoxFit.fill,
                          fit: BoxFit.cover,
                          image: new AssetImage("assets/imgs/me.jpg"),
                        ),
                        //boxShadow: [all_shadow],
                      ))),
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        Padding(
        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          data,
                          style: const TextStyle(color: Colors.white),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

class _Default extends StatelessWidget {
  const _Default(this.source, this.title, this.data);

  final String source;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            //color: HexColor("002D3F"),
            decoration: new BoxDecoration(
              //shape: BoxShape.circle,
              boxShadow: [most_shadow],
            ),
            child: new Card(
              color: HexColor("004966"),
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Padding(
        padding: const EdgeInsets.all(10.0), child: Text(
                          data,
                          style: const TextStyle(color: Colors.white),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

class _Links extends StatelessWidget {
  const _Links(this.title, this.data);

  final String title;
  final List<List<String>> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            //color: HexColor("002D3F"),
            decoration: new BoxDecoration(
              //shape: BoxShape.circle,
              boxShadow: [most_shadow],
            ),
            child: new Card(
              color: HexColor("004966"),
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        for (int i = 0; i < data.length; i++)
                          FlatButton(
                            child: Text(
                              data[i][0],
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              js.context.callMethod('open', [data[i][1]]);
                            },
                          )

                        /*new Text(
                      data,
                      style: const TextStyle(color: Colors.white),
                    ),*/
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
