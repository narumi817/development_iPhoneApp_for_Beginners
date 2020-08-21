print(1 + 1)
print(5 - 3)
print(3 * 3)
print(6 / 2)
print(7 % 3)

// 地球の体積を計算
print(4 / 3 * 3.14 * 6378 * 6378 * 6378)

/* 練習問題 3-1 */
var x = 3
print(x * x)

/* 練習問題 3-2 */
var sum = 0
for num in 1...100 {
    sum += num
}
print(sum)

/* 練習問題 4-1 */
var bodyTemp: Double = 36
bodyTemp = 3.6

/* 練習問題 4-2 */
var scores = [95, 70, 80]
var scoreSum = 0
for score in scores {
    scoreSum += score
}
print(scoreSum)

/* 練習問題 4-3 */
var scoreMap = ["国語" : 95, "数学" : 70, "英語" : 80]
scoreMap["数学"] = 100

/* 練習問題 4-4 */
func calcSquareArea(sideLength: Double) {
    print(sideLength * sideLength)
}
calcSquareArea(sideLength: 3)
