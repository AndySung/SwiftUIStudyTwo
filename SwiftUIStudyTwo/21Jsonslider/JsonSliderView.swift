//
//  JsonSliderView.swift
//  SwiftUIStudyTwo
//
//  Created by andy on 2024/7/4.
//

import SwiftUI

struct JsonSliderView: View {
    @ObservedObject var loanStore = LoanStore()
        
    @State private var filterEnabled = false
    @State private var maximumLoanAmount = 10000.0
    
    var body: some View {
            NavigationStack {
                VStack {
                    if filterEnabled {
                        LoanFilterView(amount: self.$maximumLoanAmount)
                            .transition(.opacity)
                    }
                    
                    List(loanStore.loans) { loan in
                        
                        LoanCellView(loan: loan)
                            .padding(.vertical, 5)
                    }
                }
              
                .navigationTitle("Kiva Loan")
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            withAnimation(.linear) {
                                self.filterEnabled.toggle()
                                self.loanStore.filterLoans(maxAmount: Int(self.maximumLoanAmount))
                            }
                        } label: {
                            Text("Filter")
                                .font(.subheadline)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .task {
                self.loanStore.fetchLatestLoans()
            }
        }
}

struct JsonSliderView_Previews: PreviewProvider {
    static var previews: some View {
        JsonSliderView()
    }
}
