//
//  ViewController.swift
//  HW2.10
//
//  Created by Anatoliy Khramchenko on 26.06.2021.
//

import UIKit

class ViewController: UIViewController {

    let APIKey = "Aj_ujgA_oxEyeNnCZNCWRSdg0FdN4E-EZ0o03GObIKjp8cBkzDH8J3tRxw_48DQk"
    let link = "https://dev.virtualearth.net/REST/V1/Routes/Driving?"
    
    @IBOutlet weak var city1: UITextField!
    @IBOutlet weak var city2: UITextField!
    
    @IBOutlet weak var res: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func go(_ sender: Any) {
        loadData()
    }
    
    func loadData() {
        let urlLink = link + "wp.0=" + city1.text! + "&wp.1=" + city2.text! + "&key=" + APIKey
        guard let url = URL(string: urlLink) else {return}
        DispatchQueue.main.async {
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let road = try JSONDecoder().decode(Road.self, from: data)
                        self.res.text = String(road.resourceSets[0].resources[0].travelDistance)
                    } catch let error {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    
}

