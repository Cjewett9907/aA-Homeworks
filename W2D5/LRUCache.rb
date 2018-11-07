class LRUCache

  attr_accessor :hash, :storage, :size
   def initialize(size)
     @size = 4
     @storage = []
     @hash = {}
   end

   def count
     @storage.length
     # returns number of elements currently in cache
   end

   def add(el)
     if hash.keys.include?(el)
       return
     end

     p "adding..."
     if @storage.length == @size
       @storage.pop
       hash.keys.delete[el]
       hash[el] = storage.unshift(el)
     else
       hash[el] = storage.unshift(el)
     end

     # adds element to cache according to LRU principle
   end

   def show
     p @storage
     # shows the items in the cache, with the LRU item first
   end

   private
   # helper methods go here!

 end
