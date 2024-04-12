import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  // final String imgpath;
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        // height: MediaQuery.of(context).size.height * 0.45,
        // width: MediaQuery.of(context).size.width * 0.90,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: ((context, index) {
            return Expanded(
              // height: MediaQuery.of(context).size.height * 0.17,
              // width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 140,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.pink.shade50),
                      child: Image.network(
                        'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=612x612&w=0&k=20&c=8ssXDNTp1XAPan8Bg6mJRwG7EXHshFO5o0v9SIj96nY=',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            );
          }),
        ));
  }
}
