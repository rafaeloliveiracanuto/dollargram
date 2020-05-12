String returnPhoneNumber(phone){
  String number = phone.replaceAll(RegExp(r'\D'), '');

  if(number[0] == '1'){
    number = number.substring(1);
    if(number.length == 10){
      var n = int.parse(number[0]);
      var nn = int.parse(number[3]);

      if(n == 0 || n == 1){
        number = "Only between 2 and 9!";
        return number;
      }
      if(nn == 0 || nn == 1){
        number = "Only between 2 and 9!";
        return number;
      }
    }else{
      number = "At least ten numbers!";
    }
  }else{
    if(number.length == 10){
      var n = int.parse(number[0]);
      var nn = int.parse(number[3]);

      if(n == 0 || n == 1){
        number = "Only between 2 and 9!";
        return number;
      }
      if(nn == 0 && nn == 1){
        number = "Only between 2 and 9!";
        return number;
      }
    }else{
      number = "At least ten numbers!";
    }
  }
  return number;
}

main(){
  String phone = "+1 (613)-995-0253";

  print(returnPhoneNumber(phone));
}