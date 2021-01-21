//
//  Pets.swift
//  PetUS
//
//  Created by Gustavo Anjos on 21/01/21.
//

import Foundation

class Pet{
    var name: String
    var description: String
    var picture: String
    
    init(name: String, description: String, picture: String) {
        self.name = name
        self.description = description
        self.picture = picture
    }
}


extension Pet{
    static let all = [
        Pet(name: "Tom", description: "Adote um gato preto, ele deixará a sua vida muito mais colorida!", picture: "cat"),
        Pet(name: "Pandora", description: "Meu objetivo de vida é me transformar na pessoa maravilhosa que meu cachorro acha que eu sou!", picture: "dog"),
        Pet(name: "Tom", description: "Adote um gato preto, ele deixará a sua vida muito mais colorida!", picture: "cat"),
        Pet(name: "Pandora", description: "Meu objetivo de vida é me transformar na pessoa maravilhosa que meu cachorro acha que eu sou!", picture: "dog"),
        Pet(name: "Tom", description: "Adote um gato preto, ele deixará a sua vida muito mais colorida!", picture: "cat"),
        Pet(name: "Pandora", description: "Meu objetivo de vida é me transformar na pessoa maravilhosa que meu cachorro acha que eu sou!", picture: "dog"),
        Pet(name: "Tom", description: "Adote um gato preto, ele deixará a sua vida muito mais colorida!", picture: "cat"),
        Pet(name: "Pandora", description: "Meu objetivo de vida é me transformar na pessoa maravilhosa que meu cachorro acha que eu sou!", picture: "dog")
    ]
}
