//
//  HouseListItemView.swift
//  TaipeiZoo
//
//  Created by jht on 2020/3/20.
//  Copyright © 2020 jht. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct HouseListItemView: View {
    let house: HouseListItem
    var body: some View {
        HStack {
            WebImage(url: URL(string: house.ePicURL))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .transition(.fade)
                .frame(width: 90, height: 90, alignment: .center)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(house.eName)
                    .font(.headline)
                    .lineLimit(1)
                    .padding(.bottom, 8)
                Text(house.eInfo)
                    .font(.body)
                    .foregroundColor(Color.secondary)
                    .lineLimit(2)
            }
        }
    }
}

//struct HouseListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        HouseListItemView()
//    }
//}
