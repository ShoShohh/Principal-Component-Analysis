pr.sdev2 <- (pcaf$sdev) ^ 2	# �e�听���ɑ΂���ŗL�l�C�܂�听���̕��U�̌v�Z
pr.sdev2	# eigen()�֐��Ɠ������̂������C�����z��Ƃ��ĕ��ׂ�D

pr.cr <- pr.sdev2 / sum(pr.sdev2)	# �e�听���̊�^���̌v�Z
pr.cr

pr.crsum <- cumsum(pr.cr)		# ���听�������l�听���܂ł̗ݐϊ�^�����v�Z���icumsum():�ݐϘa�j�C�z��Ƃ��ĕ��ׂ�D
pr.crsum

par(mfrow = c(1, 2))	# �����тɓ�̃O���t��\��
plot(pr.cr, xlab = "��i�听��", ylab = "��^��", xaxt="n", ylim = c(0, 1), type = "b")	# �e�听���̊�^�����v���b�g
axis(side=1, at=1:4)	# �������𒲐�
plot(pr.crsum, xlab = "��i�听��", ylab = "�ݐϊ�^��",
  xaxt="n", ylim = c(0, 1), type = "b")	# ���听�������l�听���܂ł̗ݐϊ�^�����v���b�g
  axis(side=1, at=1:4)	# �������𒲐�