#!/usr/bin/env ruby
# Generate text in nama mode
# startr marks the initial number
# endr the end number
class NamaPrinter
  def initialize(startr = 1, endr = 100)
    raise ArgumentError, 'startr is not numeric' unless startr.is_a? Numeric
    raise ArgumentError, 'endr is not numeric' unless endr.is_a? Numeric
    raise ArgumentError, 'startr lower tham 0' unless startr > 0
    raise ArgumentError, 'endr lower tham 0' unless startr > 0
    raise ArgumentError, 'startr bigger them endr' unless startr <= endr
    @start = startr
    @end = endr
  end

  def self.text_decider(text)
    raise ArgumentError, 'text is not numeric' unless text.is_a? Numeric
    if text.divmod(35)[1].zero?
      'Nama Team'
    elsif text.divmod(7)[1].zero?
      'Team'
    elsif text.divmod(5)[1].zero?
      'Nama'
    else
      text
    end
  end

  def make_array
    arr = []
    (@start..@end).each do |el|
      arr.push(NamaPrinter.text_decider(el))
    end
    arr
  end

  def print
    puts to_s
  end

  def to_s
    make_array.join(', ')
  end
end

NamaPrinter.new.print if $PROGRAM_NAME == __FILE__
