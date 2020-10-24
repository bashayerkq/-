//
//  charityTViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/18/20.
//

import UIKit

class charityTViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return charities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! charityTableViewCell

        // Configure the cell...
        cell.configureCell(charity: charities[indexPath.row])
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let charity = charities[indexPath.row]
        performSegue(withIdentifier: "details", sender: charity)
    }
    
    
    
    
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let charity = sender as! charity
         let vc = segue.destination as! charityViewController
         vc.charity = charity
         
         
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
 
}
