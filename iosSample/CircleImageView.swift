//
//  CircleImageView.swift
//  iosSample
//
//  Created by apple on 30/09/20.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("moon")
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5).shadow(radius: 10 ))
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
