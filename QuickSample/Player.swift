//
//  Player.swift
//  QuickSample
//
//  Created by Marcilio Junior on 9/3/16.
//  Copyright © 2016 Digital Day. All rights reserved.
//

import Foundation

class Player {
    
    var hp: Int
    var defenseMode: Bool = false
    
    init() {
        hp = 100
    }
    
    func hit(player: Player) {
        player.hp -= (player.defenseMode ? 5 : 10)
    }
    
    func specialAttack(player: Player) {
        player.hp -= (player.defenseMode ? 25 : 50)
    }
    
    func block() {
        defenseMode = !defenseMode
    }
    
}
