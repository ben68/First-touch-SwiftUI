//
//  HouseView.swift
//  TaipeiZoo
//
//  Created by jht on 2020/3/20.
//  Copyright © 2020 jht. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct HouseView: View {
    let house: HouseListItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                WebImage(url: URL(string: house.ePicURL))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                HStack {
                    Text(house.eName)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.all, 8)
                    Spacer()
                }
                .background(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.4))
            }
            HStack(alignment: .top) {
                Text(house.eCategory)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .padding(.all, 4.0)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(6.0)
                Text(house.eMemo)
                    .foregroundColor(.red)
                Spacer()
            }
            .padding(.horizontal)
            Text(house.eInfo)
                .font(.body)
                .foregroundColor(.secondary)
                .padding(8)
            Spacer()
        }
    }
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView(house: HouseListItemData().house)
    }
}
