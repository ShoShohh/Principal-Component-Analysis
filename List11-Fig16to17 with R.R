library(kernlab)
data(spam)
pcat <- prcomp(spam[,1:57], scale = T)	# 相関行列から主成分を導出

pr.sdev2 <- (pcat$sdev) ^ 2	# 各主成分に対する固有値の計算
pr.cr <- pr.sdev2 / sum(pr.sdev2)	# 各主成分の寄与率の計算
pr.crsum <- cumsum(pr.cr)	# 累積寄与率を計算し（cumsum():累積和），配列として並べる．

plot(pr.cr, xlab = "第i主成分", xaxt="n",
     ylab = "寄与率/累積寄与率", ylim = c(0, 1), pch = 1)	# 各主成分の寄与率をプロット
abline(v=5, col='red')	# 累積寄与率25%の主成分に赤色の縦線を描画（表）
abline(v=16, col='red')	# 50%
abline(v=35, col='red')	# 80%
abline(v=43, col='red')	# 90%

par(new=T)
plot(pr.crsum, xaxt="n", yaxt="n", xlab = "",　ylab = "",
      ylim = c(0, 1), pch = 3)	# 各主成分の累積寄与率をプロット
legend("topleft", bg = "white",
      legend=expression("寄与率","累積寄与率"), pch = c(1, 3))
axis(side=1, at=c(1, 10, 20, 30, 40, 50, 57), 
      labels=c(1, 10, 20, 30, 40, 50, 57))	# メモリを調整．
par(new=T)
axis(side=1,　	# x軸に挿入．y軸はside=2 
     at=c(5, 16, 35, 43),　labels=c(5, 16, 35, 43), col.ticks ="red")	# x軸に赤色のメモリを挿入．