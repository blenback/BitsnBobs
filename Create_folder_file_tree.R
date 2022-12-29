library(data.tree)
library(plyr)
library(DiagrammeR)

#vector paths of chosen directory
Dir <- "E:/ICoLCM"
paths <- unique(c(list.dirs(Dir, full.names = T),list.files(Dir, full.names = T, recursive = TRUE)))

#produce map of directory as tree and save
x <- lapply(strsplit(paths, "/"), function(z) as.data.frame(t(z)))
x <- rbind.fill(x)
x$pathString <- apply(x, 1, function(x) paste(trimws(na.omit(x)), collapse="/"))
(mytree <- data.tree::as.Node(x))
print(mytree)
write.table(mytree, file='test_tree.txt')
