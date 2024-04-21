import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
        
    func addFront(_ data: Int) {
        let newNode = Node(data, head)
        head = newNode
    }

    func getFirst() -> Int? {
        return head?.data
    }

    func addBack(_ data: Int) {
        let newNode = Node(data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var pointer = head!
        while pointer.next != nil {
            pointer = pointer.next!
        }
        pointer.next = newNode
    }

    func getLast() -> Int? {
        if head == nil { return nil }
        
        var pointer = head!
        while pointer.next != nil {
            pointer = pointer.next!
        }
        
        return pointer.data
    }

    func insert(position: Int, data: Int) {
    }
    
    func deleteFirst() {
    }

    func deleteLast() {
    }
    
    func delete(at position: Int) {
    }
    
    var isEmpty: Bool {
        return false
    }
    
    func clear() {
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var pointer = head!
        
        while pointer.next != nil {
            result.append(pointer.data)
            pointer = pointer.next!
        }
        result.append(pointer.data)
        
        print(result)
    }
}

let linkedList = LinkList()

linkedList.addFront(5)
linkedList.addFront(4)
linkedList.addFront(3)
linkedList.addFront(2)

linkedList.printLinkedList()
linkedList.getFirst()
linkedList.getLast()
