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
        
        var currentNode = head!
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next = newNode
    }

    func getLast() -> Int? {
        if head == nil { return nil }
        
        var currentNode = head!
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        
        return currentNode.data
    }

    func insert(position: Int, data: Int) {
        if position == 0 {
            addFront(data)
            return
        }
        
        var currentNode = head
        for i in 0..<position-1 {
            currentNode = currentNode?.next
        }
        
        let newNode = Node(data, currentNode?.next)
        currentNode!.next = newNode
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
        var currentNode = head!
        
        while currentNode.next != nil {
            result.append(currentNode.data)
            currentNode = currentNode.next!
        }
        result.append(currentNode.data)
        
        print(result)
    }
}

let linkedList = LinkList()

linkedList.addFront(4)
linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)
linkedList.addBack(5)

linkedList.printLinkedList()
linkedList.getFirst()
linkedList.getLast()

linkedList.insert(position: 0, data: 8)
linkedList.printLinkedList()

linkedList.insert(position: 2, data: 7)
linkedList.printLinkedList()
