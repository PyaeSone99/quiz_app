import 'package:flutter/material.dart';

List<Color> homePageColor = [const Color.fromARGB(255, 78, 13, 151),const Color.fromARGB(255, 107, 15, 168)];
const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class HomePage extends StatelessWidget {

  const HomePage(this.startQuiz,{super.key});

  final void Function() startQuiz;
  
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
        child:  Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const HomeLogo(),
              const HomePageTitle(),
              HomeButton(startQuiz)
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
      // we donot use like that because of performance
      // child: Opacity( 
      //   opacity: 0.1,
      //   child: Image.asset('assets/images/quiz-logo.png',width: 300,)
      // ),
      child: Image.asset('assets/images/quiz-logo.png',width: 300,color: const Color.fromARGB(150, 255, 255, 255),),
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
          color: Color.fromARGB(255, 237, 223, 252),
          fontSize: 24
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override 
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: OutlinedButton.icon(onPressed: startQuiz, icon: const Icon(Icons.arrow_right_alt), label: const Text(
        'Start Quiz',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22
        ),
      )),
    );
  }
}