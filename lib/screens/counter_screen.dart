

import 'package:flutter/material.dart';

class counter_screen extends StatefulWidget{
  const counter_screen({super.key});

  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const miEstilo = TextStyle(fontSize: 20);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            const Text('Numero de clicks', style: miEstilo,),
            Text('$contador', style: TextStyle(fontSize: 30),),
          ],
        ),
    ),


    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //Primer boton

    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add ),
          onPressed: () {
            contador++;
            setState(() {});
            },
          ),


    //Segundo boton


           FloatingActionButton(
          child: const Icon(Icons.remove ),
          onPressed: () {
            contador--;
            setState(() {});
            },
          ),  
    //Tercer boton
          FloatingActionButton(
          child: const Icon(Icons.recycling ),
          onPressed: () {
            contador=0;
            setState(() {});
            },
          ),  

      ],
    ),
    );
  }
}
