
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 
  // void initState() { 
  //   super.initState(); 
  //   Timer(Duration(seconds: 5), 
  //         ()=>Navigator.pushReplacement(context, 
  //                                       MaterialPageRoute(builder: 
  //                                                         (context) =>  
  //                                                         SplashScreen() 
  //                                                        ) 
  //                                      ) 
  //        ); 
  // } 
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            const Tab(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            PopupMenuButton(
                color: Colors.white,
                iconColor: Colors.white,
                itemBuilder: (context) => [
                      const PopupMenuItem(value: 10, child: Text('New group')),
                      const PopupMenuItem(child: Text('New broadcast')),
                      const PopupMenuItem(child: Text('Linked devices')),
                      const PopupMenuItem(child: Text('Starred messages')),
                      const PopupMenuItem(child: Text('Setting'))
                    ]),

            // Icon(
            //   Icons.more_vert,
            //   color: Colors.white,
            // ),
          ],

          title: Text(
            'WhatApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xffb11887b),

          // centerTitle: true,
          bottom: const TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Icon(Icons.camera_alt),
                Tab(child: Text('Chat')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ]),
        ),
        body: TabBarView(
          children: [
            Text('Cameta'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('9:00 PM'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffb03cf44),
                              shape: BoxShape.circle),
                          height: 20,
                          width: 20,
                          child: Center(
                              child: Text(
                            '20',
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400'),
                    ),
                    title: Text(
                      'Asad',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Assalam o Alaiqum'),
                  );
                }),
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400'),
                        ),
                        title: Text(
                          'My status',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("Tap to add Status update"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        height: 40,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: Text('Recent Update'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400'),
                        ),
                        title: Text(
                          'Asad',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("44 minutes ago"),
                      ),
                    ],
                  );
                }),
            Listviewnew(),
          ],
        ),
      ),

    );
  }
}

class Listviewnew extends StatelessWidget {
  const Listviewnew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListTile(
            trailing: Icon(Icons.phone_outlined),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400'),
            ),
            title: Text(
              'Asad',
              style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Yesterday,9:12 PM',
              style: TextStyle(fontSize: 15),
            ),
          );
        });
  }
}

