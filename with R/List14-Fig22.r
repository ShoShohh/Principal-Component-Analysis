library(scar)
data(decathlon)
pcat <- prcomp(decathlon, scale = T)	# 相関行列から主成分を導出

biplot(pcat)	# 黒い数字が各データ番号。赤の矢印の向きが2つの主成分に対する各変数つまり次元の方向。
# 赤の矢印の長さが各変数が各主成分とどれだけ相関が強いかを表す。要はその次元が主成分に対してどれほど影響するか。