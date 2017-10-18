class Banner
  
  def initialize(message, message_length = message.size)
    @message = message
    @message_length = message_length
    @message_padding = (@message_length - @message.length) / 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    horizontal_middle_bit = ''
    @message_length.times { horizontal_middle_bit << '-' }
    "+-#{horizontal_middle_bit}-+"
  end

  def empty_line
    empty_middle_bit = ''
    @message_length.times { empty_middle_bit << ' ' }
    "| #{empty_middle_bit} |"
  end

  def message_line
    if @message_length.odd?
      "| #{' ' * (@message_padding) }#{ @message }#{ ' ' * (@message_padding) } |"
    else
      "|  #{' ' * (@message_padding) }#{ @message }#{ ' ' * (@message_padding) } |"
    end
  end
end

banner = Banner.new('123456789')
puts banner