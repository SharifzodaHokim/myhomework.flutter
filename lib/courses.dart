import 'package:bar/Gridview.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<String> text = [
    "Анатомия",
    "Шиши нав",
    "Дарди шиш",
    "Сутунмухраи качала",
    "Шиш",
    "Анатомия",
  ];
   List<String> imagho = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
   "images/Spine.png",
   "images/image 98.png",
   "images/image 95.png",
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Курсы",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body:       Column(
              children: [
                 Container(
                  height: 600,
                   child: GridView.builder(
                    
                  
                                   gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                    ),
                                   itemCount: 6,
                                   itemBuilder: (context,index){
                    return Myadd(
                      jad: imagho[index],
                      text1: text[index],
                      
                    );
                      
                   
                                   },
                                 ),
                 ),
                 SizedBox(height: 20),
                              Row(
                  
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                            Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.home),
                             Text("Главная"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.camera),
                             Text("Подписки"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                      Icon(Icons.queue_sharp),
                               Text("Курси"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                        Icon(Icons.message),
                               Text("консультаций"),
                             

                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.person),
                             Text("профил"),
                           ],
                        ),
                              ],
                            ),
                            
                          ],
                        )
              ],
             ),
    );
  }
}