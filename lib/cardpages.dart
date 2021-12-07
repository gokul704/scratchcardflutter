import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class cards extends StatelessWidget {
  const cards({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: const Text(
          "DhanunjayScratchCard",
        ),
      ),
     body: Container(

      child: new GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20.0),
    crossAxisSpacing: 10.0,
    crossAxisCount: 2,
    children: <Widget>[
   showScratchCard(context,"English"),showScratchCard(context,"Gk"),
      showScratchCard(context,"Science"),showScratchCard(context,"Social"),

   ],
  ),

     ),     
    );
  }

  showScratchCard(BuildContext context,var language) {
       var rng = new Random();
      var max=10000;
     var ran= rng.nextInt(max);
      print(ran);
  

    return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                
            child: Scratcher(
              
              brushSize: 100,
              threshold: 50,
              color: Colors.blue,
              onChange: (value) => print("Scratch progress: $value%"),
              onThreshold: () => print("Threshold reached"),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.5,
                      // child: Image.asset(
                      //   "assets/reward.png",
                      // ),
                      child: Column(
                        children: [
 
                    Text(
                      "$language"
                      
                    ),
                    RaisedButton(
          onPressed: (


          ) {}, //**this line is underlined in red. Error is here**
          color: Colors.green,
          child: const Text('Take Test'),
        ),
                        ],
                      ),
                    ),
                   
               
                      
                    
                    
                  ],
                ),
                
              ),
            ),
            
          );
  

  }
}