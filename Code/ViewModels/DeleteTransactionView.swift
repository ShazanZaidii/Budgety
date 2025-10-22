//
//  DeleteTransactionView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import SwiftUI

struct DeleteTransactionView: View {
    var body: some View {
        Button("Remove Expense", action: {
            transactions.removeLast()
        })
    }
}

#Preview {
    DeleteTransactionView()
}
