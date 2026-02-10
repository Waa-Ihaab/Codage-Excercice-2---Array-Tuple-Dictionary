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

import Foundation


// Initializing tuples

let coordonne2D = (x: 1, y: 5)


let point3D = (x: 3, y: 6, z: 10)


print("Coordonnée 2D : x = \(coordonne2D.x), y = \(coordonne2D.y)")

print("Point 3D : x = \(point3D.x), y = \(point3D.y), z = \(point3D.z)")





///////////// 4. Décomposition de Tuples /////////////

let personne = (nom: "Pape", age: 27, poste: "Membre du clan")

print("Nom :", personne.nom)
print("Âge :", personne.age)
print("Poste :", personne.poste)

let (nom, age, poste) = personne

print("Nom :", nom)
print("Âge :", age)
print("Poste :", poste)




///////////// 5. Bases des Dictionnaires /////////////
// Initializing an empty dictionary
var ages = [String: Int]()

ages["Pape"] = 27
ages["Romano"] = 32

ages["Pape"] = 28

ages.removeValue(forKey: "Romano")

for (name, age) in ages {
    print("\(name) : \(age) ans")
}









///////////// 6. Dictionnaires Avancés /////////////
var voiture: [String: String] = [
    "couleur": "Noir",
    "marque": "Mercedes",
    "année": "1988"
]

print("Marque :", voiture["marque"] ?? "None")

if let modele = voiture["modèle"] {
    print("Modèle :", modele)
} else {
    print("Ops, modele non trouvee")
}





///////////// 7. Tri des Tableaux /////////////

var numbers = [99, 5, 2, 21, 37, 5]

let ascending = numbers.sorted()
print("Ordre croissant :", ascending)

let descending = numbers.sorted(by: >)
print("Ordre décroissant :", descending)



///////////// 8. Structures Mixtes /////////////
var livres: [[String: String]] = []

// 2. Ajouter trois livres au tableau
livres.append([
    "titre": "1984",
    "auteur": "George Orwell",
    "année": "1949"
])

livres.append([
    "titre": "Le Petit Prince",
    "auteur": "Antoine de Saint-Exupéry",
    "année": "1943"
])


for livre in livres {
    let titre = livre["titre"] ?? "Titre inconnu"
    let auteur = livre["auteur"] ?? "Auteur inconnu"
    
    print("\(titre) - \(auteur)")
}








///////////// 9. Dictionnaires Complexes /////////////
var motos: [String: [String]] = [
    "Sportive": ["Yamaha R1", "Kawasaki Ninja ZX-10R", "Honda CBR1000RR"],
    "Cruiser": ["Harley-Davidson Iron 883", "Indian Scout", "Honda Rebel 500"],
    "Adventure": ["BMW GS 1250", "KTM Adventure 890", "Yamaha Ténéré 700"]
]

for (genre, motos) in motos {
    print("\nGenre : \(genre)")
    
    for moto in motos {
        print(" - \(moto)")
    }
}



///////////// 9. Dictionnaires Complexes /////////////
var produits: [String: Double] = [
    "Laptop": 1200.0,
    "Clavier": 45.0,
    "Souris": 25.0,
    "Écran": 300.0,
    "Casque": 80.0
]

func produitsMoinsChers(que limite: Double, dans dictionnaire: [String: Double]) -> [String: Double] {
    
    var resultat: [String: Double] = [:]
    
    for (produit, prix) in dictionnaire {
        if prix < limite {
            resultat[produit] = prix
        }
    }
    
    return resultat
}


let limitePrix = 100.0

let produitsFiltres = produitsMoinsChers(que: limitePrix, dans: produits)

// Affichage du résultat
print("Produits en dessous de \(limitePrix)€ :")

for (produit, prix) in produitsFiltres {
    print("- \(produit) : \(prix)€")
}
