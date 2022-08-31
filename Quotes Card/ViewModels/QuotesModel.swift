//
//  QuotesModel.swift
//  Quotes Card
//
//  Created by sunil kumar on 30/08/22.
//

import Foundation

class QuotesModel: ObservableObject{
    
    @Published var authors = [Author]()
    
    init(){
        
        authors = QuotesModel.getQuoteCardDetails()
    }
    
    
    static func getQuoteCardDetails() -> [Author]{
        
        let quotePath = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard quotePath != nil else{
            return [Author]()
        }
        
        let url = URL(fileURLWithPath: quotePath!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                var quoteData = try decoder.decode([Author].self, from: data)
              
                for index in 0..<quoteData.count{
                    quoteData[index].id = UUID()
                }
                
                return quoteData
                
            }catch{
                print(error)
            }
            
            
            
        }catch{
            print(error)
        }
        
        return [Author]()
        
    
    }
    
    
}
