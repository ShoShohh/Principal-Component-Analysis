# �f�[�^�Z�b�gx�̕��ς���̃N���X�ρi��Ίp�����j�Ɠ��i�Ίp�����j�̘a��Ԃ��֐�
crossproduct <- function(x) {
  n <- nrow(x)	# x�̍s����n�ɑ��
�@p <- ncol(x)	# x�̗񐔂�p�ɑ��
�@center <- array(dim = p)	# center��x�̎������Ɠ����傫���̔z��Ƃ��Ē�`
�@for (j in 1:p)	# center��x�̊e��̕��ς���
 �@�@�@center[j] <- mean(x[, j])
 �@for (j in 1:p)	# x�̊e��ɕ΍�����
 �@�@�@x[, j] <- x[, j] - center[j]
 �@crossproduct <- t(x) %*% x	# crossproduct�Ɂu�ix�̕΍��̓]�u�j�~�ix�̕΍��j�v�����ip�~p�s��j
 �@return (crossproduct)	# crossproduct��Ԃ�
}

x <- as.matrix(iris[51:100,1:4])	# �s��Ƃ���x��iris versicolor�f�[�^�Z�b�g����

colnames(x) <- NULL	# covmatrix�̕Ԃ�l�Ƃ���sigma��Ԃ����C�s���܂��͗񖼂��ۑ�����Ă���̂ŁC������폜
rownames(x) <- NULL
A <- crossproduct(x)
A