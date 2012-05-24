require 'test/unit'
require 'smokeit'

class TestSmokeit < Test::Unit::TestCase
  def test_ok
    res = Smokeit::Base.smoke!("http://www.google.com", 302)
    assert res
  end

  def test_false
    res = Smokeit::Base.smoke!("http://www.google.com", 500)
    assert !res
  end

  def test_cli_ok
    `bin/smokeit "http://www.google.com" 302`
    assert_equal $?.to_i, 0
  end

  def test_cli_false
    `bin/smokeit "http://www.google.com" 301`
    assert_equal $?.to_i, 1
  end
end

