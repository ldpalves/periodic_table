class TableController < ApplicationController
  def index
    @indexes= Array.new(18) { Array.new(10) { "0" } }
    file = File.read("db/data.json")
    @elements = JSON.parse(file)

    x=""
    y=""
    @elements["order"].each do |element|
      x= @elements[element]["xpos"]-1
      y= @elements[element]["ypos"]-1
      @indexes[x][y]= @elements[element][ "name"]
    end
  end
end
