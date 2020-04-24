/*:
 ## App Exercise - Type Properties and Methods

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 In another exercise, you added a computed property representing the average mile time from a run. However, you may want to have a calculator of sorts that users can use before their run to find out what mile time they need to average in order to run a given distance in a given time. In this case it might be helpful to have a type method on `RunningWorkout` that can be accessed without having an instance of `RunningWorkout`.

 Add to `RunningWorkout` a type method `mileTimeFor(distance:time:)` where `distance` and `time` are both of type `Double`. This method should have a return value of type `Double`. The body of the method should calculate the average mile time needed to cover the passed in distance in the passed in time. Assume that distance is in meters and that one mile is 1600 meters.

 Call the method from outside of the struct and print the result to ensure that it works properly.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
}
/*:
 It may be helpful to have a few type properties on `RunningWorkout` representing unit conversions (i.e. meters to mile, feet to meters, etc.). Go back and add a type property for `meterInFeet` and assign it 3.28084. Then add a type property for `mileInMeters` and assign it 1600.0. Print both of these values below.
 */


/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 10 of 10
