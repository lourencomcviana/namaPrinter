#!/usr/bin/env ruby
require_relative '../lib/nama_printer'
require 'test/unit'

# test invalid arguments errors
class TestArguments < Test::Unit::TestCase
  def test_is_str_startr
    assert_raise(ArgumentError) { NamaPrinter.new('a', 2) }
  end

  def test_is_str_endr
    assert_raise(ArgumentError) { NamaPrinter.new(1, 'a') }
  end

  def test_0_or_lower_startr
    assert_raise(ArgumentError) { NamaPrinter.new(0, 1) }
  end

  def test_0_or_lower_endr
    assert_raise(ArgumentError) { NamaPrinter.new(1, -1) }
  end

  def test_startr_bigger_tham_endr
    assert_raise(ArgumentError) { NamaPrinter.new(12, 1) }
  end

  def test_valid_arguments
    assert_instance_of(NamaPrinter, NamaPrinter.new(1, 2))
  end
end
