class Node {
  int value;
  Node? next;

  Node(this.value, {this.next});
}

//  1: Print in Reverse
void printReverse(Node? head) {
  if (head == null) return;
  printReverse(head.next);
  print(head.value);
}

//  2: Find the Middle Node
Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }
  return slow;
}

//  3: Reverse a Linked List
Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;

  while (current != null) {
    Node? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

//  4: Remove All Occurrences
Node? removeAllOccurrences(Node? head, int value) {
  while (head != null && head.value == value) {
    head = head.next;
  }

  Node? current = head;

  while (current != null && current.next != null) {
    if (current.next?.value == value) {
      current.next = current.next?.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void main() {
  Node node3 = Node(3);
  Node node2 = Node(2, next: node3);
  Node node1 = Node(1, next: node2);

  printReverse(node1);  // 3 2 1

  Node? middle = findMiddleNode(node1);
  if (middle != null) {
    print(middle.value);  // 2
  }

  Node? reversedList = reverseLinkedList(node1);
  while (reversedList != null) {
    print(reversedList.value);  // 3 2 1
    reversedList = reversedList.next;
  }

  Node? modifiedList = removeAllOccurrences(node1, 2);
  while (modifiedList != null) {
    print(modifiedList.value);  // 1 3
    modifiedList = modifiedList.next;
  }
}
