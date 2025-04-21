import 'package:flutter/material.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() {
    return HomePageContentState();
  }
}


class HomePageContentState extends State<HomePageContent> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  dynamic sumResult = "Faça alguma soma";


  void sumControllers() {
    String firstNumberString = firstNumberController.text;
    String secondNumberString = secondNumberController.text;

    double firstNumber = double.tryParse(firstNumberString) ?? 0;
    double secondNumber = double.tryParse(secondNumberString) ?? 0;


    setState(() {
      sumResult = firstNumber + secondNumber;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          controller: firstNumberController,
          decoration: InputDecoration(
            label: Text("numero 1")
          ),
        ),
        TextField(
          keyboardType: TextInputType.number,
          controller: secondNumberController,
          decoration: InputDecoration(
            label: Text("numero 2")
          ),
        ),
        ElevatedButton(
          onPressed: sumControllers,
          child: Text("Somar")),
        Text(sumResult.toString())
      ],
    );
  }
}