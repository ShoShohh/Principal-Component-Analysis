library(kernlab)
data(spam)
pcat <- prcomp(spam[, 1:57], scale = T)	# 相関行列から主成分を導出

pcadf <- as.data.frame(pcat$x[, 1:2])
# irisデータセットを第一主成分，第二主成分という新しい座標軸上のデータとして考える（$xが主成分スコアを与えるため）．
pcadf <- cbind(pcadf, spam$type) # 元々あったように，新しく座標を決めたデータに対してもラベルの情報を与える．
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
