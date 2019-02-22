import UIKit

extension Character {
    var isAscii: Bool {
        return unicodeScalars.first?.isASCII == true
    }
    var ascii: UInt32? {
        return isAscii ? unicodeScalars.first?.value : nil
    }
}

extension StringProtocol {
    var ascii: [UInt32] {
        return compactMap { $0.ascii }
    }
}

var rotatedWords = [
    
    "Pepe".ascii[0],
    "Retrogrado".ascii[0],
    "Suplantar".ascii[0],
    "Uruguay".ascii[0],
    "Xenofobia".ascii[0],
    "Asintota".ascii[0],
    "Barba".ascii[0],
    "Engendrar".ascii[0],
    "Karla".ascii[0],
    "Oracion".ascii[0]
]

// Element es el primer numero
// Subelement es el siguiente numero
for element in rotatedWords
{
    for (index, subelement) in rotatedWords.enumerated()
    {
        if element > subelement
        {
            print(index)
            break
        }
    }
    break
    
}
