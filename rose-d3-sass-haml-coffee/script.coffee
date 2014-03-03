# global var to make imported data accessible
dataset = [5, 10, 15, 20]

# #import data
# d3.tsv "bar_graph_data.tsv", (error, data) ->
#   if error
#     console.log error
#   else
#     console.log data
#
#   # hand off imported data to global var
#   dataset = data
#   #functions that require successful load of data
#   # generateVis()
#   # return

d3.select("body").selectAll("p")
  .data(dataset)
  .enter()
  .append("p")
  .text (d) -> d