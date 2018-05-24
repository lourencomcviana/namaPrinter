#!/usr/bin/env ruby
require_relative '../nama_printer'
require 'test/unit'

# test text_decider
class TestMakeArray < Test::Unit::TestCase
  def test_has_correct_length
    assert_equal(1, NamaPrinter.new(1, 1).make_array.length)
    assert_equal(16, NamaPrinter.new(5, 20).make_array.length)
    assert_equal(100, NamaPrinter.new.make_array.length)
  end
end
