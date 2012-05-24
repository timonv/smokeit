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
end
