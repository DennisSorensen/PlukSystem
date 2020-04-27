//
//  NumberBoxView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 14/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct NumberBoxView: View {
    
    @Binding var numberOfProducts : Int
    
    var body: some View {
        
        let numberText = Binding<String> (
            get: {
                if self.numberOfProducts == 0 {
                    return ""
                }
                return String(self.numberOfProducts)
        }, set: {
            //Do nothing
            print("BadgeString \($0)")
        }
        )
        
        
        return ZStack {
            Image(systemName: "cube.box")
                         .font(Font.system(size: 58))
                .foregroundColor(.brandBackgroundBorder)
            
            Image(systemName: "cube.box.fill")
                .font(Font.system(size: 51))
                .foregroundColor(.brandBackground)
            
            BadgeView(badgeText: numberText)
        }
        
    }
}

struct NumberBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NumberBoxView(numberOfProducts: .constant(4711))
                .previewLayout(.fixed(width: 80, height: 80))
                .previewDisplayName("View")
            
            NumberBoxView(numberOfProducts: .constant(4712))
                .previewLayout(.fixed(width: 375, height: 80))
                .padding(.trailing, 300)
            .previewDisplayName("Table Cell Example")
        }
    }
}
