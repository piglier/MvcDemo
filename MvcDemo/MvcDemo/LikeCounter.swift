//
//  LikeCounter.swift
//  MvcDemo
//
//  Created by PIG on 2021/10/5.
//

import Foundation


class LikeCounter {
    
    var likes: Int = 0
    
    private static let instance = LikeCounter();

    public static func shared() -> LikeCounter {
        return instance;
    }
    
    func addLikeOne() {
        self.likes += 1;
        NotificationCenter.default.post(name: NOTIFICATION_LIKE_PLUS_ONE, object: self.likes)
    }
}
