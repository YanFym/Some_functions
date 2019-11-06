class My_functions
  def self.max_multiplication(string)
    if string.class == String
  	  string.split(/[a-zA-z]/)
  	        .uniq.delete_if {|x| x.length <4 }
  	        .map {|x| x.scan(/\d/)
  	        .sort
  	        .reverse[0..3]
  	        .map {|x| x.to_i}
  	        .reduce(:*)}
  	        .max
    else
      nil
    end
  end

  def self.my_sort(array)
  array.map {|x| x.to_s(2)}
       .sort_by {|x| x.split('')
       .map(&:to_i).sum}
       .map {|q| q.to_i(2)}
  end
end
