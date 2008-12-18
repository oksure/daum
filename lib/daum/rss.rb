module Daum

	# contains RSS type return and converts XML format to Ruby format
  class RSS

		# variable for accessing items
		attr_accessor :items

		# creates RSS class object from libxml node input
    def initialize(doc_root, target)
			if DIFF_DOC_ROOT_LIST.include?(target.to_s)
				channel = doc_root
			else
				channel = doc_root.find("channel").first
			end
			
			if cs = channel.children
				cs.each do |c|
					next if c.name == "item"
					RSS.class_eval("attr_accessor :#{c.name}")
					self.instance_variable_set("@#{c.name}", c.content)
				end
			end

			@items = []
			channel.find("item").each do |i|
				@items << Item.new(i)
			end
    end
  end
end
