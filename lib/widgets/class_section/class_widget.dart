import 'package:flutter/material.dart';

class ClassWidget extends StatelessWidget {
  const ClassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: Image.network(
              'https://images.pexels.com/photos/1181414/pexels-photo-1181414.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Curso de Flutter, aprenda do 0 ao Senior - Flutter com o Godoy',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}