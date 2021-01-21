//
//  Employee.swift
//  SwiftUI-ListView
//
//  Created by Haresh on 11/01/21.
//  Copyright © 2021 Haresh. All rights reserved.
//

import SwiftUI

struct Employee: Identifiable,Codable,Hashable {
    var id: Int
    var userId: String
    var jobTitleName: String
    var firstName: String
    var lastName: String
    var preferredFullName: String
    var region: String
    var phoneNumber: String
    var emailAddress: String
    var image: String
}


