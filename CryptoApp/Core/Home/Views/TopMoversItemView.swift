//
//  TopMoversItemView.swift
//  CryptoApp
//
//  Created by Kamran Namazov on 27.12.22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading,spacing: 4) {
            // image
            KFImage(URL(string: coin.image))
                .resizable().frame(width: 32,height: 32).foregroundColor(.orange)
                .padding(.bottom,8)
            
            //coin info
            HStack(spacing:2) {
                Text(coin.symbol.uppercased()).font(.caption).fontWeight(.bold)
                Text("\(coin.currentPrice.toCurrency())")
                    .font(.caption).foregroundColor(.gray)
            }
            
            //price percangte change
            
            Text("% \(coin.priceChangePercentage24H.toPercent())")
                .font(.subheadline)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth: 1)
        }
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
