import 'package:flutter/material.dart';
import 'package:mongodbexample/models/blogModel.dart';
import 'package:mongodbexample/mongodb.dart';

class MongoDbInsert extends StatefulWidget {
  const MongoDbInsert({super.key});

  @override
  State<MongoDbInsert> createState() => _MongoDbInsertState();
}

class _MongoDbInsertState extends State<MongoDbInsert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FutureBuilder(
      future: MongoDatabase.getData(),
      builder: ((context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            return ListView.builder(itemCount: 3,itemBuilder: ((context, index) {
                return displayCard(BlogModel.fromJson(snapshot.data[0]),index);
            }));
          } else {
            return Center(
              child: Text("No Data Available"),
            );
          }
        }
      }),
    )));
  }

  Widget displayCard(data,index){
    return Card(
      child: Column(children: [
        Text('${data.blogPageArticleTitles[index]}'),
        Text('${data.blogPageArticleTitles.length}')
      ]),
    );
  }


}
