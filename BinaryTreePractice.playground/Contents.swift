import UIKit

//        10
//       /  \
//      5    14
//     /     / \
//    1     11  20


class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
//left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//right branch
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

let tenRootNode = Node(value: 10, leftChild: fiveNode , rightChild: fourteenNode)

func search(node: Node?, searchValue: Int) -> Bool {
    if node?.value == searchValue {
        return true
    } else {
        // recursion
        return search(node: node?.leftChild, searchValue: searchValue)
    }
    
    return false
}

search(node: tenRootNode, searchValue: 14)

let Arr = [12,421,32,12,5,2]
