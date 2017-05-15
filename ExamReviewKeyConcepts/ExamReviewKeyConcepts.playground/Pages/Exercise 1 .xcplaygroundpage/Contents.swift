//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
//Set colour to the beautiful turquoise in the example
canvas.fillColor = Color(hue: 190, saturation: 80, brightness: 90, alpha: 100)
//make background of image blue by making a big rectangle behind it
canvas.drawRectangle(centreX: 250, centreY: 350, width: 500, height: 610)
for y in stride(from: 345, through: 0, by: -5) {
    canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 10)
    canvas.drawText(message: "blur", size: 190, x: 20, y: y)
}
canvas.textColor = Color.black
canvas.drawText(message: "blur", size: 190, x: 20, y: 330)
    
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
