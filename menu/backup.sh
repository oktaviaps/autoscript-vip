#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYj=��  ���=s �����������PD@  PٻsqӜLf8��QM0$z#L�i���z�b2d�M2ba24�OMM����	�z
z5OQ��dh����  4`��iG��G��OS@ � h�   ���4 4� 4i��&@ 	")�jh���=S�SCOI�ɠ��  h  h!�N�����s���ވ9�F(�ΣЪ&%;%b:�0��+h�1�?wʩ�* xO�����U��v�Ȉ}�x�VK�^����6i*�왝�Yə��,V�<���H�\C�J�ra݆,��
�;�E@T�BJ�[a|L�R��g��	0�S<��{��/�h����j�q�?��^��%�S�D�[R��cu$�5�ַ��~�nn����X����}E:Ǽ��Q^N�)6D8�9���d�p!�W��Lث]!!:���)�Yz_�dŎ�-٫!�=p��;친���Gy< ��M5����AD�� ��RF��e3c3j�>mE c+����a��R�/�/�mԄM��r�\Xv���͊MY&�a�V�5�0�4�ˀ�J���c�g���=,`�ŧT�:PTh��U����GL��fZX�Gxi�������%�V�O�߅���GH��i���0=|�:V�����!�u%f+���V���L��9%�Aa�;b�t�so���Cw4�4�:
Bq��.k�%Pգ/��pT��Fe��9
.Ir:R���r>�V뵺%��0~��^p�TUU���k9j_eM{��G&��r�����$�����f��I��Q6��$泫V�0C�%ĕ��aIE�BNXW�CxiE�[]�Q�m%��[���:���,>$�$)��4rho��Y��[���6���ZĪ�^	���)�j�Kx��0��"����*H����N���mj!GoBf:��I���Q�Pl�TS	!˔�#>Ê�*'�o�.��x�vx���Ji
��d6��-�*����e�T�a���b3P��u&("~�Z�Zҥ���H��A C1�Q[�+"�d(�'���u)BS!)�a�����|�EM�R��ɗ1��6�w�\��<� ������ݤ6������8�C'���@���5�D�h!,�~���|�
�y2p�gM�8D�b��n"����'C	"���Ϸ#�B������127F�r�ҭ3FP����y02(+6�` �mƂ����J��TC��	�?��qh�SQ�5�,�b9���X6t��@)�$b��c� ���r��9�W��z�yAQ0�� ��|�j�0�e��+���@�	��S���h�6X9�'P��Q-�a�r�5��A�g��n�� Ba0� �)��@ 5���ܑN$�l��