library(scar)
data(decathlon)
pcat <- prcomp(decathlon, scale = T)	# 相関行列から主成分を導出

pr.sdev2 <- (pcat$sdev) ^ 2	# 各主成分に対する固有値の計算
pr.cr <- pr.sdev2 / sum(pr.sdev2)	# 各主成分の寄与率の計算
pr.crsum <- cumsum(pr.cr)	# 累積寄与率を計算し（cumsum():累積和），配列として並べる．

plot(pr.cr, xlab = "第i主成分", ylab = "寄与率/累積寄与率", ylim = c(0, 1), pch = 1)	# 各主成分の寄与率をプロット
abline(v=2, col='red')	# 50%．第一主成分だけで25%は超える．
abline(v=7, col='red')	# 90%

par(new=T)
plot(pr.crsum, xaxt="n", yaxt="n", xlab = "",　ylab = "", ylim = c(0, 1), pch = 3)	# 各主成分の累積寄与率をプロット
legend("topleft", bg = "white", legend=expression("寄与率","累積寄与率"), pch = c(1, 3))

axis(side=1, at=seq(10),　labels=seq(10))	# メモリを調整．
par(new=T)
axis(side=1,　# x軸に挿入．y軸はside=2 
     at=c(2, 7),　labels=c(2, 7), col.ticks ="red")	# x軸に赤色のメモリを挿入．