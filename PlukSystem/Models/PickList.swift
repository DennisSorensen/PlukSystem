//
//  PickList.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 27/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

class PickList: Identifiable, ObservableObject {
    public let id = UUID()
    public let salesOrder : SalesOrder
    @Published public var toBePicked = 0
    
    init(salesOrder: SalesOrder, toBePicked: Int) {
        self.salesOrder = salesOrder
        self.toBePicked = toBePicked
    }
}


//DEMO DATA
extension PickList {
    static let demoData = [
        PickList(salesOrder: SalesOrder(id: "4711"), toBePicked: 11),
        PickList(salesOrder: SalesOrder(id: "4712"), toBePicked: 1),
        PickList(salesOrder: SalesOrder(id: "4713"), toBePicked: 16),
        PickList(salesOrder: SalesOrder(id: "4714"), toBePicked: 5),
        PickList(salesOrder: SalesOrder(id: "4715"), toBePicked: 3),
        PickList(salesOrder: SalesOrder(id: "4716"), toBePicked: 141),
    ]
}
