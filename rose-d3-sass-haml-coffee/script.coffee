# global var to make imported data accessible
#dataset = [5, 10, 15, 20]

dataset =
console.log "0th"
console.log dataset
#import data
d3.tsv "bar_graph_data.tsv", (data) ->
  # if error
  #   console.log error
  # else
  #   console.log data
  #
  # hand off imported data to global var
  dataset = data
  console.log "first"
  console.log data
  console.log "second"
  console.log dataset
  #functions that require successful load of data
  # generateVis()
  # return

#it appears we aren't getting the right format of the dataset, here
console.log "third"
console.log dataset

d3.select("body").selectAll("p")
  .data(dataset)
  .enter()
  .append("p")
  .text (d) -> d