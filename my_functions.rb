class My_funtions
  def self.max_multiplication(string)
  	string.split(/[a-zA-z]/)
  	      .uniq.delete_if {|x| x.length <4 }
  	      .map {|x| x.scan(/\d/)
  	      .sort
  	      .reverse[0..3]
  	      .map {|x| x.to_i}
  	      .reduce(:*)}
  	      .max
  end
end
