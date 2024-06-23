import 'package:bar/contains.dart';
import 'package:bar/name.dart';
import 'package:bar/name1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шиш"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:  Image.asset("images/Umar Azizov.png",width: 170,height: 30,fit: BoxFit.contain,),
       actions:  [
          Padding(
            padding: EdgeInsets.only(right: 21.0),
              child: Icon(Icons.notifications_on_outlined,color: Colors.black,),
            ),
     
         ],
       centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
               SizedBox(
              height: 11,
              ),
              Center(
                child: Column(
                
                  children: [
                    Image.asset("images/Frame 1261154925.png"),
                  ],
                ),
              ),
               SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
              
                    ),
                  ),
                   Container(
                    margin: const EdgeInsets.only(left: 8,right: 8),
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 178, 179, 179),
                      shape: BoxShape.circle,
              
                    ),
                  ),
                   Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 178, 179, 179),
                      shape: BoxShape.circle,
              
                    ),
                  )
                ],
              ),
               SizedBox(
              height: 25,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Мои курсы",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              Row(
                children: [
                                TextButton(
                  onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Name1()),
            );
                   },
                   style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
                   ),
                   child:    Text("Смотреть все",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.blue),),
                 ),
                  Icon(Icons.keyboard_arrow_right,color: Colors.blue,size: 25,),
                ],
              )
              ],
            ),
           
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Name(
                    post: names[index],
                    rang: images[index],
                  );
                },
              ),
            ),
            Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return Contains(
                      post: names[index],
                      rang: images[index],
                    );
                  }
                  ),
            )
          ,
        SizedBox(height: 200,),
            ],
          ),
        ),
      ),
      );
  }
}