Object = require '../lib/classic/classic'

-- Start of the Vehicle class. Creates Vehicle objects.
Vehicle = Object:extend()

function Vehicle:new(name, speed, color)
  self.name = name or "Vehicle"
  self.speed = speed or 60
  self.color = color or "Green"
end

function Vehicle:printSpeed()
  io.write(self.speed.."\n")
end

function Vehicle:printName()
  io.write(self.name.."\n")
end

function Vehicle:printColor()
  io.write(self.color.."\n")
end

-- Start of the Car class. Creates Car objects. Extends the Vehicle class.
Car = Vehicle:extend()

function Car:new(name, speed, color, numOfWheels, numOfDoors)
  Car.super.new(self, name, speed, color)
  self.numOfWheels = numOfWheels or 4
  self.numOfDoors = numOfDoors or 0
end

-- Overload the printName function from the parent object
function Car:printName()
  io.write(self.name .. " overloaded \n")
end


function Car:printNumOfWheels()
  io.write(self.numOfWheels.."\n")
end

function Car:printNumOfDoors()
  io.write(self.numOfDoors.."\n")
end