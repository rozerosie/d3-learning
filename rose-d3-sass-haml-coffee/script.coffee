# global var to make imported data accessible
#dataset = [5, 10, 15, 20]

dataset =

#import data
d3.tsv "bar_graph_data.tsv", (data) ->
  # if error
  #   console.log error
  # else
  #   console.log data
  #
  # hand off imported data to global var
  dataset = data
  # console.log dataset
  #functions that require successful load of data
  # generateVis()
  # return

#it appears we aren't getting the right format of the dataset, here
console.log dataset

d3.select("body").selectAll("p")
  .data(dataset)
  .enter()
  .append("p")
  .text (d) -> d