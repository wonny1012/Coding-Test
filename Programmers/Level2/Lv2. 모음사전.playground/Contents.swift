import Foundation

func solution(_ word:String) -> Int {

    var words:[String] = ["A" ,"E","I", "O", "U"]
    var count = 0
    var finalCount = 0

    func dfs(plusString:String) {

        //값을 찾았으면 더 dfs 안돌아보고 리턴하기
        if finalCount != 0 {
            return
        }
        //result 값이 하나씩 올라가도록 해줌
        count += 1

        //찾고자하는 word를 찾았다면 count -> finalCount 넣어주기
        if plusString == word {
            finalCount = count
        }

        // words로 만들 수 있는 숫자 최대 count는 5
        if plusString.count == 5 {return}

        //words 모든 숫자를 AAAAA로 구성하기 위해서는 0..<words.count 해줘야함.
        //dfs는 매 순간의 시작이 i = 0 , A 부터 시작됨
        for i in 0..<words.count {
            dfs(plusString: plusString + words[i])
        }

    }

    dfs(plusString: "")

    // 시작값이 ""로 넣어주면서 count += 1 되었으니 빼주기
    return finalCount - 1
}
