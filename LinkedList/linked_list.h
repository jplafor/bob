#ifndef LINKED_LIST_H 
#define LINKED_LIST_H


template <class T>
class LinkedList
{
    private:
        Node<T> firstNode = NULL;
    public:
        LinkedList();
        const insert(const int i);
        void remove(const int i);
        // prepend(T data);
        // append(T data);


};

#endif //LINKED_LIST_H