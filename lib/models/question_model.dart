class QuestionModel {

  const QuestionModel(this.title,this.possibleAnswers);

  final String title;
  final List<String> possibleAnswers;

  List<String> getShuffledAnswers () {
    final shuffledAnswers = List.of(possibleAnswers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}