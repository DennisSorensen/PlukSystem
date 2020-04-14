//
//  NumberBoxView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 14/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct NumberBoxView: View {
    var body: some View {
        
//        RoundedRectangle(cornerRadius: 5).frame(width: 52, height: 52)
        
        ZStack {
            Image(systemName: "cube.box")
                         .font(Font.system(size: 58))
                .foregroundColor(.brandBackgroundBorder)
            
            Image(systemName: "cube.box.fill")
                .font(Font.system(size: 51))
                .foregroundColor(.brandBackground)
        }
        
    }
}

struct NumberBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NumberBoxView()
                .previewLayout(.fixed(width: 80, height: 80))
                .previewDisplayName("View")
            
            NumberBoxView()
                .previewLayout(.fixed(width: 375, height: 80))
                .padding(.trailing, 300)
            .previewDisplayName("Table Cell Example")
        }
    }
}
