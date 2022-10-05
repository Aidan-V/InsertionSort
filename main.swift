var sortStrings = [String]()

func readLine() -> [String] {
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            sortStrings.append(line!)
        }
    } while line != nil
    return sortStrings
}

func insertionSort(sortStrings: [String]) -> [String] {

    var sortingIntegers = readLine()

    for i in 1..<sortingIntegers.count {
        var mainArr = i
        while mainArr > 0 && sortingIntegers[mainArr - 1] > sortingIntegers[mainArr] { 
            let tmp = sortingIntegers[mainArr]
            sortingIntegers[mainArr] = sortingIntegers[mainArr - 1]
            sortingIntegers[mainArr - 1] = tmp
            mainArr = mainArr - 1
        }
    }
    return sortingIntegers
}
let sortedIntegers = insertionSort(sortStrings: sortStrings)

for x in sortedIntegers {
    print(x)
} 
