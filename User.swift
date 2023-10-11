//
//  User.swift
//  myInfoApp
//
//  Created by Roman on 11.10.23.
//

import Foundation

struct User {
    
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "Roman",
            password: "11",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let job: String
    let bio: String
    let photo: String
    
    static func getPerson() -> Person {
        Person(
            name: "Роман",
            surname: "Кондрашов",
            age: 35,
            job: "Amazon",
            bio: """
        Родился в Мурманске , жил во многих городах России.
        Самые любимые это Москва и Сочи. У меня два высших образования, но работал я большую часть времени на горнолыжных курортах инструктором по сноуборду и горным лыжам. Есть семья - жена и сын Лева , несколько лет мы живем в Германии, в Берлине. Здесь нет гор) и я решил осваивать разработку. Мне очень нравится , хотя бывает оч тяжело. Я был на прошлом потоке и ушел на первом модуле , потом собрался духом и вернулся.В этот раз до конца)
        
        """,
            photo: "romaApp"
        )
    }
}
