S <- A / (nrow(x) - 1)# x�̍s���i�f�[�^���j����1���������l�C�܂�49��S�̊e�v�f������ꋤ���U�s��̍Ŗސ���l�i�W�{�����U�s��j���v�Z
S

var(x)# x�������Ƃ���var()�֐���cov()�֐����g����crossproduct()�֐����`����K�v���Ȃ��D

cov(x)

eigen(S)$values	# �ꋤ���U�s��̍Ŗސ���l�i�W�{�����U�s��j�̌ŗL�l

eigen(S)$vectors	# �ꋤ���U�s��̍Ŗސ���l�i�W�{�����U�s��j�̌ŗL�x�N�g��

RS <- cor(S)# �W�{���֍s��
eigen(RS)$values	# �W�{���֍s��̌ŗL�l

eigen(RS)$vectors# �W�{���֍s��̌ŗL�x�N�g��