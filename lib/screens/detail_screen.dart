import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Column(
        children: [
          Card(child: Image.asset('assets/images/tractor.jpg'),),
          Row(
            children: [
              Text('Tractor', style: TextStyle(fontWeight: FontWeight.bold,),),
              Text('Available Units: ' + '10'),
            ],
          ),
          Row()
        ],
      ),
    );
  }
}
