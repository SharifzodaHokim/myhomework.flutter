import 'dart:async';


import 'package:bar/Gridview.dart';
import 'package:bar/contains.dart';
import 'package:bar/courses.dart';

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
   List<String> imagho = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
   "images/Spine.png",
  ];
  
    List<String> imagees = [
"images/Frame 1261154925.png",
"images/Frame 1261154925.png",
"images/Frame 1261154925.png",

  ];
  List<String> text = [
    "Анатомия",
    "Шиши нав",
    "Дарди шиш",
    "Сутунмухраи качала",
  ];
  void startTimer(){
    _timer = Timer.periodic(Duration(seconds: 3), (timer){
      if(_pageController.page == imagees.length-1){
        _pageController.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      }else{
        _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }
  late List<Widget> _pages;
  int _activePage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    
    _pages = List.generate(imagees.length, (index) => _ImagePlaceholder(imagePath:imagees[index],));
    startTimer();
  }
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
               Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: SizedBox(
                    width: 328,
                    height: 180,
                  
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagees.length,
                      onPageChanged: (value){
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemBuilder: (context,index){
                      return _pages[index];
                    }),
                  ),
                ),
                Positioned(

                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                        List<Widget>.generate
                        (_pages.length,(index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: InkWell(
                            onTap: (){
                             _pageController.animateToPage(index, duration:Duration (milliseconds:300), curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                            radius: 5,
                            backgroundColor: _activePage == index?Colors.yellow:Colors.grey,
                            ),
                          ),
                        ))
                      
                    ),
                  ),
                )
              ],
            )
          ],
        ),
               SizedBox(
                height: 13,
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
        SizedBox(height: 20,),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Все курсы",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              Row(
                children: [
                                TextButton(
                  onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Courses()),
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
            SizedBox(height: 20,),
             Column(
              children: [
                 Container(
                  height: 470,
                   child: GridView.builder(
                  
                                   gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                    ),
                                   itemCount: 4,
                                   itemBuilder: (context,index){
                    return Myadd(
                      jad: imagho[index],
                      text1: text[index],
                      
                    );
                      
                   
                                   },
                                 ),
                 )
              ],
             ),
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
        ),
      ),
      );
  }
}
class _ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const _ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      width: 200,
      height: 300,fit: BoxFit.cover,);
  }
}
