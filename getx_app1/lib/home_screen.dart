import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Getx_Tutorials',
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Get_Dialogue_Alert'),
                subtitle: Text('Getx dialogue alert with getx'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: EdgeInsets.all(20),
                    contentPadding: EdgeInsets.all(20),
                    // middleText: 'Are you sure do want to delete this chat',
                    confirm: TextButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Get.back();
                        },
                        child: Text('ok')),
                    cancel: TextButton(onPressed: () {}, child: Text('Cancel')),
                    content: Column(
                      children: [
                        Text('Cancel'),
                        Text('Cancel'),
                        Text('Cancel'),
                        Text('Cancel'),
                        Text('Cancel'),
                        Text('Cancel'),
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Get_Bottom_Sheet'),
                subtitle: Text('Getx Bottom Sheet with getx'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.snackbar('Rehmat', 'Hello World',
              backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
        }),
      ),
    );
  }
}
