S <- A / (nrow(x) - 1)# xの行数（データ数）から1を引いた値，つまり49でSの各要素を割り母共分散行列の最尤推定値（標本共分散行列）を計算
S

var(x)# xを引数としてvar()関数やcov()関数を使えばcrossproduct()関数を定義する必要がない．

cov(x)

eigen(S)$values	# 母共分散行列の最尤推定値（標本共分散行列）の固有値

eigen(S)$vectors	# 母共分散行列の最尤推定値（標本共分散行列）の固有ベクトル

RS <- cor(S)# 標本相関行列
eigen(RS)$values	# 標本相関行列の固有値

eigen(RS)$vectors# 標本相関行列の固有ベクトル