class Hash

  def to_ff
    self.inject({}) do |ff, pair|
      ff[pair.last] = ff[pair.last] ? ff[pair.last] + 1 : 1
      ff
    end
  end

end