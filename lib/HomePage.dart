import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple[50],
        title: Text('Food App UI'),
        actions: [
          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("Home"),
                  ),

                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Account"),
                  ),

                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Logout"),
                  ),

                ];
              },

          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),

        ],
      ),

      body:SingleChildScrollView(

        child: Column(
          children: [


              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left:13,right: 10,bottom:7,top:10),
                    child: SizedBox(
                      width: 320,
                      height: 40,
                      child: TextField(

                        decoration: InputDecoration(prefixIcon: Icon(Icons.search),border: OutlineInputBorder(borderSide:BorderSide(width: 1)),hintText: 'Search here....'),
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/images/mic.svg',height: 35,)
                ],
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                
                child: Row(children: [

                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left:10,right:5,top:5,bottom:5),
                            width: 80,
                          height: 80,
                          decoration: BoxDecoration(color: Colors.red[50],borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child:SvgPicture.asset('assets/images/offer.svg')
                          ),
                          Text('Offer',style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),

                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.red[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:  SvgPicture.asset('assets/images/burger.svg'),
                      ),
                      Text('Burger',style: TextStyle(fontWeight: FontWeight.w600),)
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.tealAccent[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:  SvgPicture.asset('assets/images/pizza.svg'),
                      ),
                      Text('Pizza',style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.purple[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:  SvgPicture.asset('assets/images/soft-drink.svg'),
                      ),
                      Text('Soft Drink',style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.orange[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:  SvgPicture.asset('assets/images/french.svg'),
                      ),
                      Text('French fry',style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.green[100],borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child:  SvgPicture.asset('assets/images/spaghetti-pasta.svg'),
                      ),
                      Text('Pasta',style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
                ),
              ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/momos.png',fit:BoxFit.fill),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Veg Darjeeling Steam Momo',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Real Japanese Taste',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/img_1.png',fit: BoxFit.fill),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Indian Food',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Real Indian Taste',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/biryani.png',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Lazeez Bhuna Murgh',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(

                  padding: EdgeInsets.only(left:10),
                  child: Text('(Boneless, Served )',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/noodles.png',fit: BoxFit.fill),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Veggie Noodles',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('only 230 rupess',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/potato.png',fit: BoxFit.fill),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Cripsy Honey Potato',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Real Japanese Taste',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/img_3.png',fit:BoxFit.fill),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Veggie Diet Salt & Pepper',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Stay Healthy',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),


          ],
        ),
      )
    );
  }
}