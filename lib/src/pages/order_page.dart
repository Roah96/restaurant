import 'package:flutter/material.dart';
//Custom Widget
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  @override
 _OrderPageState createState() => _OrderPageState();

}
class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
          body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
             _buildTotalContainer(),
          ],
        ),
        
    );
    
  }
Widget _buildTotalContainer(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.only(top: 20.0),
    child: Column(
     children: <Widget>[
  Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Text("Cart Total", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
  Text("23.0", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.black),),

],
 ),
 SizedBox(height: 10.0),
 Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Text("Discount", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
  Text("3.0", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.black),),

],
 ),
 SizedBox(height: 10.0),
 Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Text("Tax", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
  Text("0.5", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.black),),

],
 ),
 Divider(height: 40.0, color: Color(0xff3d3d3d),),
 Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Text("Sub Total", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
  Text("26.5", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.bold, color: Colors.black),),

],
 ),
 SizedBox(height: 20.0),
Container(
width: MediaQuery.of(context).size.width,
height: 50.0,
decoration: BoxDecoration(
  color: Colors.blue,
  borderRadius: BorderRadius.circular(30.0),
),
child: Center(
  child: Text(
    "Proceed to Checkout",
    style: TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
  ),
),
),
     ],
    ),
    );
}
}