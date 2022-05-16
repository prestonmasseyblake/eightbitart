import '../screens/utils/storage_service.dart';
import 'package:flutter/material.dart';

import './navbar.dart';
import './Card.dart';

class HomeGrid extends StatelessWidget {
  final Storage storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        childAspectRatio: .5,
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
                                   
                                    title:
                                        Text(snapshot.data.items[index].name),
                                  
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
    );
  }
}
