import UIKit

var str = "Hello, playground"

func sortCsvColumns(_ csv_data: String) -> String {
    
    var returnString: String = ""
    var results: [[String]] = []
    
    let rows = csv_data.components(separatedBy: "\n")
    
    for row in rows {
        let columns = row.components(separatedBy: ",")
        results.append(columns)
    }
    print(results)
    
    var sortedResults: [[String]] = []
    for result in results {
        let sorted = zip(results[0], result).sorted { $0 < $1 }
        let nextRow = sorted.map { $0.1 }
        sortedResults.append(nextRow)
    }
    
    print(sortedResults)
    
    for (resultIndex, sortedResult) in sortedResults.enumerated() {
        for (index, value) in sortedResult.enumerated() {
            if (index + 1) != sortedResult.count {
                returnString += (value + ",")
            } else {
                returnString += value
                if (resultIndex + 1) != sortedResults.count{
                    returnString += "\n"
                }
            }
        }
    }
    
    
    
//    print(results.count)
//    if results.count > 2 {
//        sorted2 = zip(results[0], results[2]).sorted { $0 < $1 }
//    }
//
//    let row1 = sorted.map { $0.0 }
//    let row2 = sorted.map { $0.1 }
//    let row3 = sorted2.map { $0.1 }
//
//    for (index, value) in row1.enumerated() {
//        if (index + 1) != row1.count {
//            returnString += (value + ",")
//        } else {
//            returnString += (value + "\n")
//        }
//    }
//    for (index, value) in row2.enumerated() {
//        if (index + 1) != row2.count {
//            returnString += (value + ",")
//        } else {
//            returnString += (value)
//            //if results.count > 2 {
//                returnString += "\n"
//            //}
//        }
//    }
//    for (index, value) in row3.enumerated() {
//        if (index + 1) != row3.count {
//            returnString += (value + ",")
//        } else {
//            returnString += (value)
//        }
//    }

    return returnString
}


sortCsvColumns("Beth,Charles,Danielle,Adam,Eric\n17945,10091,10088,3907,10132\n2,12,13,48,11")
