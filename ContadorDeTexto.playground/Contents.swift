import UIKit


func contaLetras(texto: String) -> Int {
   
    let totalDeCaractereEspaco = texto.count
    let totalDeEspaco = texto.reduce(0) { $1.isWhitespace && !$1.isNewline ? $0 + 1 : $0 }
    let totalDeCaracter = totalDeCaractereEspaco - totalDeEspaco
    return totalDeCaracter
    
    
}

func contaVogalEConsoante(texto:String) -> (Int, Int) {
    
    let vogal = CharacterSet(charactersIn: "aeiou")
    let consoante = CharacterSet.letters.subtracting(vogal)
    
    
    var numeroDeVogal = 0
    var numeroDeConsoante = 0
    
    texto.forEach { (Character) in
        let set = CharacterSet(charactersIn: String(Character))
        if set.isSubset(of: vogal) { numeroDeVogal += 1 }
        if set.isSubset(of: consoante) { numeroDeConsoante += 1 }
        
    }
    return (numeroDeVogal, numeroDeConsoante)
    
}

func contaPalavras(tesxto: String) -> Int {
    
    let chararacterSet = CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters)
    let components = tesxto.components(separatedBy: chararacterSet)
    let words = components.filter { !$0.isEmpty }
    return words.count
    
    
}



    








       
