import 'package:flutter/material.dart';

List<Color> homePageColor = [Colors.purple,Colors.pink];
const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class HomePage extends StatelessWidget {

  const HomePage({super.key});
  
  @override
  Widget build(context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: homePageColor,
            begin: startAlign,
            end: endAlign
          )
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HomeLogo(),
              HomePageTitle(),
              HomeButton()
            ],
          ),
        ),
    );
  }
}

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: Image.asset('assets/images/quiz-logo.png',width: 300,),
    );
  }
}

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({super.key});
  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: const Text(
        'Learn Flutter The Fun Way!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override 
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text(
        'Start Quiz',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22
        ),
      )),
    );
  }
}