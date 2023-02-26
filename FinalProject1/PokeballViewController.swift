//
//  PokeballViewController.swift
//  FinalProject1
//
//  Created by Syrup on 3/24/22.
//

import UIKit

class PokeballViewController: UIViewController {
    
    var sendItem:Item?
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemName.text = sendItem?.name
        itemDescription.text = sendItem?.desc
        itemImage.image = UIImage(named: (sendItem?.imageFile)!)
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
