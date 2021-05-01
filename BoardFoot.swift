/* This is a program that calculates the thickness
*  of a 1 board foot wood.

   Sean McLeod
   2021/04/29
*/

func boardFoot(width: Float, length: Float) -> Float {
    // This function calculates height
    let oneBoardFoot:Float = 144;
    let height:Float

    // calculate
    height = oneBoardFoot/(width * length)
    // return parameter
    return height
}

let height:Float

print("This program figures out the height of a "
      ,"wood(1 board foot or \n144 inches³) when "
      ,"given the width and length.")

// input
print("Enter the width(inch): ")
let widthString = readLine()
print("Enter the length(inch): ")
let lengthString = readLine()

if let width = Float(widthString!),
   let length = Float(lengthString!) {
    if width > 0 && length > 0  {
        // pass & accept parameters
        height = boardFoot(width: width, length: length)
        // output
        print("\nThe wood should be \(height) inch(es) thick")
    } else {
        print("Please enter a positive integer")
    }
} else {
    print("This is not an integer")
}
