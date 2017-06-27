//
//  ViewController.swift
//  MyApp10
//
//  Created by iii on 2017/6/27.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func getImage(_ sender: Any) {
    
        DispatchQueue.global().async {
            self.fetchImage()
        }
    }
    
    @IBAction func testGet(_ sender: Any) {
        do {
            let url = URL(string: "http://10.2.1.134/brad.php")
            let source = try String(contentsOf: url!,
                                    encoding: String.Encoding.ascii)
            
            print(source)
            
        }catch {
            print("OKOKO")
            // 處理 try 的錯誤
            print(error)
        }

        
        
    }
    private func fetchImage(){
        do {
            let url = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4_0A-adKUPF53giGqliOVGW7P0ctXZ5g5BQil0AVZ4BHBhhK")
            if url != nil  {
                let data = try Data(contentsOf: url!)
                let img = UIImage(data: data)
                DispatchQueue.main.async {
                    self.imgView.image = img
                }
            }else {
                let img = UIImage(named: "user")
                DispatchQueue.main.async {
                    self.imgView.image = img
                }
            }
        }catch{
            let img = UIImage(named: "user")
            DispatchQueue.main.async {
                self.imgView.image = img
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let url = URL(string: "https://www.google.com/")
            let source = try String(contentsOf: url!,
                                    encoding: String.Encoding.ascii)
            
            //print(source)
            
        }catch {
            print("OKOKO")
            // 處理 try 的錯誤
            print(error)
        }
        
        
    }

}

