//
//  FooView.swift
//  MatchGeometry-SwiftUI
//
//  Created by Mitya Kim on 7/26/22.
//

import SwiftUI

struct FooView: View {
    
    @State private var isSwitched: Bool = false
    @Namespace private var ns
    
    var body: some View {
        HStack {
            
            if !isSwitched {
                Circle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "animation", in: ns)
            }
            
            Spacer()
            
            Button {
                withAnimation {
                    isSwitched.toggle()
                }
            } label: {
                Text("Switch")
            }
            
            Spacer()
            
            if isSwitched {
                Circle()
                    .fill(.yellow)
                    .matchedGeometryEffect(id: "animation", in: ns)
            }
        }
    }
}

struct FooView_Previews: PreviewProvider {
    static var previews: some View {
        FooView()
    }
}
