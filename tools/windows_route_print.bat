@echo off
set "time_code=%date:~0,4%_%date:~5,2%_%date:~8,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%"

cd /d %~dp0

echo.
echo ѡ���ܣ�
echo 1.����·����Ϣ�����
echo   ���������ļ������ļ�����
echo   �ļ���Ϊ��ǰʱ��
echo 2.�����µĹ����ļ�ͷ��
echo   (ע��Ḳ�ǵ�ǰ�ļ����µ�ͬ���ļ�)
echo   ֮��ִ�й���1
echo.
echo �����ļ���ʽ��ΪUTF-8����/CRLF��β
echo �����ֶ�ת��ΪUTF-8����/LF��β
echo ע�����ʹ��git�ύʱ
echo gitĬ�ϻ������ļ���β��CRLFת��ΪLF
echo �ο�: github.com/cssmagic/blog/issues/22
echo.
echo ֱ�ӻس�Ϊ����1
echo ���������ַ��ٻس�Ϊ����2
set /p is_cplx=
if defined is_cplx goto :CPLX
goto :SMPL

:CPLX
echo.
echo ��������ļ���
echo ����ʹ�ô�Ӣ���ַ�
set /p rules_name=
echo.
echo ��������ļ�ͷ����Ϣ
echo.
echo �������Ӣ����
set /p rules_en=
echo.
echo �������������
set /p rules_cn=
echo.
echo ѡ������������
echo ֱ�ӻس�Ϊ����
echo ���������ַ��ٻس�Ϊֱ��
set /p is_drc=
if defined is_drc (
    set is_drc=1
) else (set is_drc=0)
echo.
echo ���빱��������
echo ֱ�ӻس�ΪFQrabbit
echo ����ʹ����������ַ�
echo ���ļ��������߲���ͳһ��ʽΪ
echo By-XXX(XXXΪ������Ĺ���������)
echo Ҳ����˵�㲻��Ҫ����"By-"�ⲿ��
set /p contributor=
if not defined contributor set "contributor=FQrabbit"
echo.

:SMPL
chcp 65001
if defined is_cplx (
    echo #%rules_en%,%rules_cn%,%is_drc%,%is_drc%,1,0,1,0,By-%contributor%> "%~dp0%rules_name%.rules"
)
route print -4> "%time_code%.txt"
chcp 936
echo.
echo ��鿴��ǰĿ¼
echo "%~dp0"
echo ���Ƿ��������ļ�����
echo %time_code%.txt
if defined is_cplx (
    echo %rules_name%.rules
)
echo.
echo ��Ctrl-Aȫѡ"%time_code%.txt"�е�����
echo �����Ƶ�����վ����ת��
echo tool.ssrshare.us/tool/routeToRules
echo Ȼ��ο����·������������ļ�
echo github.com/FQrabbit/SSTap-Rule/wiki/��������̳�-֮-��ȡ���������򣨳���ϸ��
echo.
echo ���ת�����Ϊ��
echo �뽫����UU����ģʽֻѡΪģʽ��
echo ���߽�ģʽһ����ȫѡ
echo �����¼��ٲ��ظ����ϲ���
echo.
echo ����ļ�δ������
echo ���鵱ǰ�ļ���д��Ȩ��
echo ���ߴ�������
echo ����ͨ�û�Ȩ�޿�д���ļ����ļ�����
echo ��������ָ��
echo route print -4^> xxx.txt
echo.
call cmd