import 'package:flutter/material.dart';
import 'package:flutter_ex001/theme/app_colors.dart';


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
  double sumResult = 0;


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
        LayoutBuilder(
          builder: (context, constraints) {
            final double currentWidth = constraints.maxWidth;

            return Container(
              width: currentWidth * 0.8,
              height: currentWidth * 0.8,
              margin: EdgeInsets.only(top: currentWidth * 0.15, bottom: currentWidth * 0.15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(132, 27, 27, 29),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    sumResult.toStringAsFixed(0),
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'monospace',
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                )
              )
            );
          }
        ),
        Text(
          "Informe números inteiros nos campos abaixo para somá-los:",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16
          ) 
        ),
        SizedBox(height: 25),
        TextField(
          keyboardType: TextInputType.number,
          controller: firstNumberController,
          style: TextStyle(color: AppColors.black),
          decoration: InputDecoration(
            label: Text("1° número"),
            hintText: 'Digite um número inteiro',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            labelStyle: TextStyle(
              color: AppColors.black,
              fontSize: 16,
            ),
            hintStyle: TextStyle(
              color: AppColors.black,
              fontSize: 14,
            ), 
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), 
              borderSide: BorderSide(
                color: AppColors.primaryLight,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        TextField(
          keyboardType: TextInputType.number,
          controller: secondNumberController,
          style: TextStyle(color: AppColors.black),
          decoration: InputDecoration(
            label: Text("2° número"),
            hintText: 'Digite um número inteiro',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            labelStyle: TextStyle(
              color: AppColors.black,
              fontSize: 16,
            ),
            hintStyle: TextStyle(
              color: AppColors.black,
              fontSize: 14,
            ), 
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), 
              borderSide: BorderSide(
                color: AppColors.primaryLight,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        ElevatedButton(
          onPressed: sumControllers,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryLight,
            foregroundColor: Colors.white,
            elevation: 2,
            shadowColor: const Color.fromARGB(192, 27, 27, 29),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32), // Arredondamento
            ),
          ),
          child: Text("Somar")),
        
      ],
    );
  }
}