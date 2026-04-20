import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue[800],
          ),

          
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "PROFILE",
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          
          Column(
            children: [
              const SizedBox(height: 200),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const Column(
                    children: [
                      SizedBox(height: 70),
                      Text(
                        "REGINE MAE TAYRUS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/regine.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}