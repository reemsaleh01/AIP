//
//  ViewController.swift
//  AIP
//
//  Created by Reem Saleh on 09/04/1443 AH.
//

import UIKit

struct forismatic : Codable {
var quoteText : String
var quoteAuthor : String
var senderName : String
 
}
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getCharacters()
        // Do any additional setup after loading the view.
    }
    
    
    func getCharacters(){
        var urIComponents = URLComponents()
        
        urIComponents.scheme = "https"
    urIComponents.host = "api.forismatic.com"
    urIComponents.path = "/api/1.0/?method=getQuote&key=457653&format=json&lang=en"
        
   
    
  
    let urISession = URLSession.shared
    var urIRequest = URLRequest(url: urIComponents.url!)
        urIRequest.httpMethod = "GET"
        let task = urISession.dataTask(with: urIRequest) { (data:  Data?, response : URLResponse?, error:Error?) in
            if (error == nil){
                print(String(data: data!, encoding: .utf8))
                      
            }
                      
                      }
                      task.resume()
        }
                      
}


