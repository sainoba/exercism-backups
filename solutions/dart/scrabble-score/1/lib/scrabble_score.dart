// Put your code here

int score(String word) {
  word = word.toUpperCase();
  int points = 0;
  for (var letter in word.split('')) {
    print(letter);
    if('AEIOULNRST'.contains(letter)){
      points += 1;
    } else if('DG'.contains(letter)) {
      points += 2;
    } else if('BCMP'.contains(letter)) {
      points += 3;
    } else if('FHVWY'.contains(letter)) {
      points += 4;
    } else if('K'.contains(letter)) {
      points += 5;
    } else if('JX'.contains(letter)) {
      points += 8;
    } else if('QZ'.contains(letter)) {
      points += 10;
    }
  }
  return points;
}