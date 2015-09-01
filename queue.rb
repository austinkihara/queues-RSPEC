class Queue
	attr_accessor :data_store
	attr_reader :back

	def initialize
		@back = 0
		@data_store = []
	end

	def enqueue(item)
		@data_store[@back] = item
		@back += 1
	end

	def queue_display
		@data_store
	end

	def dequeue
		if @data_store[0] 
			dequeue = @data_store[0]
			@data_store[0]=nil
			@data_store.compact!
			@data_store
			return dequeue
		else
			return nil
		end
	end	
end
