//
//  PickListView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 29/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct PickListView: View {
    
    @State private var pickLists : [PickList] = PickList.demoData
    
    var picklistData : [PickList]
    
    init() {
        self.picklistData = PickList.demoData
    }
    
    var body: some View {
        
        List{
            //snyder ved at løbe genne array og bruge index i stedet
            ForEach(0..<pickLists.count) {ix in
                //Når jeg står her har jeg fat i min picklist
                //Text("\(self.pickLists[ix].toBePicked)")
                //Laver en inline binding
                ChoosePickListViewCell(pickList: Binding(get: {
                    return self .pickLists[ix]
                }, set: { (newValue) in
                    return self.pickLists[ix] = newValue
                }))
            }
        }
        //        List(pickLists) { pickList in
        //            ChoosePickListViewCell(pickList: Binding.constant(pickList))
        //        }
    }
}

struct PickListView_Previews: PreviewProvider {
    static var previews: some View {
        PickListView()
    }
}
