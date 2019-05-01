import UIKit

// Convert to Los_Angelas,CA,USA
var str = "Los Angelas, CA, USA"

func separateStrings(startStr: String){
    let delimiter = ", "
    let tokens = startStr.components(separatedBy: delimiter)
    var finalStr = ""
    for (index, token) in tokens.enumerated() {
        let replace = token.replacingOccurrences(of: " ", with: "_")
        if index == (tokens.count - 1){
            finalStr = finalStr + replace
        } else {
            finalStr = finalStr + replace + ","
        }
        
    }
    print(finalStr)
}

separateStrings(startStr: str)
