//  1: Reverse a List
void reverseList(List<dynamic> list) {
  print(list.reversed.toList());
}

//  2: Balance the Parentheses
bool areParenthesesBalanced(String str) {
  List<String> stack = [];
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.add('(');
    } else if (str[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  reverseList(numbers);  // [5, 4, 3, 2, 1]

  print(areParenthesesBalanced("(())")); // true
  print(areParenthesesBalanced("(()")); // false
}
