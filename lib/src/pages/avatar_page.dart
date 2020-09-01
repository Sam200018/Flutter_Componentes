import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSucCKu380MZPfhNrurrD7-Kpvbj-cIgUgqnAmj3TMdLMrrW4Sfdgvu-FNuSrkwVpbkc54s-GgsYTo&usqp=CAc'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 10.0,
            ),
            child: CircleAvatar(
              child: Text('SB'),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://i.pinimg.com/originals/ac/82/de/ac82deaf790442b92bf13d8d24feda54.png'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
