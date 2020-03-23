//
//  HouseListView.swift
//  TaipeiZoo
//
//  Created by jht on 2020/3/20.
//  Copyright © 2020 jht. All rights reserved.
//

import SwiftUI

struct HouseListView: View {
    @ObservedObject var publisher = Publisher()
    
    var body: some View {
        NavigationView {
            List(publisher.houses) { house in
                NavigationLink(destination: HouseView(house: house)) {
                    HouseListItemView(house: house)
                }
                .navigationBarTitle("台北動物園館區")
            }
        }
    }
}

struct HouseListView_Previews: PreviewProvider {
    static var previews: some View {
        HouseListView()
    }
}
