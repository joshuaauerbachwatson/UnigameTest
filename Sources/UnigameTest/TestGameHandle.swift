/**
 * Copyright (c) 2021-present, Joshua Auerbach
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import unigame
import SwiftUI

public final class TestGameHandle: GameHandle {
    public static func makeModel() -> unigame.UnigameModel<TestGameHandle> {
        return UnigameModel(gameHandle: TestGameHandle())
    }

    public weak var model: UnigameModel<TestGameHandle>?
    
    public var helpHandle: any HelpHandle = NoHelpProvided()
    
    // Vary the following to explore scoring rules variations
    public var initialScoring: unigame.Scoring = .Open
    
    public var numPlayerRange = 1...4
    
    public func reset() {
        // No-op
    }
    
    public func stateChanged(_ data: [UInt8]) -> (any Error)? {
        // TODO
        return nil
    }
    
    public func encodeState(duringSetup: Bool) -> [UInt8] {
        // TODO
        return []
    }
    
    public var setupView: (any View)? = nil
    
    public var playingView: any View = TestPlayingView()
    
    public var gameId = "testunigame"
    
    public var gameName = "Test Unigame"
}
