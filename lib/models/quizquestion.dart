class Question{

  final String text;
  final List<String>answers;

 const  Question(this.text, this.answers);
 List<String>getshuffled(){
  final shuffledlist=List.of(answers);
  shuffledlist.shuffle();
  return shuffledlist;
 }
}