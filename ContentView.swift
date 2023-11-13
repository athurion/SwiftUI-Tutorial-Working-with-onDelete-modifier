//
//  ContentView.swift
//  SwiftUI Tutorial: Working with onDelete modifier
//
//  Created by Alvin Sosangyo on 11/13/23.
//


import SwiftUI

struct ContentView: View {

    @State private var weaponList = ["Sword", "Dagger", "Spear", "Axe", "Mace", "Staff", "Wand", "Bow", "Crossbow"]
    
    var body: some View {
        List {
            ForEach(weaponList, id: \.self) { index in
                Text(index)
            }
            .onDelete(perform: deleteItem)
        }
    }
    
    private func deleteItem(indexSet: IndexSet) {
        weaponList.remove(atOffsets: indexSet)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
