//
//  Road.swift
//  HW2.10
//
//  Created by Anatoliy Khramchenko on 26.06.2021.
//

import Foundation

struct Road: Decodable {
    let resourceSets: [Resourses]
}

struct Resourses: Decodable {
    let resources: [Dist]
}

struct Dist: Decodable {
    let travelDistance: Float
}
