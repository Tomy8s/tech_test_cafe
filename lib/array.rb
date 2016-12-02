class Array
  def remove(item)
    raise ArgumentError, "There are no (more) #{item.to_s} to be removed." unless include?(item)
    delete_at(index(item))
  end
end