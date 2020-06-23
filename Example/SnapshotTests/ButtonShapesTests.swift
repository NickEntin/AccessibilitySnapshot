//
//  Copyright 2020 Square Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import AccessibilitySnapshot
import FBSnapshotTestCase

@testable import AccessibilitySnapshotDemo

final class ButtonShapesTests: SnapshotTestCase {

    @available(iOS 11, *)
    func testButtonShapes() {
        let view = View(frame: .init(x: 0, y: 0, width: 100, height: 100))
        SnapshotVerifyWithButtonShapes(view)
    }

}

// MARK: -

extension ButtonShapesTests {

    private final class View: UIView {

        // MARK: - Life Cycle

        override init(frame: CGRect) {
            super.init(frame: frame)

            addSubview(button)
        }

        @available(*, unavailable)
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        // MARK: - Private Properties

        private let button = Button()

    }

}
