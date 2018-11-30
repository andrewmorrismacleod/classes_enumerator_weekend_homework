require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestBar < MiniTest::Test

  def setup
    @bar = Bar.new()
  end

end
