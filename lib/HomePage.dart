import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Text('Food App UI'),
        actions: [
          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Home"),
                  ),

                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Account"),
                  ),

                  const PopupMenuItem<int>(
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

                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.blue) ),prefixIcon: Icon(Icons.search),border: OutlineInputBorder(borderSide:BorderSide(width: 1)),hintText: 'Search here....',hintTextDirection: TextDirection.rtl,filled: true,alignLabelWithHint: true),
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
                          const Text('Offer',style: TextStyle(fontWeight: FontWeight.w600))
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
                      const Text('Burger',style: TextStyle(fontWeight: FontWeight.w600),)
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
                      const Text('Pizza',style: TextStyle(fontWeight: FontWeight.w600))
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
                      const Text('Soft Drink',style: TextStyle(fontWeight: FontWeight.w600))
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
                      const Text('French fry',style: TextStyle(fontWeight: FontWeight.w600))
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
                      const Text('Pasta',style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
                ),
              ),
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.black),

                  child: Image.network('https://media.istockphoto.com/id/1283470406/photo/assorted-chinese-dim-sum.jpg?s=612x612&w=0&k=20&c=UwhAte7HsJAnV88Vv4vUkeczzBBfkhl2CxV5bymQaIs=',fit: BoxFit.fill,)),

            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:13),
                  child: Text('Veg Darjeeling Steam Momo',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:Image.network('https://media.istockphoto.com/id/1479068684/photo/hot-madras-paneer-and-vegetable-masala-with-rice.jpg?s=612x612&w=0&k=20&c=yIKoounw71QkkCq_iKI9PkaZkdfwITLQojkismcPs-g=',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Indian Food',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:Image.network('https://media.istockphoto.com/id/509024590/photo/soup-with-meatballs.jpg?s=612x612&w=0&k=20&c=t7_mYsFEl5UZSG57S6S9xmUk-S8v6eowSjF9TCQv0ow=',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Lazeez Bhuna Murgh',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:Image.network('https://media.istockphoto.com/id/637214478/photo/pasta-plate.jpg?s=612x612&w=0&k=20&c=oebCQG_Zfv2zJpobSzpF6JFNdsBQUjG6MdQh-En5l3c=',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Veggie Noodles',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('only 230 rupees',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:Image.network('https://media.istockphoto.com/id/1409055436/photo/fried-sweet-potatoes.jpg?s=612x612&w=0&k=20&c=SFYqWCBe_1OywBQlph6GAw7XDnYQVglcVcRTDXRwcZI=',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Crispy Honey Potato',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
              margin: const EdgeInsets.only(left: 10,right:10,top:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:Image.network('https://images.unsplash.com/photo-1606787366850-de6330128bfc?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',fit: BoxFit.fill,),
            ),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Text('Veggie Diet Salt & Pepper',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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