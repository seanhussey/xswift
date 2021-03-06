// Foundation not needed

// Apple Swift version 2.0

struct Squares {
    
    var max = 1
    
    init (_ max:Int){
        if max > 0{
            self.max = max
        }
    }
    
    var squareOfSums:Int{
        let numbers = Array(1...self.max)
        let sum = numbers.reduce(0, combine: + )
        return sum * sum;
    }
    
    var sumOfSquares:Int{
        let numbers = Array(1...self.max)
        return numbers.map{ return $0*$0 }.reduce(0, combine: + )
    }
    
    var differenceOfSquares:Int{
        return squareOfSums - sumOfSquares
    }
}