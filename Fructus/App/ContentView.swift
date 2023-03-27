//
//  ContentView.swift
//  Fructus
//
//  Created by user219285 on 3/26/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }//List
            .navigationTitle("Fruits")
            .navigationBarItems(
                    trailing: Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                ) //navigationBarItems
        } //navigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
