//
//  questionViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/18/20.
//

import UIKit

class questionViewController: UIViewController {
    var QnA = QnAs
    var count = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!
    @IBOutlet weak var answer3: UILabel!
    
    
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Qconfigure()
        
        // Do any additional setup after loading the view.
    }
    func Qconfigure(){
        questionLabel.text = QnA[count].question
        answer1.text = QnA[count].answer[0]
        answer2.text = QnA[count].answer[1]
        answer3.text = QnA[count].answer[2]
    }
     // MARK: - Navigation
     @IBAction func next(_ sender: Any) {
        
        if count < QnA.count-1{
            count += 1
            Qconfigure()
           
            
        }else{
            print("go")
            performSegue(withIdentifier: "details", sender: nil)
        }
     }
     
    @IBAction func checkBoxs(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(named: "unchecked"){

            sender.setImage(UIImage(named: "Checked"), for: .normal)

            }else{

                sender.setImage(UIImage(named: "unchecked"), for: .normal)
            }

    }
    
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
