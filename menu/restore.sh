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
BZh91AY&SYhlE� �_�qs���?�������PD@  `>} �@    A��M4����F@ & 48i��CCC#@2 ��h� ���M4�hhhdh@M  0����i��� �C@i�  �M �&$�LSɉ�y�iO1L��=MM��6�=SeEMQ���6�� ��0�2�hjh�ha126�p�K�P�,ξ���O[[���h�`V�$>���k�����i�$~L�&g�{ĵ5��B6V��툧��B�fѵ�_�1
�s�o[	��o~��s6?C�Ԇw�3{L�9�d��&����Ȓu�n�@�,	��X̩�J޳H�a[�p�C�8���h-��ǲ�0���0���i�s��5�2H3���nO;c�Rd?��C��������w���3��a������ڛ��-�I���C;��?f�Ə��A��o��eE����A!Km���3I��5=����ٹ���s�p{���4�<��9:�Ṫ��d�q2Y�Cw	%Z'��^������IC�Oi����d?����쾧;r���O0M�t���3;	Dz_�����C��ؽ�����C@B�@B���;�x_+���/
�0�r
��'�h��ɜm0mE����N,���f-��ѹﭭ�5hIʏ�O�K���"R�0n'u����G�0Ѳ�'���	M��e�!����?M�)���C(j��.�P����A�$�!�<��!�7�څ��}�vXh�C'�n~Q�@)������mn��؉�����<b��a��i����@����{�R�֠ku�;У����+[��[�[�73�I&��pC�N3=�A6�C���y����CY�U�C�0� ���wXBm�;���lm:Q�o�8;K�� �+m|�̄��a����_`�lt?j�<��T�r�@�dI��t&�mjs�u�3.��<i��K�f4j{ic�ņ�ԙ솦�Ђ�'[�f���Ð		R�`wZ2x��[����6����$��u��2Ob%C[j�&�wXk
�B�-B�N��^���[�/��@9�q�ly]�!�4��yFC��xѐ�P2NVA@�!b�����;1$2k~a�klz���a�ms�d�l~C��7��0���x����f��A�t�:^��n� ��]���7;��O�<F-b�0!����'�f�Wű���0�w����:�t�A�uy�|�._���x[�f��6���klv0���!�!�2�!��S��4J�B-� Q�=L7��L�:$��jC��0Ü�6<�����@�s�y�����Ol,�\J3@r�'0���tv���Gp��(�ћ$$󵷰�ІnӭXf���/��-j����6�(�6���,�����)�1�ämF�0Y�gz��CZ62$fq�0T��or~� KC�ov��{xu�A�����k�:8����56�o`j^�2�.�fƃp�!+w�65��['XѬl��`<�ʍ&�'�fT�j��ܛ���6����9��������5��]���CKkA�48���i4�^��D�v�
ʄ9 ;�Q��
�`dF��tG]�C��iC���o��EB H�jo7Ɓ� �������"�(H46"� 