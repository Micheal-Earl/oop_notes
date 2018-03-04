Object = require '../lib/classic/classic'

-- Make a Point object
Point = Object:extend()

function Point:new(x, y)
  -- Creating properties for our future object
  self.x = x or 0
  self.y = y or 0
end

function Point:printPoint()
  io.write(self.x .. ", " .. self.y .. "\n")
end

-- Make a Rect object inheriting from point
Rect = Point:extend()

function Rect:new(x, y, width, height)
  -- Access our parent object and run its constructer
  -- store those parent properties in our new Rect object
  Rect.super.new(self, x, y)
  self.width = width or 0
  self.height = height or 0
end
