//
//  ObservableObjectAndStateObject.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 30/3/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        fetchFruits()
    }
    
    func fetchFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 5)
        let fruit3 = FruitModel(name: "Watermelon", count: 8)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModel: View {
    // StateObject -> use this on creation / init
    // ObservedObject -> use this on subviews
    
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle(Text("Fruit List"))
            .navigationBarItems(
                trailing: NavigationLink(destination: RandomScreen(), label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                })
            )
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
        }
    }
}

struct ObservableObjectAndStateObject_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}
