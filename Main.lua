-- We must require our "classic" library to implement this
-- version of OOP. We then require our two object Classes
-- so that we can make Point and Vehicle objects + their children
Object = require 'lib/classic/classic'
require 'objects/Point'
require 'objects/Vehicle'

-- Just a main function for flavor
function main()
  -- Make 3 point objects and assign them values for x and y
  local point = Point(5, 4)
  local point2 = Point(10, 3)
  local point3 = Point(15, 4)
  
  -- Print the point values of our 3 point objects
  point:printPoint()
  point2:printPoint()
  point3:printPoint()
  
  -- Make a Rect object which is a child of point
  local rect = Rect(10, 10, 500, 500)
  rect:printPoint() -- Print our Rect objects coordinates using our
                    -- parents function Point:printPoint()
  
  -- Make a Car object which is a child of Vehicle
  local toyota = Car("Toyota Car", 75, "White", 4, 4)
  toyota:printName()  -- Print our Car objects name using our parent
                      -- function Vehicle:printName()
  
  -- Begin checking what our toyota object belongs to
  -- it is an Object, Vehicle, and finally a Car
  print(toyota:is(Object))
  print(toyota:is(Vehicle))
  print(toyota:is(Car))
  print(toyota:is(Rect))
  
  -- Perform similar function on our Rect object and
  -- Print the results
  print(rect:is(Point))
  print(rect:is(Rect))
  
end

-- Run our main function
main()
