//
//  charityViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/18/20.
//

import UIKit

class charityViewController: UIViewController {
    
    var charity: charity!
    
    
    @IBOutlet weak var charityNameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }
    func configureView(){
        charityNameLabel.text = charity.name
        infoLabel.text = charity.info
        
    }

    @IBAction func tapped(_ sender: Any) {
        performSegue(withIdentifier: "details", sender: nil)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
