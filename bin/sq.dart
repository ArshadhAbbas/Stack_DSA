class Node{
  int? data;
  Node? next;
  Node({this.data});
}
class Stack
{
  Node? top;

  void push(int data)
  {
    Node newNode=Node(data: data);
    if(top==null)
    {
      top=newNode;
    }
    else{
      newNode.next=top;
      top=newNode;
    }
  }

  void display()
  {
    Node? current=top;
    if(top==null)
    {
      print("NULL");
    }
    else
    {
      while(current!=null)
      {
        print(current.data);
        current=current.next;
      }
    }
  }

  void pop()
  {
    if(top==null)
    {
      print("Empty");
    }
    else{
      top=top?.next;
    }
  }
}

void main()
{
  Stack list=Stack();
  list.push(12);
  list.push(13);
  list.push(14);
  list.push(16);
  list.push(18);
  list.pop();
  list.display();
}