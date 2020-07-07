//
//  EmojiMemoryGame.swift
//  CS193P Memorize
//
//  Created by Parth Oza on 7/6/20.
//  Copyright © 2020 Parth Oza. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🙄", "🎃", "🍅", "🥱", "👅", "🍲", "🏄‍♂️", "🚙", "🚤", "🧽", "🦋"].shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { pairIndex in emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    
    
}
