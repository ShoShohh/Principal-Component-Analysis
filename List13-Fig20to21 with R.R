library(scar)
data(decathlon)
pcat <- prcomp(decathlon, scale = T)	# ���֍s�񂩂�听���𓱏o

pr.sdev2 <- (pcat$sdev) ^ 2	# �e�听���ɑ΂���ŗL�l�̌v�Z
pr.cr <- pr.sdev2 / sum(pr.sdev2)	# �e�听���̊�^���̌v�Z
pr.crsum <- cumsum(pr.cr)	# �ݐϊ�^�����v�Z���icumsum():�ݐϘa�j�C�z��Ƃ��ĕ��ׂ�D

plot(pr.cr, xlab = "��i�听��", ylab = "��^��/�ݐϊ�^��", ylim = c(0, 1), pch = 1)	# �e�听���̊�^�����v���b�g
abline(v=2, col='red')	# 50%�D���听��������25%�͒�����D
abline(v=7, col='red')	# 90%

par(new=T)
plot(pr.crsum, xaxt="n", yaxt="n", xlab = "",�@ylab = "", ylim = c(0, 1), pch = 3)	# �e�听���̗ݐϊ�^�����v���b�g
legend("topleft", bg = "white", legend=expression("��^��","�ݐϊ�^��"), pch = c(1, 3))

axis(side=1, at=seq(10),�@labels=seq(10))	# �������𒲐��D
par(new=T)
axis(side=1,�@# x���ɑ}���Dy����side=2 
     at=c(2, 7),�@labels=c(2, 7), col.ticks ="red")	# x���ɐԐF�̃�������}���D