pcat <- prcomp(iris[, 1:4], scale = T)	# 相関行列から主成分を導出
pcat

summary(pcat)	# 寄与率と累積寄与率も表示

pr.sdev2 <- (pcat$sdev) ^ 2	# 各主成分に対する固有値，つまり主成分の分散の計算
pr.sdev2	# eigen()関数と同じものが得られ，それを配列として並べる．

pr.cr <- pr.sdev2 / sum(pr.sdev2)	# 各主成分の寄与率の計算
pr.cr	# eigen()関数と同じものが得られ，それを配列として並べる．
