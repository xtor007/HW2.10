//
//  Road.swift
//  HW2.10
//
//  Created by Anatoliy Khramchenko on 26.06.2021.
//

import Foundation

struct Road {
    let resoursesSets: [Resourses]
}

struct Resourses {
    let resourses: [Dist]
}

struct Dist {
    let travelDistance: Float
}
