import 'package:darshit1/second.dart';
import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/first.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                child: Center(child: Text('Food Go!',style: TextStyle(fontSize: 40),)),
              ),
            ),
            Container(
              child: Center(child: Text('get your favourite food from here',style: TextStyle(fontSize: 20),)),
            ),
            InkWell(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(Context){
                return Demo();
              }));
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 370),
                child: Container(padding: EdgeInsets.only(top: 0),height: 50,width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}