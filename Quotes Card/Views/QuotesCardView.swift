//
//  QuotesCardView.swift
//  Quotes Card
//
//  Created by sunil kumar on 30/08/22.
//

import SwiftUI

struct QuotesCardView: View {
    
    @ObservedObject var model = QuotesModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                VStack(spacing:20) {
                    ForEach(model.authors){ a in
                        
                        NavigationLink {
                            QuoteMasterAllQuotes(author: a)
                        } label: {
                            Card(author: a)
                        }

                    }
                }
                
            }.navigationBarTitle("Quotes")
            
         
        }
      
        
        
        
    }
}

struct QuotesCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesCardView()
    }
}
