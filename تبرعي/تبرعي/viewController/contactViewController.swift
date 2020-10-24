//
//  contactViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/22/20.
//

import UIKit

class contactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicked(_ sender: Any) {
       performSegue(withIdentifier: "details", sender: nil)
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
