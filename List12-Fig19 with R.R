library(kernlab)
data(spam)
pcat <- prcomp(spam[, 1:57], scale = T)	# ���֍s�񂩂�听���𓱏o

pcadf <- as.data.frame(pcat$x[, 1:2])
# iris�f�[�^�Z�b�g����听���C���听���Ƃ����V�������W����̃f�[�^�Ƃ��čl����i$x���听���X�R�A��^���邽�߁j�D
pcadf <- cbind(pcadf, spam$type) # ���X�������悤�ɁC�V�������W�����߂��f�[�^�ɑ΂��Ă����x���̏���^����D
colnames(pcadf) <- c("PC1", "PC2", "Species") # ��ɍ����悤�ɗ�̖��O��ς���D

library(ggplot2)	# ggplot()�֐���p���邽�߂�library(ggplot2)��ǉ�����D

pr.cr2 <- round(100 * summary(pcat)$importance[2, 1:2], 0) # ��^���̌v�Z���s���C���̒l��100�{���邱�ƂŊ����Ƃ݂Ă���iround()�͒l�̊ۂߍ��݁j�D
pr.cr2

ggplot(pcadf, aes(PC1, PC2, color = Species, shape = Species)) + # ggplot���g�p���āC��������听���C�c������听���Ƃ��ĐV�����f�[�^���v���b�g����i�������CSpecies�̈Ⴂ�ŐF�ƌ`�𕪂���j�D
  geom_point(size = 2) + # �U�z�}�Ƃ��ăf�[�^���v���b�g����D
  xlab(paste0("��1�听��:��^�� ", pr.cr2[1], "%")) + # x���x��
  ylab(paste0("��2�听��:��^�� ", pr.cr2[2], "%")) + # y���x��
  ggtitle("PCA") + # �^�C�g��
  theme(aspect.ratio = 1) # �}�̃A�X�y�N�g��