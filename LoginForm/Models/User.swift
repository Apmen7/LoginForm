//
//  Person.swift
//  LoginForm
//
//  Created by Armen on 24.05.2023.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
     User(login: "User",
          password: "Password",
          person: Person.getPerson()
     )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let city: String
    let bio: String
    let age: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Armen",
               surname: "Babayan",
               photo: "ArmenBabayan",
               city: "Krasnodar",
               bio: "Здравствуйте. Меня зовут Армен, мне 28 лет. Я блогер и начинающий iOS разработчик😊\nВ прошлом у меня был опыт работы на Twitch и YouTube. В будущем я планирую делиться своими мыслями и советами уже из сферы разработки😎",
               age: 28
        )
    }
}
