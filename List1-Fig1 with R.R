# データセットxの平均からのクロス積（非対角成分）と二乗（対角成分）の和を返す関数
crossproduct <- function(x) {
  n <- nrow(x)	# xの行数をnに代入
　p <- ncol(x)	# xの列数をpに代入
　center <- array(dim = p)	# centerをxの次元数と同じ大きさの配列として定義
　for (j in 1:p)	# centerにxの各列の平均を代入
 　　　center[j] <- mean(x[, j])
 　for (j in 1:p)	# xの各列に偏差を代入
 　　　x[, j] <- x[, j] - center[j]
 　crossproduct <- t(x) %*% x	# crossproductに「（xの偏差の転置）×（xの偏差）」を代入（p×p行列）
 　return (crossproduct)	# crossproductを返す
}

x <- as.matrix(iris[51:100,1:4])	# 行列としてxにiris versicolorデータセットを代入

colnames(x) <- NULL	# covmatrixの返り値としてsigmaを返す時，行名または列名が保存されているので，それを削除
rownames(x) <- NULL
A <- crossproduct(x)
A