import 'package:flutter/material.dart';

class Myadd extends StatelessWidget {
  final String jad;
  final String text1;
   Myadd({super.key,required this.jad,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.grey,
                          offset: Offset(0, 10))
                    ]),
          width: 200,
          height: 210,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(jad),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(10)

                ),
              ),
                 Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            text1,

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle_outline,
                                size: 20,
                                color: Color(0xff1780C2),
                              ),
                              const Text(
                                " 20 уроков  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              Container(
                                width: 3,
                                height: 3,
                                margin: EdgeInsets.only(right: 3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff737373),
                                ),
                              ),
                              const Icon(   Icons.access_time_outlined,
                                size: 20,
                                color: Color(0xffF97316),
                              ),
                              const Text(
                                "  16 ч",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                          
                      
                ],
              )
            ],
          ),
        )
      ]
    )
        ),
        
      ]
    );
  }
}