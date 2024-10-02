program PlayingWithLinkedLists01;

type
  pointerToNode = ^nodeOfLinkedList; { pointerToNode is a pointer to a nodeOfLinkedList }
  nodeOfLinkedList = record
    dataOfNode: integer; { The data that the node holds, here integer }
    nextNodeAddr: pointerToNode; { Pointer to the next node in the list }
  end;

var headNode, secondNode, thirdNode, currentNode : pointerToNode;

begin

new(headNode);  { Allocate memory for the first node }
headNode^.dataOfNode := 10;
headNode^.nextNodeAddr := nil;

new(secondNode);  { Allocate memory for the second node }
secondNode^.dataOfNode := 20;
secondNode^.nextNodeAddr := nil;

new(thirdNode);  { Allocate memory for the 3rd node }
thirdNode^.dataOfNode := 30;
thirdNode^.nextNodeAddr := nil;

headNode^.nextNodeAddr := secondNode; {link the first node to the second node}
secondNode^.nextNodeAddr := thirdNode; {link the second node to the third node}

{Traversing the linked list, printing the node values}

currentNode := headNode;  { Start at the beginning of the list }

while currentNode <> nil do
begin
  writeln(currentNode^.dataOfNode); { Printing the value of the node }
  currentNode := currentNode^.nextNodeAddr; { Moving the pointer to the next node}
end;
  
end.