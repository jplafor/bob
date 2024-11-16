#ifndef NODE_H
#define NODE_H
#include <memory>

template <class T>
class Node
{
private:
    std::unique_ptr<Node> nextNode;
    T data;

public:
    Node newNode();
    Node 

}

#endif //NODE_H