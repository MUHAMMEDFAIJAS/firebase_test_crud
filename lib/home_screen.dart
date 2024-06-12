import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/add_screen.dart';
import 'package:projectfinal/model.dart';
import 'package:projectfinal/service.dart';
import 'package:projectfinal/update_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AddScreen(),
        ));
      }),
      body: StreamBuilder(
        stream: ProjectService().getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('error ${snapshot.hasError}'),
            );
          } else {
            List<QueryDocumentSnapshot<Projectmodel>> projectdoc =
                snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: projectdoc.length,
              itemBuilder: (context, index) {
                final datas = projectdoc[index].data();
                final id = projectdoc[index].id;
                return ListTile(
                  title: Text(datas.name!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => UpdateScreen(
                                id: id,
                                name: datas.name,
                                address: datas.address,
                                email: datas.email,
                                phone: datas.phone.toString(),
                              ),
                            ));
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                          )),
                      IconButton(
                          onPressed: () {
                            ProjectService().deletedata(id);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
