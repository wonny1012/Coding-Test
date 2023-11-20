import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var result = [1,1,1,1,1]
    var dx = [0,1]
    var dy = [1,0]
    var dm = 0
    var dn = 0
    var count = -1
    
    for room in places {
        count += 1
        var array = [[String]]()
        for i in 0...4 {
            array.append(room[i].map{ String($0)})
        }
        for n in 0...4 {
            for m in 0...4 {
                if array[n][m] == "P"  {
                    //1씩 이동 했을 때 P가 있으면 안됨
                    for num in 0...1 {
                        dn = n + dy[num]
                        dm = m + dx[num]
                        if dn < 5 && dm < 5 {
                            if array[dn][dm] == "P" {
                                result[count] = 0
                                break
                            }
                        }
                    }
                    //(1,1)씩 증가한 경우
                  if n+1 < 5 && m+1 < 5 {
                        if array[n+1][m+1] == "P" {
                            if array[n][m+1] != "X" || array[n+1][m] != "X" {
                                result[count] = 0
                                break
                            }
                        }
                    }
                    if 0 <= n-1  && m+1 < 5 {
                        if array[n-1][m+1] == "P" {
                            if array[n][m+1] != "X" || array[n-1][m] != "X" {
                                result[count] = 0
                                break
                            }
                        }
                    }
                    //각 2씩 증가 할때
                   if n+2 < 5 {
                       if array[n+2][m] == "P" {
                           if array[n+1][m] != "X" {
                               result[count] = 0
                                break
                           }
                       }
                   }
                if m+2 < 5 {
                        if array[n][m+2] == "P" {
                            if array[n][m+1] != "X"{
                                result[count] = 0
                                break
                            }
                        }
                    }
                }
                
            }
            
        }
    }
    return result
    
}
