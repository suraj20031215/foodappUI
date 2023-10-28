import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 29),
              child: const Text('Delivering to'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 18),
              child: const Text('Current location',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 340,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(prefixIcon: Icon(Icons.search),border: OutlineInputBorder(borderSide:BorderSide(width: 1))),
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/images/menu-2-svgrepo-com.svg')
                ],
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                
                child: Row(children: [

                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.red[50],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:SvgPicture.asset('assets/images/offer.svg')
                      ),

                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  SvgPicture.asset('assets/images/burger.svg'),
                  ),

                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.tealAccent[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  SvgPicture.asset('assets/images/pizza.svg'),
                  ),

                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.purple[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  SvgPicture.asset('assets/images/fast-food-svgrepo-com.svg'),
                  ),

                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.orange[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  SvgPicture.asset('assets/images/menu-2-svgrepo-com.svg'),
                  ),

                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.green[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  SvgPicture.asset('assets/images/menu-2-svg-repo-com.svg'),
                  ),
                ],
                ),
              ),

          ],
        ),
      )
    );
  }
}