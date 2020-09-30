//
//  DetailCard.swift
//  iosSample
//
//  Created by apple on 30/09/20.
//

import SwiftUI

struct DetailCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Joshua tree national park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }.padding()
    }
}

struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        DetailCard()
    }
}
