//
//  Card.swift
//  Quotes Card
//
//  Created by sunil kumar on 30/08/22.
//

import SwiftUI

struct Card: View {
    
    var author:Author
    
    var body: some View {
        
        ZStack {
            Image(author.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
           
                
            
            VStack(alignment:.leading) {
                if author.quotesArray.count > 0{
                    Text(author.quotesArray[0])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 3.0)
                    
                    Text("- " + author.name)
                        
                }
            }
            .padding(.horizontal)
            .foregroundColor(Color.white)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
        }
        
        .frame(width:.none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(author: Author.testData())
    }
}
