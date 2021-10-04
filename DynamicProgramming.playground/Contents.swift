import UIKit

extension Int {
    
    //memoized version
    mutating func fibMemoized() -> Int {
        
        //builds array sequence
        func fibSequence(_ sequence: Array<Int> = [0, 1]) -> Array<Int> {
            
            var final = Array<Int>()
            
            //mutated copy
            var output = sequence
            
            let i: Int = output.count
            
            //set base condition - linear time O(n)
            if i == self {
                return output
            }
            
            let results: Int = output[i - 1] + output[i - 2]
            output.append(results)
            
            //set iteration
            final = fibSequence(output)
            return final
            
        }
        
        
        //calculate final product - constant time O(1)
        let results = fibSequence()
        let answer: Int = results[results.endIndex - 1] + results[results.endIndex - 2]
        return answer
        
    }
}


//class soluation {
//    
//    func climbStairs(_n: Int) -> Int {
//        
//    }
//}
