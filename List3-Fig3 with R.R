x <- as.matrix(iris[51:100,1:4])	# 行列としてxにiris versicolorデータセットを代入

pcaf <- prcomp(x,scale=F) 	# Tを指定すると相関行列から，Fを指定すると共分散行列から主成分分析を実行
pcaf$x	# 各主成分の主成分スコア

pcaf$sdev	# 標準偏差(固有値の正の平方根)

pcaf$rotation	# 各主成分軸の固有ベクトル

pcaf$center	# 解析に用いた各項目の値の平均

summary(pcaf)	# 寄与率と累積寄与率も表示