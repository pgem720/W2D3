class Array

  def my_uniq
    new_arr = []
    self.each {|el| new_arr << el if !new_arr.include?(el)}
    new_arr
  end

  def two_sum
    new_arr = []
    self.each_with_index do |el, idx|
      self.each_with_index do |el2, idx2|
        if idx2 > idx && el + el2 == 0
          new_arr << [idx, idx2] 
        end
      end
    end

    new_arr
  end

  def my_transpose
    new_arr = Array.new(3) {Array.new([])}

    self.each do |row|
      row.each_with_index do |ele, jdx|
        new_arr[jdx] << ele
      end
    end
    new_arr
  end

  def stock_picker
    new_arr = []
    
    biggest_diff = 0
    self.each_with_index do |el1, idx|
      self.each_with_index do |el2, jdx|
        if jdx > idx && (el2 - el1) > biggest_diff
          biggest_diff = el2 - el1
          new_arr.delete_at(0)
          new_arr = [idx, jdx]
        end
      end
    end
    new_arr
  end


end