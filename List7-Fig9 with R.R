pcat <- prcomp(iris[, 1:4], scale = T)	# ���֍s�񂩂�听���𓱏o
pcat

summary(pcat)	# ��^���Ɨݐϊ�^�����\��

pr.sdev2 <- (pcat$sdev) ^ 2	# �e�听���ɑ΂���ŗL�l�C�܂�听���̕��U�̌v�Z
pr.sdev2	# eigen()�֐��Ɠ������̂������C�����z��Ƃ��ĕ��ׂ�D

pr.cr <- pr.sdev2 / sum(pr.sdev2)	# �e�听���̊�^���̌v�Z
pr.cr	# eigen()�֐��Ɠ������̂������C�����z��Ƃ��ĕ��ׂ�D