class Chinampa
  VERSION = "1.0.0"
 
  attr_reader :rows,:cols

  # 3x2
  # [[x x] [x x] [x x]]
  # X X
  # X X
  # X X
  def initialize(rows,cols)
    @rows = rows
    @cols = cols
    @terrain = Array.new(rows).map { Array.new(cols,".") }
  end

  def empty_at?(row,col)
    @terrain[row][col].nil?
  end

  def plant(plant,row=nil,col=nil)
    #@terrain[row][col] = plant if empty_at?(row,col)
    @terrain[row][col] = plant
  end

  def to_s
    @terrain.each {|row| puts "# #{row.join(' ')}"}
  end

end
