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
BZh91AY&SY왐�  ���g�� ����������@D@  P[ڻt����]	$D���?J{I��==S�S�ڙ�?Tdhdd�F��a)F���I�6��44      �P 1$�	��P�!�4  2�� h 8i��CCC#@2 ��h� ���H�'��f�%<ҟ�T��z�PG����4��@j4�H�M�	��&;U�!Ab��	�:��ȅ��S�Q���B��c=�]zkf�p����QÒ�4��d��9��it0DV3\{�#�9��� �����W�2<k���'��74W{-����,�f���'����r�r�F���4�r���
�~ »0,1$l0�8��ں����Nʹ�"s�\xb��V4��b�Cw����3�P����FA�G(&	 ����n�}Ҭߡ
�Z�a֩:2R���Z9�����kx��U�h�:"z�6X&5��s�"�9Xj
5c
�U@y��ʂ���� -�KU�Oh4_�����8Q?�U�'b�LP�A�U�~	���q`jg0��7��G�w(��1��8�������CT�f�����┯n�*鑡�,|e�R: ��S[A3taBz��صw�9I.-u�1�GXxe�}�h]:n�2-s3xi�IB`��pj�8�sġ\0~��X	*�M��������8c*�������͈��[��LI�PC��G�x�!�E��c�@�����q�$�i���x��X�Y���Pk�H3!���?�����A���C ��JŎ�X�H�Z((�K):��^��P������*�e���,�ڃ�������-(��`�	6��E���Oؽf�Uʆ/_�.��X�`i$$�!�ɏN��F��ʲ'1�M����V�����A��C�Әf�88�LA��4�a��\�c��dy�>:ڲw�#+K
1E�O���7�����C2�i1v.����&3�3���`��KmP(��)
J�%� �ۅ�9��V2�*�	E
 ����t�Jԍ�iZʬR��3C
!��J	"�[J6<�J'"�A��Zt�m+�/���AA#l������0��-���7qlc� 쵟W5�u�CI!��z:ȑ�a�,"88��w$S�	ə