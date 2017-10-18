class Machine

  attr_reader :switch

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  private

  def switch=(switch_state)
    @switch = switch_state
  end

  def flip_switch(desired_state)
    self.switch = desired_state
  end

end

bonkerator = Machine.new()
bonkerator.start
puts bonkerator.switch
bonkerator.stop
puts bonkerator.switch
