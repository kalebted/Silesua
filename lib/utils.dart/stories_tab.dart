// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  // final String imgpath;
  // final String name;
  // final String sneekpeak;
  // final String profilepic;
  Stories({
    super.key,
    // required this.imgpath,
    // required this.name,
    // required this.sneekpeak,
    // required this.profilepic,
  });

  static List<StoryModel> stories = [
    StoryModel(
      imgpath: 'assets/images/Sahle-Work-Zewde.png',
      name: 'Tsedenya Eshetu',
      sneekpeak: 'The first African to win a gold medal in the Olympics',
      profilepic: 'assets/images/AuthorTse.jpg',
    ),
    StoryModel(
      imgpath: 'assets/images/Sahle-Work-Zewde.png',
      name: 'Tsedenya Eshetu',
      sneekpeak: 'The first African to win a gold medal in the Olympics',
      profilepic: 'assets/images/AuthorTse.jpg',
    ),
    StoryModel(
      imgpath: 'assets/images/Sahle-Work-Zewde.png',
      name: 'Tsedenya Eshetu',
      sneekpeak: 'The first African to win a gold medal in the Olympics',
      profilepic: 'assets/images/AuthorTse.jpg',
    ),
    StoryModel(
      imgpath: 'assets/images/Sahle-Work-Zewde.png',
      name: 'Tsedenya Eshetu',
      sneekpeak: 'The first African to win a gold medal in the Olympics',
      profilepic: 'assets/images/AuthorTse.jpg',
    ),
  ];

  List<StoryModel> displayList = List.from(stories);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: MediaQuery.of(context).size.height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: displayList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              //story container
              Container(
                height: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 253, 207, 223),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            displayList[index].imgpath,
                            fit: BoxFit.cover,
                          ),
                      ), 
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        displayList[index].sneekpeak,
                      ),
                    ),
                  ],
                ),
              ),
              //comment container
              Container(
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                padding: EdgeInsets.only(right: 10),
                // color: Color.fromARGB(255, 255, 212, 227),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 233, 240),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(displayList[index].profilepic),
                    ),
                    Text(
                      displayList[index].name,
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

class StoryModel {
  final String imgpath;
  final String name;
  final String sneekpeak;
  final String profilepic;

  StoryModel({
    required this.imgpath,
    required this.name,
    required this.sneekpeak,
    required this.profilepic,
  });
}
