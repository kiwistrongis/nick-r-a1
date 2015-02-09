#!/usr/bin/Rscript

# Read the image:

# Sample an adjacency matrix:
set.seed(1)
adj <- matrix(sample(0:1,10^2,T,prob=c(0.8,0.2)),10,10)

library( 'igraph')

# Make the graph
G <- graph.adjacency(adj,mode="undirected")

# Create fixed layout:
set.seed(1)
L <- layout.fruchterman.reingold(G)

# Rescale the layout to -1 to 1
L[,1]=(L[,1]-min(L[,1]))/(max(L[,1])-min(L[,1]))*2-1
L[,2]=(L[,2]-min(L[,2]))/(max(L[,2])-min(L[,2]))*2-1

# Plot:
plot(G,layout=L,vertex.size=0,vertex.frame.color="#00000000",vertex.label="")

