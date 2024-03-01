import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("M O B I L E"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Image.network("https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg?auto=compress&cs=tinysrgb&w=600"),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(margin: EdgeInsets.all(10),child: Column(children: [
              ListTile(
                leading: Icon(Icons.place),
                title: Text("Manali",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                  "182 km ",
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ),
            ]),);
          },
        ))
      ]),
    );
  }
}
