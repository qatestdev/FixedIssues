# This file contains issues that can be detected by Ruby tools

# Unused variable
unused_var = "This is never used"

# Class with too many methods
class BigClass
  def method1; end
  def method2; end
  def method3; end
  def method4; end
  def method5; end
  def method6; end
  def method7; end
  def method8; end
  def method9; end
  def method10; end
  def method11; end
  def method12; end
  def method13; end
  def method14; end
  def method15; end
end

# Method with too many parameters
def too_many_params(a, b, c, d, e, f, g, h, i, j)
  puts "Too many parameters"
end

# Inefficient block
[1, 2, 3].map { |i| i.to_s } # Should use i.to_s instead

# Nested iterators
def nested_iterators
  [1, 2, 3].each do |i|
    [1, 2, 3].each do |j|
      [1, 2, 3].each do |k|
        puts i + j + k
      end
    end
  end
end

# Duplicate methods
def duplicate
  puts "Duplicate method"
end

def duplicate
  puts "Duplicate method again"
end

# Empty rescue block
def empty_rescue
  begin
    # Do something
  rescue
    # Empty rescue block
  end
end