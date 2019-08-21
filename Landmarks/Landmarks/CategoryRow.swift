//
//  CategoryRow.swift
//  Landmarks
//
//  Created by 岩永 彩里 on 2019/08/21.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            ForEach(self.items) { landmark in
                Text(landmark.name)
            }
        }
    }
}

#if DEBUG
struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(3))
        )
    }
}
#endif
