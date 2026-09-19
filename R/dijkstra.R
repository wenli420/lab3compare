#' Dijkstra shortest‑path algorithm
#'
#' Compute shortest‑path distances from initial node to every other node in weighted directed graph.
#' Graph is represented as data.frame with columns v1, v2, w.
#'
#' @param graph data.frame with columns v1, v2, w (source node, target node, edge weight)
#' @param init_node numeric scalar, starting node; must exist within graph
#' @return numeric vector of shortest distances from init_node to each node
#' @references https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
#' @examples
#' wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#' v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#' w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#' dijkstra(wiki_graph,1)
#' dijkstra(wiki_graph,3)
#' @export
dijkstra <- function(graph, init_node){
  # input assertions
  stopifnot(is.data.frame(graph), all(c("v1","v2","w") %in% colnames(graph)))
  stopifnot(is.numeric(init_node), length(init_node)==1)
  all_nodes <- sort(unique(c(graph$v1, graph$v2)))
  stopifnot(init_node %in% all_nodes)

  # initialize distances: Inf except starting node = 0
  dist <- rep(Inf, length(all_nodes))
  names(dist) <- all_nodes
  dist[as.character(init_node)] <- 0
  unvisited <- all_nodes

  while(length(unvisited) > 0){
    # pick unvisited node with minimal distance
    current_name <- names(which.min(dist[as.character(unvisited)]))
    current <- as.integer(current_name)
    unvisited <- unvisited[unvisited != current]

    # get all outgoing edges from current node
    edges <- graph[graph$v1 == current, ]
    for(i in seq_len(nrow(edges))){
      neighbor <- edges$v2[i]
      weight <- edges$w[i]
      alt <- dist[current_name] + weight
      if(alt < dist[as.character(neighbor)]){
        dist[as.character(neighbor)] <- alt
      }
    }
  }
  # return plain numeric vector without names (matches assignment output format)
  as.vector(dist)
}
