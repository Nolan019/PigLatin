public void setup() 
{
  String[] word = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + word.length + " lines");
  for (int i = 0 ; i < word.length; i++) 
  {
    System.out.println(pigLatin(word[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word) {
for(int i = 0; i < word.length(); i++) {
    if(word.substring(i,i+1).equals("a"))
    return i;
    else if(word.substring(i,i+1).equals("e"))
    return i;
    else if(word.substring(i,i+1).equals("i"))
    return i;
    else if(word.substring(i,i+1).equals("o"))
    return i;
    else if(word.substring(i,i+1).equals("u"))
    return i;
}
  return -1;
}


public String pigLatin(String word)
{
  if(findFirstVowel(word) == -1)
  {
    return word + "ay";
  }
  else if(findFirstVowel(word) == 0) { 
  return word + "way"; 
}
else if(word.substring(0,2).equals("qu")) { 
  return word.substring(2,word.length()) + "quay"; 
}
else if(findFirstVowel(word) == 1) { 
  return word.substring(1,word.length()) + word.substring(0,1) + "ay"; 
}
else if(findFirstVowel(word) == 2) { 
  return word.substring(2,word.length()) + word.substring(0,2) + "ay"; 
}
else if(findFirstVowel(word) == 3) { 
  return word.substring(3,word.length()) + word.substring(0,3) + "ay"; 
}
  else
  {
    return "ERROR!";
  }
}
