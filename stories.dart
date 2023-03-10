import 'package:flutter/material.dart';
import 'Data_model_stories.dart';
class stories extends StatelessWidget {
  
final storyProfile = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context,index)=>Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage(storydata[index].profilepic),

                )
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0 ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: Icon(Icons.add,size: 14.0,
                color: Colors.white,),
            ),
          ): Container()
        ],
      ),
    ),
  );
  
  
   




  

 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
            //check above image for understanding
          storyProfile
        ],
      ),
    );
  }
}