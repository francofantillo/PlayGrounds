
var coinValues = [5, 2, 3]
var coinsProp = [Int]()

func countChange(_ money: Int,_ coins: Array<Int>) -> Int {
    let test = findCombinations(coins, coins.count - 1, money)
    return test
}


func findCombinations(_ coins: Array<Int>,_ n: Int, _ total: Int)-> Int{
    
    
    if total == 0 {
        return 1
    }
    
    if total < 0 || n < 0{
        return 0
    }
    
    let incl = findCombinations(coins, n, total - coins[n])
    
    let excl = findCombinations(coins, n - 1, total)
    
    return incl + excl
}

countChange(10, coinValues)
