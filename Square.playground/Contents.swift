struct Square {
    var sideLength = 3 // 辺の長さ
    var area: Int {    // 面積
        sideLength * sideLength
    }
}
let square = Square()  // Square構造体からインスタンスを作る
print(square.area)     // デバッグエリアに 9 を表示する


/* 練習問題 6-1 */
struct Quadrangle {
    var oneSide = 4
    var twoSide = 5
    var area: Int {
        oneSide * twoSide
    }
}
let quadrangle = Quadrangle()
print(quadrangle.area)
