class IntegerSpiral

  def initialize(n=0)
    @max = n
    @dimension = Math.sqrt(n+1).ceil
    @rows = Array.new(@dimension) { Array.new(@dimension) }
    fill
  end

  def to_a
    @rows
  end

  private

  def fill
    #Find the center
    row = ((@dimension - 1)/2).floor
    column = row

    #The pattern:
    # Right 1 column (+x)
    # Down 1 row     (+y)
    # Left 2 columns (-x)
    # Up 2 rows      (-y)
    # Right 3 columns(+x)
    # Down 3 rows    (+y)
    # Left 4 columns (-x)
    # Up 4 rows      (-y)
    # ...

    counter = 0
    step = 2
    columnIncrement = 1
    rowIncrement = 0
    
    0.upto(@max) do |i|
      @rows[row][column] = i
      counter += 1

      column += columnIncrement
      row += rowIncrement

      if counter === step or counter === step/2
        #Swap row/column directions
        rowIncrement,columnIncrement = columnIncrement,rowIncrement
      end

      if counter === step
        counter = 0

        #Add another 2 to the step limit
        step += 2

        #Reverse direction
        columnIncrement = -columnIncrement
        rowIncrement = -rowIncrement
      end
    end
  end

end
