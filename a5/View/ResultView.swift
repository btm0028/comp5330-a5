//
//  ResultView.swift
//  a5
//
//  Created by Brandon  Miller on 2/19/23.
//

import UIKit

class ResultView: UIViewController {
    
    
    var amount = 0
    var logic = Logic()


    @IBOutlet weak var cadlabel: UILabel!
    @IBOutlet weak var eurlabel: UILabel!
    @IBOutlet weak var mxnlabel: UILabel!
    @IBOutlet weak var cnylabel: UILabel!
    @IBOutlet weak var EURStackView: UIStackView!
    @IBOutlet weak var CADStackView: UIStackView!
    @IBOutlet weak var MXNStackView: UIStackView!
    @IBOutlet weak var CNYStackView: UIStackView!
    @IBOutlet weak var usdDisplay: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        usdDisplay.text = "USD: $ \(amount)"
        EURStackView.isHidden = !logic.EURON
        CADStackView.isHidden = !logic.CADON
        MXNStackView.isHidden = !logic.MXNON
        CNYStackView.isHidden = !logic.CNYON
        cadlabel.text = String(logic.getCAD(amount))
        eurlabel.text = String(logic.getEUR(amount))
        mxnlabel.text = String(logic.getMXN(amount))
        cnylabel.text = String(logic.getCNY(amount))
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: UIButton) {
    }
    
    
    /*
     @IBOutlet weak var CNYlabel: UILabel!
     @IBOutlet weak var MXNLabel: UILabel!
     @IBOutlet weak var EURlabel: UILabel!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
