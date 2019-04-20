import UIKit


func possibilities(_ word: String) -> Array<String> {
    
    var lettersArray:[String] = []
    var charactersArray:[Character] = []
    
    for character in word {
        charactersArray.append(character)
    }
    
    switch word {
    case ".":
        lettersArray.append("E")
        return lettersArray
    case "..":
        lettersArray.append("I")
        return lettersArray
    case ".-":
        lettersArray.append("A")
        return lettersArray
    case "...":
        lettersArray.append("S")
        return lettersArray
    case "..-":
        lettersArray.append("U")
        return lettersArray
    case ".-.":
        lettersArray.append("R")
        return lettersArray
    case ".--":
        lettersArray.append("W")
        return lettersArray
    case "-":
        lettersArray.append("T")
        return lettersArray
    case "-.":
        lettersArray.append("N")
        return lettersArray
    case "--":
        lettersArray.append("M")
        return lettersArray
    case "---":
        lettersArray.append("O")
        return lettersArray
    case "--.":
        lettersArray.append("G")
        return lettersArray
    case "-.-":
        lettersArray.append("K")
        return lettersArray
    case "-..":
        lettersArray.append("D")
        return lettersArray
    default:
       return determinePossibilities(word: charactersArray)
    }
}

func determinePossibilities(word: Array<Character>) -> [String] {
    
    var lettersArray:[String] = []
    var lettersArrayReturn:[String] = []
    
    for letter in word {
        lettersArray.append(String(letter))
    }
    
    if lettersArray.count == 1 {
        lettersArrayReturn.append("E")
        lettersArrayReturn.append("T")
    }
    if lettersArray.count == 2 {
        if lettersArray[0] == "?" && lettersArray[1] == "?"{
            lettersArrayReturn.append("I")
            lettersArrayReturn.append("A")
            lettersArrayReturn.append("N")
            lettersArrayReturn.append("M")
            
        }
        if lettersArray[0] == "-" && lettersArray[1] == "?"{
            lettersArrayReturn.append("N")
            lettersArrayReturn.append("M")
        }
        if lettersArray[0] == "?" && lettersArray[1] == "-"{
            lettersArrayReturn.append("A")
            lettersArrayReturn.append("M")
        }
        if lettersArray[0] == "?" && lettersArray[1] == "."{
            lettersArrayReturn.append("I")
            lettersArrayReturn.append("N")
        }
        if lettersArray[0] == "." && lettersArray[1] == "?"{
            lettersArrayReturn.append("I")
            lettersArrayReturn.append("A")
        }
    }
    
    if lettersArray.count == 3 {
        
        
        if lettersArray[0] == "?" {
            if lettersArray[1] == "."{
                if lettersArray[2] == "."{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("D")
                }
                if lettersArray[2] == "-"{
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("K")
                }
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("K")
                }
            }
            if lettersArray[1] == "-" {
                if lettersArray[2] == "."{
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("G")
                }
                if lettersArray[2] == "-"{
                    lettersArrayReturn.append("W")
                    lettersArrayReturn.append("O")
                }
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("W")
                    lettersArrayReturn.append("G")
                    lettersArrayReturn.append("O")
                }
            }
            if lettersArray[1] == "?" {
                if lettersArray[2] == "."{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("G")
                }
                if lettersArray[2] == "-"{
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("W")
                    lettersArrayReturn.append("K")
                    lettersArrayReturn.append("O")
                }
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("W")
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("K")
                    lettersArrayReturn.append("G")
                    lettersArrayReturn.append("O")
                }
            }
        }
        if lettersArray[0] == "." {
            if lettersArray[1] == "."{
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("U")
                }
            }
            if lettersArray[1] == "-" {
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("W")
                }
            }
            if lettersArray[1] == "?" {
                if lettersArray[2] == "."{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("R")
                }
                if lettersArray[2] == "-"{
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("W")
                }
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("S")
                    lettersArrayReturn.append("U")
                    lettersArrayReturn.append("R")
                    lettersArrayReturn.append("G")
                }
            }
        }
        if lettersArray[0] == "-" {
            if lettersArray[1] == "."{
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("K")
                }
            }
            if lettersArray[1] == "-" {
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("G")
                    lettersArrayReturn.append("O")
                }
            }
            if lettersArray[1] == "?" {
                if lettersArray[2] == "."{
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("G")
                }
                if lettersArray[2] == "-"{
                    lettersArrayReturn.append("K")
                    lettersArrayReturn.append("O")
                }
                if lettersArray[2] == "?"{
                    lettersArrayReturn.append("D")
                    lettersArrayReturn.append("K")
                    lettersArrayReturn.append("G")
                    lettersArrayReturn.append("O")
                }
            }
        }
    }
    return lettersArrayReturn
}

possibilities("-.?")
