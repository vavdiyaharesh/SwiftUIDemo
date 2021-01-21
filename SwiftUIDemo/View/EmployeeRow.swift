//
//  EmployeeRow.swift
//  SwiftUI-ListView
//
//  Created by Haresh on 12/01/21.
//  Copyright © 2021 Haresh. All rights reserved.
//

import SwiftUI

struct EmployeeRow: View {
    var employee: Employee
    var body: some View {
        HStack {
            CircleImage(imageName: employee.image,size: 70).padding()
            Text(employee.preferredFullName)
                .bold()
                .font(.callout)
            Spacer()
        }.frame(height: 80)
    }
}

struct EmployeeRow_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeRow(employee: employeeData[0])
        .previewLayout(.fixed(width: 320, height: 80))
    }
    
}
