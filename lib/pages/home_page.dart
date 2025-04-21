import 'package:flutter/material.dart';
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
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar orci eros, non commodo ipsum dapibus non. Aliquam viverra luctus sem in venenatis. Ut fringilla varius enim in finibus. Etiam rhoncus arcu auctor eleifend vestibulum. Morbi sed est eros. Sed gravida vestibulum imperdiet. Aenean at massa diam. Donec venenatis nibh dolor, nec varius elit varius fringilla. Etiam in elit nec mi convallis interdum sit amet eu nisl. Fusce non egestas sapien, porta sagittis nulla. Aenean vehicula posuere justo, a consequat diam pulvinar nec. Nunc massa justo, aliquet vel feugiat sed, eleifend eu lorem. Mauris vitae venenatis mi. Nunc ac lectus eget purus feugiat efficitur.\n\nSuspendisse scelerisque nec eros vel aliquet. Praesent luctus orci nisl, accumsan commodo magna sollicitudin scelerisque. Quisque vitae tincidunt nisi, viverra semper nisi. Donec efficitur porttitor tincidunt. Phasellus lacus lacus, sollicitudin et tortor a, vulputate accumsan ligula. Vestibulum cursus luctus nulla vel porttitor. Cras vitae accumsan diam. In molestie mauris quis rhoncus commodo. In eu eleifend nunc, vel tempor arcu. Nullam pulvinar, risus vitae sodales interdum, risus orci mattis elit, nec dictum sapien odio a risus. Sed porttitor lectus eu cursus tincidunt. Curabitur sollicitudin, dolor at rhoncus efficitur, magna magna lobortis enim, vitae bibendum nibh nibh vitae nulla. In libero nisl, egestas ac rutrum in, egestas id lectus. Nulla sagittis blandit erat, quis vulputate nisi venenatis non. Vivamus non ornare leo. Etiam non nibh id odio fermentum consequat.",
              style: TextStyle(color: AppColors.black)
            )
          )
        ),
      )
    );
  }
}