# Principal-Component-Analysis
[PCA with Rの入門](https://github.com/ShoShohh/Principal-Component-Analysis/blob/main/Principal%20Component%20Analysis%20with%20R.pdf)という擦られに擦られている内容ですが、自明じゃないことも書いたので気になったことは調べてみると面白いと思います。pdfファイルは17ページあるので，ダウンロードしてお読みいただくことをオススメします．
# Code
実行しているコードは主に[R言語](https://github.com/ShoShohh/Principal-Component-Analysis/tree/main/with%20R)ですが，同様の出力を行うような[Python](https://github.com/ShoShohh/Principal-Component-Analysis/tree/main/with%20Python)も載せています．ただし，[List4-Fig4.R](https://github.com/ShoShohh/Principal-Component-Analysis/blob/main/with%20R/List4-Fig4.R)は相関行列によるPCAの構成ですが，それに対応するものは以降の標準化を行ってPCAをするListに含まれるものとしています．
# Extra
PythonではPCAによる元データの復元が（変換の数学的な理解はできていなくとも）しやすかったので，ListExtraとして文字画像の復元を行ったCodeも載せました．PCAとして採用する主成分の数を増やしていくと復元された元データもより元データに近いという感じです（[ListExtra1.ipynb](https://github.com/ShoShohh/Principal-Component-Analysis/blob/main/with%20Python/ListExtra1.ipynb)）．[ListExtra2.ipynb](https://github.com/ShoShohh/Principal-Component-Analysis/blob/main/with%20Python/ListExtra2.ipynb)は，主成分として選択した数によって復元された元データが異なる様子をirisデータで簡単に確認したものです．
