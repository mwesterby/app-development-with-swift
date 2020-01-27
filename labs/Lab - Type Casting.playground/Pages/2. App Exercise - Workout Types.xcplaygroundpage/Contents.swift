/*:
 ## App Exercise - Workout Types
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 You fitness tracking app may allow users to track different kinds of workouts. When architecting the app, you may decide to have a `Workout` base class from which other types of workout classes inherit. Below are three classes. `Workout` is the base class with `time` and `distance` properties, and `Run` and `Swim` are subclasses that add more specific properties to the `Workout` class. 
 
 Also provided is a `workouts` array that represents a log of past workouts. You'll use these classes and the array for the exercises below.
 */
class Workout {
    let time: Double
    let distance: Double
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {
    let cadence: Double
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {
    let stroke: String
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 80, time: 1200, distance: 4000),
    Swim(stroke: "Freestyle", time: 32.1, distance: 50),
    Swim(stroke: "Butterfly", time: 36.8, distance: 50),
    Swim(stroke: "Freestyle", time: 523.6, distance: 500),
    Run(cadence: 90, time: 358.9, distance: 1600)
]
/*:
 Write simple functions called `describeRun(runningWorkout:)` and `describeSwim(swimmingWorkout:)` that take a `Run` object and a `Swim` object, respectively. Neither should return values. Each function should print a description of the workout, including the run's cadence or the swim's stroke. Time is represented in seconds, distance is represented in meters, and cadence is represented in steps per minute.
 */


/*:
 Now loop through each workout in `workouts` and, using type casting, call either `describeRun(runningWorkout:)` or `describeSwim(swimmingWorkout:)` on each. Observe what is printed to the console.
 */


/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
