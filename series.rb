# series.rb

class Series
  attr_accessor :n_series
  def initialize(s)
    @n_series = s
  end

  def slices(size)
    raise ArgumentError.new("Slice cannot be larger than series size") if size > n_series.size
    
    new_split = []
    final_split = []
    count = 0

    while count + size < n_series.size + 1
      new_split << n_series[count...count+size]
      count += 1
    end

    new_split.each do |i|
      final_split << i.split('').map(&:to_i)
    end
    final_split
  end
end
