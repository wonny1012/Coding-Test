func solution(_ msg:String) -> [Int] {
    //사전으로 각 단어와 색인번호를 적어준다.
    var dict = ["A":1,"B":2,"C":3,"D":4,"E":5,"F":6,"G":7,"H":8,"I":9,"J":10,"K":11,"L":12,"M":13,"N":14,"O":15,"P":16,"Q":17,"R":18,"S":19,"T":20,"U":21,"V":22,"W":23,"X":24,"Y":25,"Z":26]
    var dictnumber = 26
    var str = msg.map { String($0) }
    var qeue:[Int] = []
    while !str.isEmpty {
        var first = str.removeFirst()
        if str.count == 0 {
            qeue.append(dict[first]!)
        } else {
            while !str.isEmpty {
                var str2 = first + str[0]
                if dict.keys.contains(str2) {
                    first = str2
                    str.remove(at:0)
                    if str.count == 0 {
                        qeue.append(dict[first]!)
                    }
                } else {
                    dictnumber += 1
                    dict[str2] = dictnumber
                    qeue.append(dict[first]!)
                    break
                }
            }
        }
    }
    
    return qeue
}

solution("TOBEORNOTTOBEORTOBEORNOT")
