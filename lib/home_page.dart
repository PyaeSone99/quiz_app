import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HomeLogo(),
          const HomePageTitle(),
          HomeButton(startQuiz)
        ],
      ),
    );
  }
}

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      // we donot use like that because of performance
      // child: Opacity(
      //   opacity: 0.1,
      //   child: Image.asset('assets/images/quiz-logo.png',width: 300,)
      // ),
      child: Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        color: const Color.fromARGB(150, 255, 255, 255),
      ),
    );
  }
}

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({super.key});
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Text(
        'Learn Flutter The Fun Way!',
        style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 237, 223, 252), fontSize: 24),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(9)
                  ),  
          ),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt,color: Colors.white,),
          label: const Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )),
    );
  }
}
