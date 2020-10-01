import 'package:quizzler/Ques.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class QuesBrain{

  int _quesNum = 0;

List<Ques> _questionBank = [
Ques('Some cats are actually allergic to humans',true),
Ques('You can lead a cow down stairs but not up stairs.', false),
Ques('Approximately one quarter of human bones are in the feet.', true),
Ques('A slug\'s blood is green.', true),
Ques('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
Ques('It is illegal to pee in the Ocean in Portugal.', true),
Ques('No piece of square dry paper can be folded in half more than 7 times.', false),
Ques('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', true),
Ques('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
Ques('The total surface area of two human lungs is approximately 70 square metres.',true),
Ques('Google was originally called \"Backrub\".', true),
Ques('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',true),
Ques('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',true),];

void NextQues(){
  if(  _quesNum  < (_questionBank.length-1)  ){
    _quesNum++;
    print(_quesNum);
    print(_questionBank.length);
  }


}

String getQuesText(){
  //(int quesNum)
  return _questionBank[_quesNum].Question;
}

bool getAns(){
  //(int quesNum)
  return _questionBank[_quesNum].Ans;
}
void restart(){
  _quesNum = 0;

}
bool isFinished(){

  if(_quesNum  == (_questionBank.length-1))
    {print("Reached at the last question");

    return true;}
  else
    return false;
}

// Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question.It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

// Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

// Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
}