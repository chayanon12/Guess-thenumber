import 'dart:io';
import 'dart:math';

void main () {

  const Max_RANDOM = 100;

  var r = Random();
  var answer = r.nextInt(Max_RANDOM) + 1;
  var guess;
  var count=0;
  print('╔════════════════════════════════════════════════════');
  print ('║               GUESS THE NUMBER'         );
  print('║────────────────────────────────────────────────────');
  do {
    stdout.write('║Guess the number between 1 and $Max_RANDOM: ');
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!); // input! : check null
    if(guess == null){
      continue;}
    else{
      count+=1;
    }
    if (answer == guess) {
      print("║$guess is CORRECT ❤ , total guesses: $count" );
    }
    else if (answer < guess) {
      print('║$guess is TOO HIGHT! ▲');
      print('║────────────────────────────────────────────────────');
    }
    else if (answer > guess) {
      print('║$guess is TOO LOW!  ▼ ');
      print('║────────────────────────────────────────────────────');
    }
  }while (guess != answer);
      print('║────────────────────────────────────────────────────');
      print('║                      THE END             ');
      print('╚════════════════════════════════════════════════════');
  }
