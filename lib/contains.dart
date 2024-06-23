import 'package:flutter/material.dart';

class Contains extends StatefulWidget {
  final String post;
  final String rang;
  Contains({
    super.key,
    required this.post,
    required this.rang,
  });

  @override
  State<Contains> createState() => _ContainsState();
}

class _ContainsState extends State<Contains> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),

      width: 180,
      //  height: 113,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //width: 70,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(widget.rang), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.post,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_circle_outline,
                      color: Colors.blue,
                      size: 20,
                    ),
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
                    const Icon(
                      Icons.access_time,
                      color: Colors.orange,
                      size: 20,
                    ),
                    const Text(" 16 ч "),
                  ],
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
