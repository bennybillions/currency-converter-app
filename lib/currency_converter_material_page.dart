
import 'package:flutter/material.dart';

// Step1. Create a ststeful widget shortcut is stful

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
} int result = 0;

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
 @override build(BuildContext context) {
   
     final TextEditingController textEditingController = TextEditingController();
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Text(result.toString(),
           style: const TextStyle(
            fontSize: 50, 
            fontWeight: FontWeight.w700, 
            color: Color.fromRGBO(0, 0, 0, 1) ),),
            
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter USD value',
                  hintStyle: TextStyle(
                    color: Colors.black, 
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  )
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextButton(onPressed: (){
              setState(() {
                   result = int.parse(textEditingController.text) * 2000;
              });
           
            }, 
             style: TextButton.styleFrom(
              backgroundColor:Colors.black,
              foregroundColor: Colors.white,
      
             minimumSize: const Size(double.infinity, 50)
             ),
             child: const Text('Convert'))
             )
            ],)));
  }
}





  