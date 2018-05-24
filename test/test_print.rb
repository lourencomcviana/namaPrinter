#!/usr/bin/env ruby
require_relative '../lib/nama_printer'
require 'test/unit'

# test text_decider
class TestPrint < Test::Unit::TestCase
  def test_if_printed_correclty
    assert_nothing_thrown { NamaPrinter.new.print }
  end
end
