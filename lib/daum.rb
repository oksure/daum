# = Daum
#   An easy interface to the Daum OpenAPI (http://dna.daum.net/apis). By Hyunwoo Park.
#
# Author::    Hyunwoo Park <hwpark@oksurerails.com>
# Copyright:: Copyright (c) 2008 Hyunwoo Park <hwpark@oksurerails.com>
# License::   MIT <http://www.opensource.org/licenses/mit-license.php>
#
# USAGE:
#	  require 'daum'
#	  daum = Daum::Base.new(api_key)		### create a naver client
#	  daum.request("삼국지", "go", {:display => "5", :start => "1", :sort => "sim"})		### return root node as libxml node
#		daum.knowledge("삼국지", {:display => "5", :start => "1", :sort => "sim"})		### return RSS object / 자체 정의된 RSS 클래스 오브젝트를 반환합니다
#		daum.knowledge("삼국지", {:d => "5", :st => "5", :so => "sim"})		### It's possible to use abbreviation for each option / 검색 옵션을 넘길 때 약어를 사용 가능합니다
#		daum.knowledge("삼국지").lastBuildDate		### return lastBuildDate content in String / 스트링으로 lastBuildDate 값을 반환합니다
#		daum.knowledge("삼국지").items.each do |i|		### items returns array of Item object which contains title, link, and so on.
#			puts i.title		### items는 Item 오브젝트의 배열을 반환하고 각 Item 오브젝트 속에 title, link 등이 들어있습니다.
#		end

%w[cgi net/http libxml].each {|lib| require lib}

$:.unshift(File.join(File.dirname(__FILE__)))

require "daum/base"
require "daum/rss"
require "daum/item"

module Daum
  include LibXML

	class NoMethod < StandardError; end
	class NoQuery < StandardError; end

	# "/search" api list
	SEARCH_LIST = %w[knowledge board cafe blog news book vclip image]

	# "/search/dic" api list
	DIC_LIST = %w[jpdic]

	# "/shopping" api list
	SHOPPING_LIST = %w[search detail]

	# Method list
	METHOD_LIST = SEARCH_LIST + DIC_LIST + SHOPPING_LIST

	# Methods returning "channel" element as a document root
	DIFF_DOC_ROOT_LIST = %w[book jpdic]

	# Abbreviation for passing options
	ABBREVIATION = {:re => :result, :p => :pageno, :ra => :range, :o => :output, :s => :sort,
									:ta => :target, :c => :condition, :ci => :cate_id, :st => :searchType, :ts => :tagsearch,
									:di => :docid, :g => :group, :req => :requestor, :ti => :title}
end
