require 'gruff'

class SKGPlot
  @graph = Gruff::Line.new()
  def initialize()
    @graph.title = "total Stop Killing Games signatures by date"
  end

  def update(new_data, day, month)
    # on the y axis the increments are in the 100 thousands, so
    # 100.000, 200.000, 300.000, ..., 1.000.000
    @graph.labels["#{day}/#{month}"] = @graph.labels.to_a().last() + 100000
    @graph.data << new_data
  end

  def plot_to_image()
    @graph.write('skg_plot.png')
  end
end
