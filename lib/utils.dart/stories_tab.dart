// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String imgpath;
  final String name;
  final String sneekpeak;
  final String profilepic;
  const Stories({
    super.key,
    required this.imgpath,
    required this.name,
    required this.sneekpeak,
    required this.profilepic,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              //story container
              Container(
                height: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imgpath,
                            fit: BoxFit.cover,
                          ),
                      ), 
                    ),
                    Text(
                      sneekpeak,
                    ),
                  ],
                ),
              ),
              //comment container
              Container(
                height: 50,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 255, 167, 198),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(profilepic),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.offline_share,
                          color: Color.fromARGB(255, 238, 53, 115),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('233'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.comment,
                          color: Color.fromARGB(255, 238, 53, 115),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('233'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Storymodel {
  final String imgpath;
  final String name;
  final String sneekpeak;
  final String profilepic;

  Storymodel({
    required this.imgpath,
    required this.name,
    required this.sneekpeak,
    required this.profilepic,
  });
}
