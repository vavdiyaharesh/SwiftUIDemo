//
//  EmployeeDetail.swift
//  SwiftUI-ListView
//
//  Created by Haresh on 13/01/21.
//  Copyright © 2021 Haresh. All rights reserved.
//

import SwiftUI

struct EmployeeDetail: View {
    var employee: Employee

    var body: some View {
        VStack {
            
            CircleImage(imageName: employee.image, size: 120).padding()
            Text(employee.preferredFullName)
                .font(.title)
            Divider()
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text("Job Title")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                    Text(employee.jobTitleName)
                        .font(.subheadline)
                }.padding()
                HStack(alignment: .top) {
                    Text("Email Address")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                    Text(employee.emailAddress)
                        .font(.subheadline)
                }.padding()
                HStack(alignment: .top) {
                    Text("Phone Number")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                    Text(employee.phoneNumber)
                        .font(.subheadline)
                }.padding()
                HStack(alignment: .top) {
                    Text("Region")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                    Text(employee.region)
                        .font(.subheadline)
                }.padding()
            }
            Spacer()
        }
        .navigationBarTitle(Text(verbatim: employee.userId), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeDetail(employee: employeeData[0])
    }
}
