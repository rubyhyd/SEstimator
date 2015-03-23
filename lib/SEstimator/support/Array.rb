class Array

  # [1,2,1,3].to_hash #=> {1 => 2, 2 => 1, 3 => 1}
  def to_hash
    self.inject({}) do |hash, ele|
      hash[ele] = hash[ele] ? hash[ele] + 1 : 1
      hash
    end
  end

end