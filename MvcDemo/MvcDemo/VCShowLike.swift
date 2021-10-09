//
//  VCShowLike.swift
//  MvcDemo
//
//  Created by PIG on 2021/10/5.
//

import UIKit

class VCShowLike: UIViewController {
    
    @IBOutlet weak var lLike: UILabel!
    
    @IBOutlet weak var bLikePlusOne: UIButton!
    
    override func viewDidLoad() {
        bLikePlusOne.setTitle("喜歡", for: .normal);
        lLike.text = "喜歡: \(LikeCounter.shared().likes)";
        NotificationCenter.default.addObserver(self, selector: #selector(likePlusOne), name: NOTIFICATION_LIKE_PLUS_ONE, object: nil);
    }
    
    @objc
    func likePlusOne() {
        lLike.text = "喜歡: \(LikeCounter.shared().likes)";
    }
    
    @IBAction func touchPlus(_ sender: Any) {
        LikeCounter.shared().addLikeOne();
    }
    
    
}
