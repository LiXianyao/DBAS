use DBSA
create table tbKPI
(
��ʼʱ�� datetime,
���� int,
��Ԫ���� nvarchar(63),
С�� nvarchar(255),
С���� nvarchar(63),
RRC���ӽ�����ɴ��� int,
RRC����������������ط� int,
RRC�����ɹ���qf float,
ERAB�����ɹ��ܴ��� int,
ERAB���������ܴ��� int,
ERAB�����ɹ���2 float,
eNodeB������ERAB�쳣�ͷ��ܴ��� int ,
С���л���ERAB�쳣�ͷ��ܴ��� int,
ERAB������ float,
���߽�ͨ��ay float,
eNodeB�����S1RESET���µ�UEContext�ͷŴ��� int,
UEContext�쳣�ͷŴ��� int,
UEContext�����ɹ��ܴ��� int,
���ߵ����� float,
eNodeB����Ƶ�л����ɹ����� int,
eNodeB����Ƶ�л������Դ��� int,
eNodeB��ͬƵ�л����ɹ����� int,
eNodeB��ͬƵ�л������Դ��� int,
eNodeB����Ƶ�л����ɹ����� int,
eNodeB����Ƶ�л������Դ��� int,
eNodeB��ͬƵ�л����ɹ����� int,
eNodeB��ͬƵ�л������Դ��� int,
eNB���л��ɹ��� float,
eNB���л��ɹ��� float,
ͬƵ�л��ɹ���zsp float,
��Ƶ�л��ɹ���zsp float,
�л��ɹ��� float,
С��PDCP�������յ����������ݵ��������� bigint,
С��PDCP�������͵��������ݵ��������� bigint,
RC�ؽ�������� int,
RRC�����ؽ����� float,
ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� int,
ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� int,
ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� int,
ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� int,
eNB���л����ɹ����� int,
eNB���л���������� int
)