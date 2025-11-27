//
//  MyListViewModel.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct MyList: Identifiable, Equatable, Hashable {
    let id: UUID
    var title: String
    var itemCount: Int
    var imageName: String
}

final class MyListViewModel: ObservableObject {
    @Published var lists: [MyList] = [
        MyList(id: UUID(), title: "SALA DE ESTAR", itemCount: 3, imageName: "livingroom")
    ]

    @Published var isEditing: Bool = false

    func createList(withTitle title: String) {

        let trimmedTitle = title.trimmingCharacters(in: .whitespacesAndNewlines)

        let safeTitle = trimmedTitle.isEmpty ? "Lista Sem Título" : trimmedTitle

        let new = MyList(id: UUID(), title: safeTitle, itemCount: 0, imageName: "livingroom")
        lists.append(new)
    }

    func delete(_ list: MyList) {
        lists.removeAll { $0.id == list.id }
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}
