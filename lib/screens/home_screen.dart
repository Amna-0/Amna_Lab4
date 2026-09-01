import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
        title: Text('Taskly'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryItem(
                  color: Colors.lightBlueAccent.shade100,
                  iconColor: Colors.lightBlueAccent.shade400,
                  icon: Icons.assignment,
                  text1: 'work',
                  text2: '12 Tasks',
                  width: width,
                ),
                categoryItem(
                  color: Colors.lightGreen.shade100,
                  iconColor: Colors.lightGreen.shade400,
                  icon: Icons.school,
                  text1: 'Study',
                  text2: '8 Tasks',
                  width: width,
                ),
                categoryItem(
                  color: Colors.orangeAccent.shade100,
                  iconColor: Colors.orangeAccent.shade400,
                  icon: Icons.favorite,
                  text1: 'Personal',
                  text2: '5 Tasks',
                  width: width,
                ),
              ],
              
        
            ),
          ],
        ),
      ),

    );
  }
}


Widget categoryItem({required Color color,required Color iconColor,required IconData icon,
 required String text1,required String text2,required double width,}) {
  return Container(
    width: width*0.285,
    height: width*0.285,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: iconColor,
          child: Icon(icon, color: Colors.white,),
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Text(text1, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 3),
            Text(text2, style: TextStyle(fontSize: 12, color: Colors.black54),),
          ],
        ),
      ],
    ),
  );
}
