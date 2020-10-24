//
//  eventsViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/22/20.
//

import UIKit

class eventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let images: [UIImage] = [
        UIImage(named: "event4")!,
        UIImage(named: "event3")!,
        UIImage(named: "event2")!,
        UIImage(named: "event1")!
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
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

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.eventImg.image = images[indexPath.item]
        cell.design()
        
        return cell
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = (collectionView.frame.size.width - 160)
        
        return CGSize(width: size, height: size)
    }

    
    
}
extension UIView{
    func design(){
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2.0
    }
}
