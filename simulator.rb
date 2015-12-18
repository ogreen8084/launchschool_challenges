class Robot
  attr_accessor :bearing, :coordinates
  def initialize
    @bearing = :north
    @coordinates = [0, 0]
  end

  def orient(direction)
    if [:east, :west, :north, :south].include?(direction)
      self.bearing = direction 
    else
      raise ArgumentError.new("must be :east, :west, :north, or :south")
    end
  end

  def turn_right
    new_bearing = case self.bearing
                  when :north
                    :east
                  when :east
                    :south
                  when :south
                    :west
                  when :west
                    :north
                  end
    self.bearing = new_bearing
  end

  def turn_left
    new_bearing = case self.bearing
                  when :north
                    :west
                  when :west
                    :south
                  when :south
                    :east
                  when :east
                    :north
                  end
    self.bearing = new_bearing
  end

  def at(x, y)
    self.coordinates[0] = x
    self.coordinates[1] = y
  end

  def advance
    case self.bearing
    when :east
      self.coordinates[0] += 1
    when :south
      self.coordinates[1] -= 1
    when :west
      self.coordinates[0] -= 1
    when :north
      self.coordinates[1] += 1
    end
  end
end

class Simulator
  def instructions(direction)
    all_directions = []
    individual_direction = direction.split(//)

    individual_direction.each do |x|
      case x
      when 'L'
        all_directions << [:turn_left]
      when 'R'
        all_directions << [:turn_right]
      when 'A'
        all_directions << [:advance]
      end
    end
    all_directions.flatten
  end

  def place(robot, x: , y: , direction: )
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, direction)
    movements = self.instructions(direction)
    movements.each do |move|
      case move
      when :turn_right
        robot.turn_right
      when :turn_left
        robot.turn_left
      when :advance
        robot.advance
      end
    end
  end
end



