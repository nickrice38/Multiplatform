//
//  CourseList.swift
//  Multiplatform
//
//  Created by Nick Rice on 01/02/2022.
//

import SwiftUI

struct CourseList: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else // macOS
        content
            .frame(minWidth: 800, minHeight: 600)
        #endif
    }
    var content: some View {
        List(0 ..< 5) { item in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
