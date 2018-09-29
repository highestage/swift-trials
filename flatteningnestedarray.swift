import Foundation

// flattening nested array using recursion, with multiple data types - Int + String
func flattenArray(arr: [Any]) -> [Any] {
    var flatArray: [Any] = []
    for a in arr {
        print(a)
        if a is Int {
            print("element is int")
            flatArray.append(a)
        } else if a is String {
            print("element is string")
            flatArray.append(a)
        } else if a is [Any] {
            print("element is nested array")
            let recursionResult = flattenArray(arr: a as! [Any])
            for num in recursionResult {
                flatArray.append(num)
            }
        }
    }
    return flatArray
}

var result = flattenArray(arr: [1, [2], [3, ["abc"]]])
print(result)
