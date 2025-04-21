import 'package:flutter/material.dart';
import 'package:flutter_ex001/pages/home_page_content.dart';
import 'package:flutter_ex001/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "App",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Container(
            color: AppColors.white,
            padding: EdgeInsets.all(15),
            child: HomePageContent()
          )
        )
      ),
    );
  }
}