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
BZh91AY&SY[b��  �߀ �}���?!�����P3i�w��s^�ɥ��%)�LS�O&&�?C�H��zf������S�G� h �4��5S𚧩�4��=@�=#@� �=S��5S
��<���20� �h@�6�m=PL�i�` &=D���ܺ��"�� w}5�y'��|Ba]T͞�ɉN~���$�6���[65�4`3����Z�����b�������*/39FM@d+�"u�­��F���Um��v�X�|9.�n���[3���|�D�b��.i>�������?.�-8�����/X�w���a�/���2���pH;ُ7>���F5���&��0�ZNh�XEɊ���u�\�9��g�e7#*fG�8�H���.��7�r.�\%�8�:Q1�Թ���j��8.ּ�1�9�+(*�a>o�Zu�A��
�pY��Ԟ���\J~���j�$��}��Hxɷ�Xxߓ���<�������&�lzX��۸t��^{�����ۭ�Bm��H1j�ƽH���X/��C���d��00��i	s��6�U\>�`��`rE�){�b�Ff�5w2O79����3���[���S~���]tH�U��ӄ�j�φt�]ٽ/����n(���ڢ�Ԝ0������ʓ^|
*��������e�K�*T\^�Z�$�z���d �/B��ڨ�(2P�Q�Р�)8�T%�"ō$+.�Pv�U4C�<Z���G�q
ʷ����la�L�<��O��B�*�s���#�6R���c�҄�w�؃hIlVu�J4?���>e��;q�%�5kW���}#�YL�J��ٚd�`#V��V��SP����/�!H�-+Qk��8m؅�����D���CCxӱ��:κۡ<2U2�8�8\�ɕ�}MNZ@�eK�� �E�!Q&�ȋM�R�s�d��2�K�Rn��GRC5��"Ͽ�.� �s� �k�c��b��$�d%���p�8V\:�H�gY�@X�`2߿K�I+I���U�����a�ҙ�p�����;�5�4Q��ܸ��}E=��3�w��Y��)o'Ù&�������������=J[������H��*)ؽ0�𧔌������VB��	�ND��8��5
	�$��$)�F!bS�xB܌�I�B)�&��R//�i	�ͺ2�6�*+*L,{I�5�x�%��'v���f-��נ�2��n�s�s2U���@dsFÄ��Q�ℎ!��H�!��rjN��ฮ�l������/�]��BAm���