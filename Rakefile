require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('daum', '0.1.1') do |p|
	p.description		= "Ruby Gem for Daum OpenAPI"
	p.url			= "http://oksurerails.com/ruby/daum"
	p.author		= "Hyunwoo Park"
	p.email			= "hwpark@oksurerails.com"
	p.ignore_pattern	= ["tmp/*", "script/*"]
	p.development_dependencies = ["libxml >= 0.9.2"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

