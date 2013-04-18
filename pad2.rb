class Array
  def pad!(min_size, value = nil)
    while min_size > length
      self << value
    end
    self
  end
end
puts [3,1,4].pad!(5).inspect