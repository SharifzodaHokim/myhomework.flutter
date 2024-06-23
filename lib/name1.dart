
import 'package:bar/name.dart';
import 'package:flutter/material.dart';


class Name1 extends StatefulWidget {
  const Name1({super.key});

  @override
  State<Name1> createState() => _Name1State();
}

class _Name1State extends State<Name1> {
    List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шишро"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Мои курсы",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              
             
             
             
           
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.only(bottom: 40),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Name(
                    post: names[index],
                    rang: images[index],
                  );
                },
              ),
            ),
          
        
            ],
          ),
        ),
      ),
    );
    
  }
}