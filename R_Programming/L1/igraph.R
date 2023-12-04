library(igraph)

adj_matrix <- matrix(c(0, 1, 1, 0, 0,
                       1, 0, 1, 1, 0,
                       1, 1, 0, 1, 1,
                       0, 1, 1, 0, 1,
                       0, 0, 1, 1, 0), nrow = 5, byrow = TRUE)

g <- graph_from_adjacency_matrix(adj_matrix, mode = "undirected")

plot(g, main = "Graph from Adjacency Matrix")

g <- add.edges(g, edges = c(2,5, 1,4))
plot(g)

dfs(g,1)