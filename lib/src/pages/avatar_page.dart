import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>
        [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar
            (
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/ca/24/f5/ca24f5947f8bd81fac63767b8edfdcc0.jpg'),
              radius: 30.0,
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar
            (
              child: Text('FAC'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),

      body: Center
      (
        child: FadeInImage
        (
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://wallpapercave.com/wp/wp3770229.jpg'),
          fadeInDuration: Duration(seconds: 3),
        ),
      ),
    );
  }
}