import 'package:flutter/material.dart';
import 'package:task/home/homepage.dart';

class Log1 extends StatelessWidget {
  const Log1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:150),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 500,
              child: Image.asset("assets/imag/firebase.png"),
            ),
            SizedBox(height: 100,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40),
                          // image: const DecorationImage(
                          //    image: AssetImage("assets/imag/google.png"),
                          //      fit: BoxFit.cover,opacity: 0.8,
                              
                          //     )
                        ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 35,
                      child: Image.asset("assets/imag/google.png",)
                    ),
                  ),
      
                  const Padding(
                    padding: EdgeInsets.only(left: 105),
                    child: Text("Google",style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,color:Colors.white
                                        ),),
                  ),
                ],
              ), 
            ),
            const SizedBox(height: 10,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Color.fromARGB(255, 45, 191, 50),
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));

                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        
                        
                        height: 35,
                        child: Image.asset("assets/imag/call.png",color: Colors.white,)
                      ),
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.only(left: 105),
                      child: Text("Phone",style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,color:Colors.white
                                          ),),
                    ),
                  ],
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
 }
