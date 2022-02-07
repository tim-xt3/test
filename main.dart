/* Текстовый файл 24.txt состоит не более чем из 106 символов X, Y и Z. 
Определите максимальное количество идущих подряд символов, 
среди которых каждые два соседних различны. 
Для выполнения этого задания следует написать программу. */

void main() {
  
  String s = "XXXYYXXYZXXYXZYXXXYYXXXXXXXXYZXYXXXYXYZYYZXYXXX";
  int counter = 1;
  int max = 0;
  
  
  print("String length: ${s.length}");
  
  for (int i = 0; i < s.length - 1; i++) {
    
    if (s[i] != s[i + 1]) {
      
      counter++;
      //print("Index: $i, ${s[i]} != ${s[i+1]}, counter: $counter");
      
    } else {
      
      //print("Index: $i, ${s[i]} == ${s[i+1]} reset, max: $max");      
      if (counter > max) { max = counter;};
      counter = 1;
    }
  }
  
  if (counter > max) { max = counter;};
  print("ITOGO $max");
}
