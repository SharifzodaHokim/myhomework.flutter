import 'package:flutter/material.dart';

class Far extends StatefulWidget {
  final String rang;
   final String post;
    const Far({super.key,  
  required this.post,
   required this.rang,
   });

  @override
  State<Far> createState() => _NameState();
}

class _NameState extends State<Far> {
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
      padding: const EdgeInsets.all(16),
      child:Row(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 320,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                               color: Color(0xFF111827),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 80,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                    image:DecorationImage(image: AssetImage(widget.rang),fit: BoxFit.cover),
                                  ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.post,
                            style: const TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
                            Row(
                              children: [
                                const Icon(Icons.play_circle_outline,color: Colors.blue,size: 20,),
                                const Text(" 20 уроков "),
                                Container(
                                  margin: const EdgeInsets.only(right: 3),
                                  width: 3,
                                  height: 3,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Icon(Icons.access_time,color: Colors.orange,size: 20,),
                                const Text(" 16 ч "),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(height: 50,),
                                Text("Подписка: ",style: TextStyle(fontSize:18 ),),
                                Text("20 дней",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 7, 201, 14),fontWeight: FontWeight.bold),)
                              ],
                            ),
                            
                          ],
                                        ),
                                    
                            ],
                          ),
                            Column(
                              children: [
                                Row(
                                                    
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffF5F5F5),
                                                    ),
                                                    child: Row(
                                children: [
                                  Container(
                                           width: 60,       
                                    decoration: BoxDecoration(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                                                    ),
                                                  ),
                             
                                                ],
                                              ),
                                              const SizedBox(height: 2,),
                                                                   Row(
                                                    children: [
                                const Row(
                                 
                                  children: [
                                    Text("Пройдено: ",style: TextStyle(fontSize: 18),),
                                    Text("6/20",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  child: const Text("32%",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
                                  ),
                                                    ],
                                                  )
                              ],
                            )
                        ],
                      ),
                      
                    ),
                  
                  ],
                ),
                       
             
             
              ],
            ),
    );
  }
}