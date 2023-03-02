import 'dart:convert';

import 'package:darshit1/third.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'add.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Row(
              children: [
                Container(height: 40,width: 40,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.menu,color: Colors.black,size: 30,),
                ),

                Container(padding: EdgeInsets.only(left: 210),
                  child: Container(
                    height: 40,width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: 85,
                        height: 65,
                        child: CircleAvatar(backgroundImage: AssetImage('lib/assets/images/download.jpg'),radius: 20,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Row(
              children: [
                Container(child: Text("Let's Find",style: TextStyle(fontSize: 20,),),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20),
            child: Row(
              children: [
                Container(child: Text("Something Delicious!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
              ],
            ),
          ),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                    hintText: "Search here",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 23),
            child: Row(
              children: [
                Container(child: Text('Foods',style: TextStyle(color: Colors.red,fontSize: 17),),),
                Container(padding: EdgeInsets.only(left: 30),
                  child: Text('Drinks',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                ),
                Container(padding: EdgeInsets.only(left: 30),
                  child: Text('Snacks',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                ),
                Container(padding: EdgeInsets.only(left: 30),
                  child: Text('Sauce',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                ),
              ],
            ),
          ),
          Container(padding: EdgeInsets.only(left: 230,top: 8),
            child: Text('See all',style: TextStyle(fontSize: 18,color: Colors.red,),),
          ),
          Stack(
            children: [
              Container(
                width: 400,height: 235,
              ),
              Container(width: 400,height: 235,
                child: FutureBuilder<http.Response>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return  Container(padding: EdgeInsets.only(top: 5),width: 170,height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0,left: 16,bottom: 0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder:(Context){
                                      return Third();
                                    }));
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Image(
                                          height: 130,
                                          width: double.infinity,
                                          image: NetworkImage((jsonDecode(
                                              snapshot.data!.body.toString())[index]
                                          ['avatar'])
                                              .toString()),
                                          fit: BoxFit.fitHeight  ,
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 16,right: 16,top: 0),
                                            child: Text(
                                              (jsonDecode(snapshot.data!.body.toString())[index]['foodname']).toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 16,right: 16,top: 0),
                                            child: Text(
                                              (jsonDecode(snapshot.data!.body.toString())[index]['price']).toString(),style: TextStyle(color: Colors.black),),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 0,right: 0,top: 0),
                                          child: Row(
                                            children: [
                                              Container(padding: EdgeInsets.only(left: 24),
                                                child: IconButton(
                                                  icon: Icon(Icons.delete,color: Colors.red,),
                                                  onPressed: () {
                                                    deleteFood((jsonDecode(snapshot.data!.body
                                                        .toString())[index]['id']))
                                                        .then(
                                                          (value) {
                                                        setState(() {});
                                                      },
                                                    );
                                                  },
                                                ),),
                                              Container(padding: EdgeInsets.only(left: 20),
                                                child: IconButton(
                                                  icon: Icon(Icons.edit,color: Colors.green,),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .push(
                                                      MaterialPageRoute(
                                                        builder: (context) => AddFood(jsonDecode(
                                                            snapshot.data!.body.toString())[index]),
                                                      ),
                                                    )
                                                        .then(
                                                          (value) {
                                                        if (value == true) {
                                                          setState(() {});
                                                        }
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: jsonDecode(snapshot.data!.body.toString()).length,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                  future: getFood(),
                ),
              )
            ],
          ),
          Container(
            child: Row(
              children: [
                Container(padding: EdgeInsets.only(top: 4,left: 39),
                  child: Icon(Icons.home,color: Colors.red,),
                ),
                Container(padding: EdgeInsets.only(top: 4,left: 50),
                  child: Icon(Icons.favorite_border,color: Colors.black,),
                ),
                Container(padding: EdgeInsets.only(top: 4,left: 55),
                  child: Icon(Icons.contact_page_outlined,color: Colors.black,),
                ),
                Container(padding: EdgeInsets.only(top: 4,left: 50),
                  child: Icon(Icons.access_time,color: Colors.black,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<http.Response> getFood() async{
    var response = await http
        .get(Uri.parse('https://63f4abf23f99f5855db4cd6b.mockapi.io/darshit'));
    print(response.body.toString());
    return response;
  }

  Future<void> deleteFood(id) async {
    var response1 = await http.delete(
        Uri.parse('https://63f4abf23f99f5855db4cd6b.mockapi.io/darshit/$id'));
  }
}
