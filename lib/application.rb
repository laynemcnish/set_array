class SetArray

  def initialize
  @array = []
  end

  def size
    @array.length
  end

  def add_element(element)
    unless @array.include?(element)
      @array << element
    end
  end

  def remove_element(element)
    @array.delete(element)
  end

  def each(&block)
    @array.each(&block)
  end

end

