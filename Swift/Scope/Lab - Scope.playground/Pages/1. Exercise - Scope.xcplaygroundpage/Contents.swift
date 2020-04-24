/*:
 ## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
*/
for i in 0..<10 {
    var foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")


/*:
 Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
 */
var x = 10
for i in 0..<10 {
    var foo = 55
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")


/*:
 In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
 */
func greeting(greeting: String?, name: String) {
    
}
/*:
 Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
 */


//: page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
