class LRUCache
  attr_reader :size, :cache_array

  def initialize(size)
    @size = size
    @cache_array = []
  end

  def count
    @cache_array.count
  end

  def add(el)
    if @cache_array.include?(el)
      @cache_array.delete(el)
      @cache_array << el
    elsif count == @size
      @cache_array.delete(@cache_array.first)
      @cache_array << el
    else
      @cache_array << el
    end
  end

  def show
    p @cache_array
  end

end

johnny_cache = LRUCache.new(4)


johnny_cache.add("I walk the line")
johnny_cache.add(5)
johnny_cache.count # => returns 2
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show 
