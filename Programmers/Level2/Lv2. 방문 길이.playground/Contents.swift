import Foundation

func solution(_ dirs:String) -> Int {
    var visit = [[Int]]()
    var start = [0,0]
    var dx = 0
    var dy = 0
    var vect = [0,0,0,0]
    var count = 0
    for i in dirs {
        var check = true
        if i == "U" {
            if start[1] + 1 > 5 {
                dx = start[0]
                dy = start[1]
                check = false
            } else {
                dx = start[0]
                dy = start[1] + 1
            }
        } else if i == "R" {
            if start[0] + 1 > 5 {
                 dx = start[0]
                dy = start[1]
                 check = false
            } else {
                dx = start[0] + 1
                dy = start[1]
            }
        } else if i == "D" {
            if start[1] - 1 < -5 {
                 dx = start[0]
                dy = start[1]
                 check = false
            } else {
                dx = start[0]
                dy = start[1] - 1
            }
        } else {
            if start[0] - 1 < -5 {
                dx = start[0]
                dy = start[1]
                 check = false
            } else {
                dx = start[0] - 1
                dy = start[1]
            }
        }
        // print(i,dx,dy)
        //dx,dy값이랑 start값이랑 비교
        if dx == start[0] {
            if dy > start[1] {
                vect = [start[0],start[1],dx,dy]
            } else if check == true {
                vect = [dx,dy,start[0],start[1]]
            }
        } else if dx > start[0] {
            vect = [start[0],start[1],dx,dy]
        } else {
            vect = [dx,dy,start[0],start[1]]

        }
        if visit.contains(vect) {
                start[0] = dx
                start[1] = dy
            } else {
                visit.append(vect)
                start[0] = dx
                start[1] = dy
                count += 1
            }
    }
    return count
}



import Foundation

func solution(_ dirs:String) -> Int {
     //U = (0,1) D = (0,-1) R = (1,0) L = (0,-1)
    var x = [0, 0, 1, -1]
    var y = [1, -1, 0, 0]
    var visit = ["U","D","R","L"]
    var dirsArray = dirs.map{ String($0) }
    //좌표를 Set으로 정의 하면 추가 될때 같은 값은 없어진다.
    var vector = [0,0]
    var visitSet: [[Int]] = []
    
    for i in dirsArray {
        var dx = vector[0] + x[visit.firstIndex(of: i)!]
        var dy = vector[1] + y[visit.firstIndex(of: i)!]
        
        if dx <= 5 && dx >= -5 && dy <= 5 && dy >= -5 {
            var shift = [vector[0],vector[1],dx,dy]
            var shiftBack = [dx,dy,vector[0],vector[1]]
            vector[0] = dx
            vector[1] = dy
                   if !visitSet.contains(shift) && !visitSet.contains(shiftBack) {
            visitSet.append(shift)
                       visitSet.append(shiftBack)
        }
            
        }
    }
    return (visitSet.count)/2
}


