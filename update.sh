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
BZh91AY&SY����  �߀ ��%�*����P�o{�w��j�R)�)��3&�ɣ�0� L�(�@�A� �z&��i�F����CF@ 4  ꒃI�=#�i�F��   �A��Ҟ���=L��D`���=:��nM\x�sc�?7��NTc`��!*$�5�Y:3I�:�7+'I�RA:9%d����k��̪��������������͏N;�v��IeP �F�*]}s#ʃ7w	m1@������-��[T��A]�ʊ�䪴��s*p�U���F�!އ{*� �F6�GJT"���|,��x�=A-̬�;P	`�gިYQEQEu!%�0BK���"�	H����"Ц��d�n� xi(\z��L�*	T|=O�/Tb���*D�(�"*�b�v] +YU�������I�RU�9��1p��b��wc���^�Pv�-P����z�g:w}9�G��H�.����6D[�n��"��ՒI$�Z�����W9�C����oՅU%T�N0�7jD\8�2-�)���s�# `e:�vJ�����](tGf��d*.�h+V�|ܯ&�Z��ʀYe���b�!��"׆HHX�iBBbv̎��!*i��8�ԱL%rM	76!m�� ��9Rj�I&�^�̹)Z�iP|��\�_�1xv!~��kd�[2�]h��^��GdκqH������iʧ)'.��g��2������lP�٪h��S&f+��HkiRA�t��UU����URE�����;f�.A0}J"�V�$�I/lPP �=�&���"�\J��.�p�!wcw�