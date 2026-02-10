///////////// 1. Opérations sur les Tableaux /////////////

import Foundation
// Initializing an empty array
var numbers = [Int]()


numbers += [1, 2, 3, 4, 5]

print(numbers)

numbers.removeFirst()

print(numbers)


for number in numbers {
    print(number)
}



///////////// 2. Manipulation des Tableaux /////////////

// Initializing an empty array

var colors = [String]()

colors += ["black", "white", "red", "Cyan", "Grey"]

colors[3] = "violet"

print("First:", colors.first ?? "None")
print("Last:", colors.last ?? "None")


///////////// 3. Création de Tuples /////////////

