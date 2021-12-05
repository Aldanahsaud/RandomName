//
//  LocalJson.swift
//  RandomClass
//
//  Created by AlDanah Aldohayan on 05/12/2021.
//

import Foundation

let person = """
{
    "name": "Huba",
    "age": 22,
    "full_name": "Huba Al"
}
"""
struct Person : Codable {
    var name: String
    var age: Int
    var fullName: String
}

let personData = Data(person.utf8)
let jsonDecoder = JSONDecoder()

func match() {
    jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
}


func fetchData(completion: @escaping([Person]) -> Void) {
    do {
        let decodedPerson = try jsonDecoder.decode(Person.self, from: personData)
        print(decodedPerson.name)
    } catch {
        print(error)
    }
}

