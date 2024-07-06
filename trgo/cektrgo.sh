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
BZh91AY&SY��H  �߀ }�����?���@���f��$R�I��i�MzMji���yG�S�f���4�=0�4�&&���h�	��4ybM&�Lhd40�&a�I��i���L4�h��hii��m����.�M=}1�<|��hU7���Ȱ�Vv-�,����h)R\2��g_��z��I���#2��L����U�����/M�ڰ��k�rmt�.
-�px���,�B9AY%Lh�{��o�29f߹s.u|�Oe�� ~��q�}6F�a��	@[,0���;OOb&�p)D��1�@������,��r���w���&����%�K�9H���π1шɬ�f~ � ��L�T�-6�%����H{�:���ᚩS8\:�n00j�g?\)���A��{�$&�Ϥ���l�.5x��+W�Y�_�� ��<C�l6����
v�ك�J�g0:k�b��w�Y@�s0|���o�g��K�FM9|��R	ş��rZ�A��k�ALt-�g��%Y	��:�>ѝ�G�(�*N#��N��j���#Z>h	�$��00�	pE�����H��<��-8�¦�L��%E`�zp���r,�n[ĭZ���ի�\���l8LEQ�9�8dWG��Pn$��%����BG�bDg2,x��Gu�I���FH�y�nY 1Cm(��
+�'3�"J�����G(�	M(�J7��E,���0(�.��G!.z�2H�i�e1=���
�2�:���F��w$S�	
��