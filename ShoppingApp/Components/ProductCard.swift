//
//  ProductCard.swift
//  ShoppingApp
//
//  by Swiftui.app on 19.01.2023.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product

    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,height: 60,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(6)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 1)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .background(.black.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding(10)
                    .padding(.top, 15)
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
