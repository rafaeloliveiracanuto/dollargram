class PhoneNumber {
  String clean(String number){

    RegExp letters = RegExp(r"[a-zA-Z]");
    RegExp punctuations = RegExp(r"[@:!]");

    if(letters.hasMatch(number)){
      throw FormatException("letters not permitted");
    }

    if (punctuations.hasMatch(number)) {
      throw FormatException("punctuations not permitted");
    }

    number = number.replaceAll(RegExp(r"\D"), '');

    if (number.length > 11) {
      throw FormatException("more than 11 digits");
    }else if (number.length < 10) {
      throw FormatException("incorrect number of digits");
    }else if (number.length == 11) {
      if (number[0] == '1') {
        number = number.substring(1);
      }else {
        throw FormatException("11 digits must start with 1");
      }
    }

    if (number[0] == '0') {
      throw FormatException("area code cannot start with zero");
    }else if (number[0] == '1') {
      throw FormatException("area code cannot start with one");
    }else if (number[3] == '0') {
      throw FormatException("exchange code cannot start with zero");
    }else if (number[3] == '1') {
      throw FormatException("exchange code cannot start with one");
    }else {
      return number;
    }
    
  }
   
}

