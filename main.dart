import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/bottom.dart';
import 'package:instagram/stories.dart';
import 'Data_model_stories.dart';
import 'Data_model_stories.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
 )); 
class Home extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Text(
                          "Instagram",
                          style: GoogleFonts.lobsterTwo(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: const Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                    flex: 2,
                    child:Container(child:
                    Icon(Icons.favorite_outline_outlined,
                    color: Colors.black,
                    size: 30,)
                    )),
                    Icon(
                      Icons.send_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      
      body:
       stories()
        
         
        , 
        bottomNavigationBar: Container(
          height: 56.0,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
          
            children:
            
             <Widget>[
              bottom()
             ])),
    
    );
  }
}


