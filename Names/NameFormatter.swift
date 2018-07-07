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

import Foundation

class NameFormatter {
  
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  func inverted() -> String {
  
    // remove leading and trailing whitespaces
    let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)

    let fullNameArray = trimmedName.components(separatedBy: " ")
    
    
    switch fullNameArray.count {
    case 0:
      return ""
    case 1:
      if (fullNameArray[0] == "") {
        // empty string
        return ""
      } else if (fullNameArray[0].last! == ".") {
        // honorific only
        return ""
      } else {
        // first name only
        return fullNameArray[0]
      }
    case 2:
      // honorific and first name
      if (fullNameArray[0].last! == ".") {
        return "\(fullNameArray[0]) \(fullNameArray[1])"
      } else {
       return "\(fullNameArray[1]), \(fullNameArray[0])"
      }
    case 3:
      // honorific (assumed) and first name and last name
       return "\(fullNameArray[0]) \(fullNameArray[2]), \(fullNameArray[1])"
    default:
      return trimmedName
    }
    
  }
    
//    if name == "" {
//      return ""
//    }
    

    
//    if (fullNameArray.count == 1) {
//
//      // single honorific
//      if (fullNameArray[0].last! == ".") {
//        return ""
//      }
//    }

//    if (fullNameArray.count == 2) {
//
//      // check honorific
//      if (fullNameArray[0].last! == ".") {
//        return "\(fullNameArray[0]) \(fullNameArray[1])"
//      }
//
//      return "\(fullNameArray[1]), \(fullNameArray[0])"
//    }
    
    
//    if (fullNameArray.count == 3) {
//      // assume honorific
//
//    }
    
    
  
}
