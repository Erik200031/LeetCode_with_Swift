class Stack<Element> {
    private var items = Array<Element>()
    
    func push(_ item: Element) {
        items.append(item)
    }
    
    func pop() {
        items.removeLast()
    }
    
    func top() -> Element? {
        return items.last
    }
    
    func isEmpty() -> Bool {
        return items.isEmpty
    }
}

class Solution {
    var stack = Stack<Character>()
    func isValid(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        
        for item in s {
            if stack.isEmpty() {
                stack.push(item)
                continue
            } else { 
                if item == ")" && stack.top() == "(" ||
                 item == "]" && stack.top() == "[" ||
                 item == "}" && stack.top() == "{" {
                    stack.pop()
                } else {
                    stack.push(item)
                }
            }
        }
        return stack.isEmpty()
    }
}
