//
//  PlayerSpec.swift
//  QuickSample
//
//  Created by Marcilio Junior on 9/3/16.
//  Copyright © 2016 Digital Day. All rights reserved.
//

import Quick
import Nimble
@testable import QuickSample

class PlayerSpec: QuickSpec {
    
    override func spec() {
        var player1: Player!
        var player2: Player!
        
        beforeEach { 
            player1 = Player()
            player2 = Player()
        }
        
        describe("Player Creation") { 
            context("player1 and player2 is created with full hp", { 
                let expectedHP = 100
                it("player1 should have hp equals 100") {
                    expect(player1.hp) == expectedHP
                }
                it("player2 should have hp equals 100") {
                    expect(player2.hp) == expectedHP
                }
            })
        }
        
        describe("Player fight") { 
            context("player1 hits player2", {
                it("player2 should lose 10hp after player1 hit") {
                    let expectedHP = player2.hp - 10
                    player1.hit(player2)
                    
                    expect(player2.hp) == expectedHP
                }
                
                it("player2 should lose 50hp after player1 special attack") {
                    let expectedHP = player2.hp - 50
                    player1.specialAttack(player2)
                    
                    expect(player2.hp) == expectedHP
                }
            })
            
            context("player1 hits player2 with defense mode enabled") {
                beforeEach {
                    player2.block()
                }
                
                it("player2 should lose 5hp after player1 hit") {
                    let expectedHP = player2.hp - (10/2)
                    player1.hit(player2)
                    
                    expect(player2.hp) == expectedHP
                }
                
                it("player2 should lose 25hp after been hitted by player 1 special move") {
                    let expectedHP = player2.hp - (50/2)
                    player1.specialAttack(player2)
                    
                    expect(player2.hp) == expectedHP
                }
            }

        }
        
        
    }
    
}
