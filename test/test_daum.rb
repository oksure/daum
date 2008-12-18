# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'daum'

class TestDaum < Test::Unit::TestCase

	# sets up basic setting for unit testing
	def setup
		# insert your own Naver API key
		@d = Daum::Base.new('your_key')
	end

	def test_allmethod
		@d.knowledge("삼국지").items.each do |i|
			puts i.title
		end
	end

end
