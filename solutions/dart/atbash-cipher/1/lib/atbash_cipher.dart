class AtbashCipher {
  String plain = 'abcdefghijklmnopqrstuvwxyz';
  String cipher = 'zyxwvutsrqponmlkjihgfedcba';

  bool isLetter(String char) {
  return RegExp(r'^[a-z]$').hasMatch(char);
}
  bool isNumber(String char) {
  return RegExp(r'^[0-9]$').hasMatch(char);
}
  
  String addSpaceEveryFive(String input) {
  return input.replaceAllMapped(RegExp(r'.{1,5}'), (match) => '${match.group(0)} ').trim();
}
  
  // Put your code here
  String encode(String input) {
    input = input.toLowerCase();
    String output = '';
      for (var letter in input.split('')) {
        if(isLetter(letter)){
          int idx = plain.indexOf(letter);
          output += cipher.substring(idx, idx+1);
        } else if (isNumber(letter)) {
          output += letter;
        }
      }
    return addSpaceEveryFive(output);
  }

  String decode(String input) {
    String output = '';
    input = input.toLowerCase();
    for (var letter in input.split('')) {
      if(isLetter(letter)){
        int idx = cipher.indexOf(letter);
        output += plain.substring(idx, idx+1);
      } else if(isNumber(letter)) {
        output += letter;
      }
    }

    return output;
  }
}
