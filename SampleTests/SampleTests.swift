//
//  SampleTests.swift
//  SampleTests
//
//  Created by Littlefox iOS Developer on 2022/03/07.
//

import XCTest
@testable import Sample

class SampleTests: XCTestCase {
    
    var sut: LFE_API!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.sut = LFE_API.process
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGetSchoolName(){

        let eception1 = self.expectation(description: "school name exception")
//        let eception2 = self.expectation(description: "school name exception")
        
        sut.call { result in
            let resultData = result as? ResultData
            XCTAssertNil(resultData)
            eception1.fulfill()
            
            print("result \(resultData)")
        }
        
        wait(for: [eception1], timeout: 2)
//
    }
}
