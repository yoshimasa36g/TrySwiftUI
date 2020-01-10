//
//  UsersAPITests.swift
//  TrySwiftUITests
//
//  Created by Yoshimasa Aoki on 2019/12/26.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import XCTest
@testable import TrySwiftUI

final class UsersAPITests: XCTestCase {
    func testFetchUsers_ShouldBeAbleToFetchUsers() {
        let api = UserDownloader()
        let expectation = XCTestExpectation(description: "fetch users")
        api.fetchUsers(
            onSuccess: { users in
                XCTAssertEqual(20, users.count)
                expectation.fulfill()
            },
            onFailure: { error in
                XCTFail(error.localizedDescription)
                expectation.fulfill()
            })
        _ = XCTWaiter.wait(for: [expectation], timeout: 5.0)
    }
}
