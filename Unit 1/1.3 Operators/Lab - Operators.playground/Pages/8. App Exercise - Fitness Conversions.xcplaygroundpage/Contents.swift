/*:
 ## App Exercise - Converting Types

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 If you completed the Fitness Calculations exercise, you calculated the percent of the daily step goal that a user has achieved. However, you did this by having `steps` be of type `Double`. But you can't really track a partial step, so `steps` should probably be of type `Int`. Go ahead and declare `steps` as type `Int` and give it a value between 500 and 6,000. Then declare `goal` as type `Int` and set it equal to 10,000.

 Now create a constant `percentOfGoal` of type `Double` that equals the percent of the goal that has been reached so far. You'll need to convert your constants of type `Int` to be of type `Double` in your calculation.
 */
let steps: Int = 4_342
let goal: Int = 10_000

let percentOfGoal: Double = (Double(steps) / Double(goal)) * 100
print(percentOfGoal)
/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 8 of 8
