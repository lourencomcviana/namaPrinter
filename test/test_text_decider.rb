#!/usr/bin/env ruby
require_relative '../lib/nama_printer'
require 'test/unit'

# test text_decider
class TestTextDecider < Test::Unit::TestCase
  def test_is_multiple_of_5
    assert_equal('Nama', NamaPrinter.text_decider(15))
    assert_equal('Nama', NamaPrinter.text_decider(30))
  end

  def test_is_multiple_of_7
    assert_equal('Team', NamaPrinter.text_decider(14))
    assert_equal('Team', NamaPrinter.text_decider(21))
  end

  def test_is_all_multiple
    assert_equal('Nama Team', NamaPrinter.text_decider(35))
    assert_equal('Nama Team', NamaPrinter.text_decider(70))
  end

  def test_is_multiple_of_none
    assert((NamaPrinter.text_decider(13).is_a? Numeric))
  end
end
