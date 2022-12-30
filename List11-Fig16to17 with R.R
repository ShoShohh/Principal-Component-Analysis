library(kernlab)
data(spam)
pcat <- prcomp(spam[,1:57], scale = T)	# ‘ŠŠÖs—ñ‚©‚çŽå¬•ª‚ð“±o

pr.sdev2 <- (pcat$sdev) ^ 2	# ŠeŽå¬•ª‚É‘Î‚·‚éŒÅ—L’l‚ÌŒvŽZ
pr.cr <- pr.sdev2 / sum(pr.sdev2)	# ŠeŽå¬•ª‚ÌŠñ—^—¦‚ÌŒvŽZ
pr.crsum <- cumsum(pr.cr)	# —ÝÏŠñ—^—¦‚ðŒvŽZ‚µicumsum():—ÝÏ˜ajC”z—ñ‚Æ‚µ‚Ä•À‚×‚éD

plot(pr.cr, xlab = "‘æiŽå¬•ª", xaxt="n",
     ylab = "Šñ—^—¦/—ÝÏŠñ—^—¦", ylim = c(0, 1), pch = 1)	# ŠeŽå¬•ª‚ÌŠñ—^—¦‚ðƒvƒƒbƒg
abline(v=5, col='red')	# —ÝÏŠñ—^—¦25%‚ÌŽå¬•ª‚ÉÔF‚Ìcü‚ð•`‰æi•\j
abline(v=16, col='red')	# 50%
abline(v=35, col='red')	# 80%
abline(v=43, col='red')	# 90%

par(new=T)
plot(pr.crsum, xaxt="n", yaxt="n", xlab = "",@ylab = "",
      ylim = c(0, 1), pch = 3)	# ŠeŽå¬•ª‚Ì—ÝÏŠñ—^—¦‚ðƒvƒƒbƒg
legend("topleft", bg = "white",
      legend=expression("Šñ—^—¦","—ÝÏŠñ—^—¦"), pch = c(1, 3))
axis(side=1, at=c(1, 10, 20, 30, 40, 50, 57), 
      labels=c(1, 10, 20, 30, 40, 50, 57))	# ƒƒ‚ƒŠ‚ð’²®D
par(new=T)
axis(side=1,@	# xŽ²‚É‘}“üDyŽ²‚Íside=2 
     at=c(5, 16, 35, 43),@labels=c(5, 16, 35, 43), col.ticks ="red")	# xŽ²‚ÉÔF‚Ìƒƒ‚ƒŠ‚ð‘}“üD