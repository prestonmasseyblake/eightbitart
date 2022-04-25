import 'package:eightbitart/screens/utils/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'components/test.dart';
import 'components/navbar.dart';
import './components/Card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final Storage storage = Storage();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => HomeRoute(),
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
          crossAxisCount: 1,
          children: [
            FutureBuilder(
                future: storage.listFiles(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
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
                                    FutureBuilder(
                                        future: storage.downloadedURL(
                                            snapshot.data.items[index].name),
                                        builder: (BuildContext context,
                                            AsyncSnapshot snapshot) {
                                          if (snapshot.connectionState ==
                                                  ConnectionState.done &&
                                              snapshot.hasData) {
                                            return Container(
                                                width: 300,
                                                height: 300,
                                                child: Image.network(
                                                    snapshot.data!,
                                                    fit: BoxFit.cover));
                                          }
                                          return Container();
                                        }),
                                    ListTile(
                                      leading: Image.asset(
                                        'assets/images/ninja.png',
                                        width: 30.0,
                                        height: 30.0,
                                      ),
                                      title:
                                          Text(snapshot.data.items[index].name),
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
        bottomNavigationBar: const MyStatefulWidget(),
      ),
    );
  }
}
