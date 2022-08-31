//
//  QuoteMasterAllQuotes.swift
//  Quotes Card
//
//  Created by sunil kumar on 30/08/22.
//

import SwiftUI

struct QuoteMasterAllQuotes: View {
    
    let author:Author?
    
    var body: some View {
        
        if let author = author {
            
            VStack(alignment:.leading, spacing: 20.0) {
                Text(author.name)
                    .font(.title)
                    .fontWeight(.bold)
                    
                
                ForEach(author.quotesArray, id: \.self){ q in
             
                    Text(q)
                  
                }
                Spacer()
            }.padding()
        }
    
                
   
    }
}

struct QuoteMasterAllQuotes_Previews: PreviewProvider {
    static var previews: some View {
        QuoteMasterAllQuotes(author: Author.testData())
          
    }
}
