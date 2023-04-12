class Solution {
https://leetcode.com/problems/count-and-say/
https://leetcode.com/NordZool/
  func countAndSay(_ n: Int) -> String {
    
    var resoult: String = "1"
    var newResoult: String
    
    for i in 1..<n {
        
        newResoult = ""
        var howMach: Int = 1
        for j in 0..<resoult.count - 1 {
            
            
            var firstId_j = resoult.index(resoult.startIndex, offsetBy: j)
            var secoundId_j = resoult.index(resoult.startIndex, offsetBy: 1+j)
            
            if resoult[firstId_j] != resoult[secoundId_j] {
                
                newResoult.append(String(howMach))
                newResoult.append(resoult[firstId_j])
                howMach = 0
            }
            
            howMach += 1
        }
        newResoult += String(howMach)
        newResoult += String(resoult[resoult.index(before: resoult.endIndex)])
        resoult = newResoult
        
    }
    
    return resoult
}
}
