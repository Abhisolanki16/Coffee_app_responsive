import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: Text("D E S K T O P"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Image.network(
                    fit: BoxFit.fill,
                    "https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: Column(children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text("Manali",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          "182 km ",
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ),
                    ]),
                  );
                },
              )),
            ]),
          ),
          Container(
              width: 200,
              color: Colors.purple.shade400,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: Column(children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text("Manali",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          "182 km ",
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ),
                    ]),
                  );
                },
              ))
        ],
      ),
    );
  }
}
