func spinWords(in sentence: String) -> String {
    let arr = sentence.split(separator: " ")
    var preFinalArr: [String] = []
    var finalStr = ""

    for i in 0...arr.count-1 {
        if arr[i].count >= 5 {
            var charArr: [Character] = []
            for char in arr[i] {
                charArr.append(char)
            }
            var strToArr: String = ""
            for element in 0...charArr.reversed().count-1 {
                strToArr += String(charArr.reversed()[element])
            }
            preFinalArr.append(strToArr)
        } else {
            preFinalArr.append(String(arr[i]))
        }
    }
    for i in 0...preFinalArr.count-1 {
        if i == preFinalArr.count-1 {
            finalStr += preFinalArr[i]
        } else {
            finalStr += preFinalArr[i] + " "
        }
    }
return finalStr
}


