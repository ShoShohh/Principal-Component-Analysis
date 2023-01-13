pcat <- prcomp(iris[, 1:4], scale = T)	# 相関行列から主成分を導出

pr.sdev2 <- (pcat$sdev) ^ 2	# 各主成分に対する固有値の計算
pr.cr <- pr.sdev2 / sum(pr.sdev2)	# 各主成分の寄与率の計算
pr.crsum <- cumsum(pr.cr)	# 第一主成分から第四主成分までの累積寄与率を計算し（cumsum():累積和），配列として並べる。

par(mfrow = c(1, 2))	# 横並びに二つのグラフを表示
plot(pr.cr, xlab = "第i主成分", ylab = "寄与率", xaxt="n", ylim = c(0, 1), type = "b")	# 各主成分の寄与率をプロット
axis(side=1, at=1:4)	# メモリを調整
plot(pr.crsum, xlab = "第i主成分", ylab = "累積寄与率",
     xaxt="n", ylim = c(0, 1), type = "b")	# 第一主成分から第四主成分までの累積寄与率をプロット
axis(side=1, at=1:4)	# メモリを調整

biplot(pcat)	# 黒い数字が各データ番号。赤の矢印の向きが2つの主成分に対する各変数つまり次元の方向。
# 赤の矢印の長さが各変数が各主成分とどれだけ相関が強いかを表す。要はその次元が主成分に対してどれほど影響するか。

pcadf <- as.data.frame(pcat$x[, 1:2])
# irisデータセットを第一主成分，第二主成分という新しい座標軸上のデータとして考える（$xが主成分スコアを与えるため）．
pcadf <- cbind(pcadf, iris$Species) # 元々あったように，新しく座標を決めたデータに対してもラベルの情報を与える．
colnames(pcadf) <- c("PC1", "PC2", "Species") # 上に合うように列の名前を変える．

library(ggplot2)	# ggplot()関数を用いるためにlibrary(ggplot2)を追加する．

pr.cr2 <- round(100 * summary(pcat)$importance[2, 1:2], 0) # 寄与率の計算を行い，その値を100倍することで割合とみている（round()は値の丸め込み）．
pr.cr2

ggplot(pcadf, aes(PC1, PC2, color = Species, shape = Species)) + # ggplotを使用して，横軸を第一主成分，縦軸を第二主成分として新しいデータをプロットする（ただし，Speciesの違いで色と形を分ける）．
  geom_point(size = 2) + # 散布図としてデータをプロットする．
  xlab(paste0("第1主成分:寄与率 ", pr.cr2[1], "%")) + # xラベル
  ylab(paste0("第2主成分:寄与率 ", pr.cr2[2], "%")) + # yラベル
  ggtitle("PCA") + # タイトル
  theme(aspect.ratio = 1) # 図のアスペクト比