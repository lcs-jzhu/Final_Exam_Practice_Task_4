//: # Exam Prep 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

// Begin your solution here... 
canvas.drawShapesWithFill
canvas.fillColor = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

// right top white squares
for size in stride(from: 25, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 400, centreY: 400, width: size, height: size)
}

// right top black squares
for size in stride(from: 75, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.black
    canvas.drawRectangle(centreX: 400, centreY: 400, width: size, height: size)
}
//left top white squares
for size in stride(from: 25, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 0, centreY: 400, width: size, height: size)
}
//left top black squares
for size in stride(from: 75, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.black
    canvas.drawRectangle(centreX: 0, centreY: 400, width: size, height: size)
}

//left bottom white squares
for size in stride(from: 25, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 0, centreY: 0, width: size, height: size)
}
//left bottom black squares
for size in stride(from: 75, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.black
    canvas.drawRectangle(centreX: 0, centreY: 0, width: size, height: size)
}
// right bottom white squares
for size in stride(from: 25, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.white
    canvas.drawRectangle(centreX: 400, centreY: 0, width: size, height: size)
}
//right bottom black squares
for size in stride(from: 75, through: 400, by: 100) {
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders
    canvas.defaultBorderWidth = 15
    canvas.borderColor = Color.black
    canvas.drawRectangle(centreX: 400, centreY: 0, width: size, height: size)
}


/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
