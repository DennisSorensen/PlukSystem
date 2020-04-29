//
//  PickListView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 29/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct PickListView: View {
    
    let pickLists = PickList.demoData
    
    var body: some View {
        
        List(pickLists) { pickList in
            ChoosePickListViewCell(pickList: Binding.constant(pickList))
        }
    }
}

struct PickListView_Previews: PreviewProvider {
    static var previews: some View {
        PickListView()
    }
}
