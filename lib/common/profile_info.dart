import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String name;
  final String designation;
//constant widgets should not be rebuild
  const ProfileInfoWidget({Key? key,required this.name,required this.designation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
    child: Column(

      children:[
        Text(name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' )),
        Text(designation,style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' ))

      ],





    ),

    );




  }
}
