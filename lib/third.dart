import 'package:darshit1/second.dart';
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  int _counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 25),
            child: Row(
              children: [
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(Context){
                    return Demo();
                  }));
                },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(padding: EdgeInsets.only(top: 0),height: 25,width: 25,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                      child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,size: 15,),
                    ),
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 235),
                    child: Icon(Icons.favorite,color: Colors.red,)
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 25),
            child: Row(
              children: [
                Container(child: Text("Veggie Tomato Mix",style: TextStyle(fontSize: 25,),),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 24,right: 24),
            child: Row(
              children: [
                Container(child:
                Text("comfort food is heartly. when heart are heavy,",style: TextStyle(fontSize: 14,),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Container(child:
                Text("they need gravitational and emotional....",style: TextStyle(fontSize: 14,),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Container(child:
                Text("food that reassures us that we will survive.",style: TextStyle(fontSize: 14,),),
                ),
              ],
            ),
          ),
          Container(height: 265,width: 400,
            child: Stack(
              children: [
                Container(height: 220,width: 260,padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(backgroundImage: AssetImage('lib/assets/images/download (1)_prev_ui (1).png'),radius: 15,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Container(child: Text('@300',style: TextStyle(color: Colors.red,fontSize: 30),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80,left: 270),
                  child: Container(height: 90,width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: 5,
                      )],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(child: Icon(Icons.add,size: 25,),),
                        Container(child: Text('2',style: TextStyle(fontSize: 25),),),
                        Container(child: Icon(Icons.minimize,size: 25,),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 229,left: 20),
                  child: Row(
                    children: [
                      Container(child: Icon(Icons.circle,color: Colors.red,)),
                      Container(child: Text('Tomato')),
                      Container(padding: EdgeInsets.only(left: 5),child: Icon(Icons.circle,color: Colors.red,),),
                      Container(child: Text('Raw and Onion')),
                      Container(padding: EdgeInsets.only(left: 5),child: Icon(Icons.circle,color: Colors.red,),),
                      Container(child: Text('Fish')),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0,left: 25),
            child: Row(
              children: [
                Container(child: Text("Add Extra Topping",style: TextStyle(fontSize: 25,),),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 2,left: 18),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.red),
                      color: Colors.red
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0,bottom: 5,left: 15,right: 15),
                    child: Text('Olives',style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.red)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 5,left: 15,right: 15),
                      child: Text('Paneer',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.red)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 5,left: 15,right: 15),
                      child: Text('salt',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.red)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 5,left: 15,right: 15),
                      child: Text('Souce',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 18),
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.star,color: Colors.amber,),
                ),
                Container(
                  child: Icon(Icons.star,color: Colors.amber,),
                ),
                Container(
                  child: Icon(Icons.star,color: Colors.amber,),
                ),
                Container(
                  child: Icon(Icons.star,color: Colors.amber,),
                ),
                Container(
                  child: Icon(Icons.star,color: Colors.amber,),
                ),
                Container(
                  child: Text('5.0'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                    child: Icon(Icons.access_time_rounded,color: Colors.black,),
                  ),
                ),
                Container(
                  child: Text('10-15 Min'),
                ),
              ],
            ),
          ),
          Container(padding: EdgeInsets.all( 10),
            margin: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                "Submit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
