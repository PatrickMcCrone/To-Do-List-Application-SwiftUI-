//
//  ToDoListViewViewModel.swift
//  ToDoApp
//
//  Created by Patrick McCrone on 8/5/24.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items
// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    // Delete to do list item
    // Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
