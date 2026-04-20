import 'package:flutter/material.dart';

class Conversations extends StatelessWidget {
  const Conversations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "CONVERSATIONS",
          style: TextStyle(
            fontFamily: 'Poppins', 
            fontSize: 20
          ),
        ),


        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                print("Add pressed");
              },


              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),


                child: Row(
                  children: const [
                    Icon(Icons.add, color: Colors.white, size: 20),
                    SizedBox(width: 4),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),



      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/regine.jpg'),
          ),


          title: Text("Regine Mae Tayrus"), 
          subtitle: Text("Hello World"),     
          trailing: Icon(Icons.circle, size: 10, color: Colors.red),
        ),
      ),
    );
  }
}