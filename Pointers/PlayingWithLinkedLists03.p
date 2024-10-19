program PlayingWithLinkedLists03;

type
  pointerToNode = ^nodeOfLinkedList; { pointerToNode is a pointer to a nodeOfLinkedList }
  nodeOfLinkedList = record
    dataOfNode: integer; { The data that the node holds, here integer }
    nextNodeAddr: pointerToNode; { Pointer to the next node in the list }
  end;

var headNode, secondNode, thirdNode : pointerToNode;

procedure CreateNewNode(var newNode: pointerToNode; dataValue: integer);
begin
  new(newNode); { Allocate memory for the node }
  newNode^.dataOfNode := dataValue; { Assigning the dataValue }
  newNode^.nextNodeAddr := nil; { Not pointing to next, as we are just creating a node }
end;

procedure LinkNodes(firstNode, secondNode: pointerToNode);
{ Link two nodes }
begin
firstNode^.nextNodeAddr := secondNode;
end;

procedure PrintList(currentNode: pointerToNode);
{ Traversing the linked list, printing the node values }
begin
while currentNode <> nil do
  begin
    writeln(currentNode^.dataOfNode); { Printing the value of the node }
    currentNode := currentNode^.nextNodeAddr; { Moving the pointer to the next node }
  end;
end;

begin

CreateNewNode(headNode, 10);
CreateNewNode(secondNode, 20);
CreateNewNode(thirdNode, 30);

LinkNodes(headNode, secondNode);
LinkNodes(secondNode, thirdNode);

PrintList(headNode);

dispose(headNode); { Releasing memory }
dispose(secondNode);
dispose(thirdNode);
  
end.