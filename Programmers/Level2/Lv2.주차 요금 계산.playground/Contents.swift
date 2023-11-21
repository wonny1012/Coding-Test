import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var arrayAll = [[String]]()
    var result = [Int]()
    var carNumArray = [String]()
    //차 번호 정렬 및 값 집어넣기
    for i in records {
        var compo = i.components(separatedBy: " ")
        arrayAll.append(compo)
        var number = compo[1]
        if !carNumArray.contains(number) {
            carNumArray.append(number)
        }
    }
    carNumArray = carNumArray.sorted(by : <)
    
    var nomalTime = fees[0]
    var nomalMoney = fees[1]
    var timeUnit = fees[2]
    var moneyUnit = fees[3]
    
    //차량 번호만큼 돌리기
    for i in carNumArray {
        var carNum = i
        //시간 따로 떼어 내기
        var timeArray = arrayAll.filter{ $0[1] == carNum }
        var time = 0
        //시간을 덜 걸리게 하기 위해서 해당 차량 값 제거
        arrayAll = arrayAll.filter{ $0[1] != carNum }
        //OUT이 없는 경우 값을 넣어줌
        if timeArray.count % 2 != 0 {
            timeArray.append(["23:59"])
        }
        for i in 1...Int(timeArray.count/2) {
            var inTime = timeArray[2*i - 2][0]
            var outTime = timeArray[2*i - 1][0]
            time += covertTimeToMinutes(outTime) - covertTimeToMinutes(inTime)
        }
        //정산
        if time < nomalTime {
            result.append(nomalMoney)
        } else {
            result.append(nomalMoney + Int(ceil(Double(time - nomalTime)/Double(timeUnit))) * moneyUnit)
        }
    }
    
    return result
}

func covertTimeToMinutes(_ time: String) -> Int {
    var components = time.components(separatedBy: ":")
    if var hours = Int(components[0]), var minutes = Int(components[1]) {
        return hours*60 + minutes
    }
    return 0
}
