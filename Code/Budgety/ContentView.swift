//
//  ContentView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//
// Note:
// 1. The comments are marked with a number, you can find the details about it in Code/Refractored/Comments
// 2. Original Copies of Refractored Code are stored at Code/Refractored/FromContentView

import SwiftUI



struct ContentView: View {
    var currentBalance: Double = getBalance
    var currentIncome: Double {
        getIncome()
    }
    var currentExpense: Double {
        getExpense()
    }
    // Comment #2
    fileprivate func BalanceView() -> some View {
        ZStack{
            // Box
            RoundedRectangle(cornerRadius: 8).fill(Color.primarylightgreen).padding(.horizontal).frame(height: 180)
            
            // Balance
            VStack{
                VStack(alignment: .leading, spacing: 8){
                    HStack{
                        VStack{
                            Text("Balance").font(.system(size: 14, weight: .semibold)).foregroundStyle(Color.white)
                            Text("\(currentBalance, specifier: "%.2f")")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }
                    }}
                HStack{
                    VStack{
                        Text("Income").foregroundStyle(Color.white)
                        Text("\(currentIncome, specifier: "%.2f")").font(.title2).foregroundStyle(.white)
                    }
                    Spacer()
                    
                    VStack{
                        Text("Expense").foregroundStyle(Color.white)
                        Text("\(currentExpense, specifier: "%.2f")").font(.title2).foregroundStyle(.white)
                    }
                    
                    
                }.padding(.horizontal, 25).padding(.top, 10)
            }
            
            
            
        }
    }
    
    
    var body: some View {
        NavigationStack{
            
            BalanceView()
            VStack {
                HStack{
                    Text("Payment History").font(.system(size: 18, weight: .semibold))
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "line.3.horizontal").font(.system(size: 18, weight: .semibold)).foregroundStyle(Color.black)
                    })
                    
                }.padding(.horizontal)
                
                List{
                    ForEach(transactions){ transaction in
                        TransactionRow(transaction: transaction)
                        // Comment - #1
                        
                    }
                }.scrollContentBackground(.hidden)
            }
        }
    }}

struct TransactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife.circle")
                Text(transaction.item)
                Spacer()
                Text(transaction.type == .income ? "+\(transaction.displayAmount)" : "- \(transaction.displayAmount)")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(transaction.type == .expense ? Color.black : Color.green)
            }
            HStack {
                Text(transaction.type == .income ? "Recieved on \(transaction.date.shortStyle)" : "Paid On \(transaction.date.shortStyle)")
                    .font(.system(size: 14, weight: .light))
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
