import UIKit

// Desafio Algoritimo contador de texto

func conntadorDeTexto(texto: String) -> ( Int,  Int, Int, Int)  {
    
    let totalDeCaractereEspaco = texto.count
    let totalDeEspaco = texto.reduce(0) { $1.isWhitespace && !$1.isNewline ? $0 + 1 : $0 }
    let totalDeCaracter = totalDeCaractereEspaco - totalDeEspaco
    
    let chararacterSet = CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters)
    let components = texto.components(separatedBy: chararacterSet)
    let words = components.filter { !$0.isEmpty }
    let wordsTotal = words.count
    

    
    let vogal = CharacterSet(charactersIn: "aeiou")
    let consoante = CharacterSet.letters.subtracting(vogal)
    
    
    var numeroDeVogal = 0
    var numeroDeConsoante = 0
    
    texto.forEach { (Character) in
        let set = CharacterSet(charactersIn: String(Character))
        if set.isSubset(of: vogal) { numeroDeVogal += 1 }
        if set.isSubset(of: consoante) { numeroDeConsoante += 1 }
    }
        
    
    return ( totalDeCaracter,numeroDeVogal, numeroDeConsoante, wordsTotal)
    
}

conntadorDeTexto(texto: "Desafio manipulação string")
    

    
    




    








       
