class Animal
  def speak
    'bark!'
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

end

class Cat < Animal

end

class Dog < Animal

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

tiddles = Cat.new
puts tiddles.run
puts tiddles.fetch


