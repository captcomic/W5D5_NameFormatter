// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Names

class NameFormatterTests: XCTestCase {

  func test_invertName_GivenAnEmptyString_ShouldReturnEmptyString() {
    let inputName = ""
    let expectedOutput = ""
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenASingleName_ShouldReturnASingleName() {
    let inputName = "name"
    let expectedOutput = "name"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenASingleNameWithExtraSpaces_ShouldReturnASingleName() {
    let inputName = " name "
    let expectedOutput = "name"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenFirstNameAndLastName_ShouldReturnLastNameAndFirstName() {
    let inputName = "first last"
    let expectedOutput = "last, first"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenFirstNameAndLastNameWithExtraSpaces_ShouldReturnLastNameAndFirstName() {
    let inputName = " first last"
    let expectedOutput = "last, first"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenSingleHonorific_ShouldReturnEmptyString() {
    let inputName = "Dr."
    let expectedOutput = ""
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenSingleHonorificAndFirstName_ShouldReturnSingleHonorificAndFirstName() {
    let inputName = "Dr. first"
    let expectedOutput = "Dr. first"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenHonorificAndFirstNameAndLastName_ShouldReturnSingleHonorificAndLastNameAndFirstName() {
    let inputName = "Dr. first last"
    let expectedOutput = "Dr. last, first"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenHonorificAndFirstNameAndLastNameAndExtraSpaces_ShouldReturnSingleHonorificAndLastNameAndFirstName() {
    let inputName = " Dr. first last"
    let expectedOutput = "Dr. last, first"
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
}
