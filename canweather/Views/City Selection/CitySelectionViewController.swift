//
//  CitySelectionViewController.swift
//  canweather
//
//  Created by Mohammed Al-Dahleh on 2019-05-29.
//  Copyright © 2019 Codeovo Software Ltd. All rights reserved.
//

import UIKit

class CitySelectionViewController: UIViewController {
    @IBOutlet weak var cityTableView: UITableView!
    
    let client = WeatherClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
