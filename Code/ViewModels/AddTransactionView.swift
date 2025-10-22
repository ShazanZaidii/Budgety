//
//  AddTransactionView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import SwiftUI

struct AddTransactionView: View {
    var body: some View {
        VStack{
          Button("Add Transaction"){
              transactions.append(Transaction(amount: 40.0, type: .expense, date: Date(), category: "College", item: "Notebook"))
            }
        }
       
    }
}

#Preview {
    AddTransactionView()
}
