//
//  EmployeeList.swift
//  SwiftUI-ListView
//
//  Created by Haresh on 12/01/21.
//  Copyright © 2021 Haresh. All rights reserved.
//

import SwiftUI

struct EmployeeList: View {
    var body: some View {
        NavigationView {
            List(employeeData) { employee in
                
               NavigationLink(destination: EmployeeDetail(employee: employee)) {
                EmployeeRow(employee: employee)
                }
            }.navigationBarTitle(Text("Team Members"))
        }
    }
}

struct EmployeeList_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeList()
    }
}
