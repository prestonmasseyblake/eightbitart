import 'package:eightbitart/screens/utils/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import '../components/test.dart';
import '../components/navbar.dart';



final Storage storage = Storage();

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => HomeRoute(),
        '/second': (context) => SecondRoute(),
      },
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xE5E8EB),
      )),
      title: '8',
      home: Scaffold(
        appBar: AppBar(
            title: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ]),
        body: GridView.count(
          primary: true,
          // padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            FutureBuilder(
                future: storage.listFiles(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    print("in the snapshot");
                    print(snapshot.data.items.length);
                    return Container(
                        child: ListView.builder(
                            itemCount: snapshot.data!.items.length,
                            itemBuilder: (BuildContext context, int index) {
                              print(snapshot.data.items[index]);
                              Text(snapshot.data.items[index].name);
                              return Card(
                                clipBehavior: Clip.antiAlias,
                                child: Column(
                                  children: [
                                    Text(snapshot.data.items[index].name),
                                    Image.asset(
                                      'assets/images/ninja.png',
                                      width: 200.0,
                                      height: 200.0,
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                        'assets/images/ninja.png',
                                        width: 30.0,
                                        height: 30.0,
                                      ),
                                      title: const Text('Ninja'),
                                      subtitle: Text(
                                        'Preston_Blake',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6)),
                                      ),
                                    ),
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      children: [
                                        // FlatButton(
                                        //   textColor: const Color(0xFF6200EE),
                                        //   onPressed: () {
                                        //     // Perform some action
                                        //   },
                                        //   child: Icon(Icons.thumb_up_sharp),
                                        // ),
                                        Text("12"),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }));
                  }
                  return Container();
                }),
          ],
        ),
        bottomNavigationBar: MyStatefulWidget(),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          // child: RaisedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text('Back!'),
          // ),
          ),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geeks for Geeks'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          // RaisedButton(
          //   child: Text('Click Me!'),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/second');
          //   },
          // ),
          // RaisedButton(
          //   child: Text('Tap Me!'),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/third');
          //   },
          // ),
        ],
      )),
    );
  }
}
