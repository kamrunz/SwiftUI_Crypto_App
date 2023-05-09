//
//  HomeView.swift
//  CryptoApp
//
//  Created by Kamran Namazov on 27.12.22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    

    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                //top movers view
                TopMoversView(viewModel: viewModel)
                Divider()
                    .padding()
             
                AllCoinsView(viewModel: viewModel)
                
                
                //all coins view
            }
            .navigationTitle("Live Prices")
    
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
