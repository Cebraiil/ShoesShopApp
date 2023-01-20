//
//  ContentView.swift
//  ShoppingApp
//
//  by Swiftui.app on 19.01.2023.
//
// INSTAGRAM : @swiftui.app
// GitHub: @swiftui-app
// FOLLOW FOR MORE!!

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }.padding()
            }
            .navigationTitle("Shoes Shop")
            .navigationBarItems(leading: Text("by Swiftui.app").font(.body).foregroundColor(.black.opacity(0.6)))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
