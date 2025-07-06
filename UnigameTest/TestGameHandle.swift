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

final class TestGameHandle: GameHandle {
    static func makeModel() -> unigame.UnigameModel<TestGameHandle> {
        return UnigameModel(gameHandle: TestGameHandle())
    }

    weak var model: UnigameModel<TestGameHandle>?
    
    var helpHandle: any HelpHandle = NoHelpProvided()
    
    // Vary the following to explore scoring rules variations
    var initialScoring: unigame.Scoring = .Open
    
    var numPlayerRange = 1...4
    
    func reset() {
        // No-op
    }
    
    func stateChanged(_ data: [UInt8]) -> (any Error)? {
        // TODO
        return nil
    }
    
    func encodeState(duringSetup: Bool) -> [UInt8] {
        // TODO
        return []
    }
    
    var setupView: (any View)? = nil
    
    var playingView: any View = TestPlayingView()
    
    var appId = "testunigame"
}
