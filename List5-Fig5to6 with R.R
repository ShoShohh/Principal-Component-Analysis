pr.sdev2 <- (pcaf$sdev) ^ 2	# 各主成分に対する固有値，つまり主成分の分散の計算
pr.sdev2	# eigen()関数と同じものが得られ，それを配列として並べる．

pr.cr <- pr.sdev2 / sum(pr.sdev2)	# 各主成分の寄与率の計算
pr.cr

pr.crsum <- cumsum(pr.cr)		# 第一主成分から第四主成分までの累積寄与率を計算し（cumsum():累積和），配列として並べる．
pr.crsum

par(mfrow = c(1, 2))	# 横並びに二つのグラフを表示
plot(pr.cr, xlab = "第i主成分", ylab = "寄与率", xaxt="n", ylim = c(0, 1), type = "b")	# 各主成分の寄与率をプロット
axis(side=1, at=1:4)	# メモリを調整
plot(pr.crsum, xlab = "第i主成分", ylab = "累積寄与率",
  xaxt="n", ylim = c(0, 1), type = "b")	# 第一主成分から第四主成分までの累積寄与率をプロット
  axis(side=1, at=1:4)	# メモリを調整