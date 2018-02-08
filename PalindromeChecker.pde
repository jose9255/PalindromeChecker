public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


public String rereverse(String sString){
  String newString = new String();
  for(int i = 0 ; i<sString.length() ; i++)
    if(Character.isLetter(sString.charAt(i)) == true)
      newString = newString + sString.charAt(i);
    
  return newString.toLowerCase();
}

public boolean palindrome(String word)
{
  if(rereverse(word).equals(reverse(rereverse(word)))) //front back equals back front
    return true;
  return false;
}

public String reverse(String str)
{
    String aNew = new String();

    for(int i = str.length()-1 ; i>-1 ; i--)
      aNew = aNew + str.charAt(i);

    return aNew.toLowerCase(); // change to lower case
}


