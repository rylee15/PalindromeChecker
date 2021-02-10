public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sNew)
{
  String sWord = onlyLetters(sNew);
  sWord = sWord.toLowerCase();
  if(sWord.equals(reverse(sWord))) 
  {
     return true;
  }else{
     return false; 
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length(); i > 0; i--){
      sNew = sNew + str.substring(i-1,i);
  }
  return sNew;
}
public String noCapitals(String sNew){
  return sNew.toLowerCase();
}
public String noSpaces(String sWord){
  String sNew = new String();
  int i = 0;
  for(int j = 0; j < sWord.length(); j++){
      if(sWord.substring(i,i+1).equals(" ")){
        i++;
      
      }else{
        sNew = sNew + sWord.substring(i,i+1);
        i++;
    } 
  }
  return sNew;
}
public int numLetters(String sWord){
  int sNew = 0;
  for(int i = 0; i < sWord.length(); i++)
    if(Character.isLetter(sWord.charAt(i)))
      sNew++;
  return sNew;
}
public String onlyLetters(String sWord){
  String sNew = new String();
  for(int i = 0; i < sWord.length(); i++)
    if(Character.isLetter(sWord.charAt(i)))
      sNew = sNew + sWord.substring(i,i+1);
  return sNew;
}
