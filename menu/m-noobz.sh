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
BZh91AY&SY��{ ���yz������������p�F��  `� w�Z���Aޥ�n��Vn�����v��wn�v����5v�����z;�+�wyPe��F��50	�# $�S�G�P=	�cDSQ A�Q�i<�����P�zL5'���&�4   h �h�b14��4=S�cFz�I�dm@Ѡh�   ���i12S��ѐS�OԚ~Rl�O�Q���P򞧩�'��hd���4Q�L���e4�1=&MP4ѓL���F��     4�E"
m F��	�0��44Ч�)�=�  @1� i�W�Dc��si~�S��?n�ĩ#��=��?-��,����v;���~md�WT�k��y�aa5RD�n��"}S��oD����[k�=!}(���V�� S	"�`y��"���W����r�U�ν1�̳��L�7̥��n�ѵ�F�&��L/h��I6�!�9� �CIW�:������^;�Kt;��!w��B�3�^u<���6k�HHsB@���a�-̈́o����a�I��4�����d���H���S�$�,����2����t�rp*U��u� �]9��wC�����:�J�X$���`s&���R[����6���A޷H������pU1���C<֙jR���Aydl9��|��飌�x�� ]I��V�:�l��=p�F�Dt�dE����"���|�w�TN1dOS�������60�5�qr�������Þ����}@��"S�.[T�����\l6	�R�i�F,�������m���L�l̗��3*O���$��W��U��̎���l&B���������>_9���Y[��BT1 7�P�]��D�T��8R�ϡ-���2$�����X/Z��fR"��"W�q�Mu�QR�9BM�N9D)G14�<��L�>X�����Q����q�5O��2-h�G�������.dd��Ա�s��V'M��;l:���1,��H��[z2������FP��lR��E+�/�2_q�W%����$�����;���2�vݎض�;���.X@!�"��g�`�>}�	1����4l���Jj���:�n���K�
��\�lN v��IޅQ o���@@��T�8Ph�,�M[�+A%�IyxR��?����"�J#�q%�>��0�������;��n˚���Q%���3
����0!ௗ��ɀ���q�*��H9��}}��"]�JP��#Sc��cr�8DI�ذ��f?E�La�F�}I�o���Y=?��}>O+b��]^������ ��&�r���7�Za��9L��A��́��@?L ł>b9xe\�6z�ճ�,�q�������ȸ����u4���kt���X���TK81�}�,Q�;#'��#N�}HT-L)a �^��j��ۍ\&t��ْ�L'D6JI��f����(i��F��kF=�I�����8b;B"m��h+������7��gA� @�F�q_���pBΧX���r]�I�C�k�vl捪����ĀD�Gwr��zU�A,��~��պ
��s������n({g!@J��!�;�$��$��������G��V��������Ԇ�Q�3�{<�޺�/c��qLyur���v�R�K�OP�w-i����>Hu���q����J���G�Uߎ8Z��ܿ�"��o��9}<����%
��AY����y���(Y"μ6�����B�\����/"������0��ސ�F;6j�b���}�ޓ .MБ�,# ��.�B��~��r?h��K�nTE�E@~�[�o�z�m!�3�Aw����CCh�%�ٔ��������ސeBv�p*ҁ��,�U�v����`%�70a��hi\���Mp��d}szd��&L}�>z6���KM,��s#��@�<�1F	5U���Y�� �U �V���O���zխ��
�aeP�i�|$�{�Dv|��N@���|^|9ZB1=X�4\��~a�!�L����`��c�����6�o�����M0-���	���-i��L^o��� �����f/�n:�mZ�0[�%����j�V����A��S���|�#F	A-�ĺ$�S��mH��.�8Q�3�4����$L��LI���dID��~�m׮d߄�EqTK1H�mD[f>VƤS�ܮH���� -�F�g����䫒Dt}{wl\����N8h�粓/Z��r����J(3�䬩T���\~�>�����Y���&�b2���.��^k5���v�J" (_.��6�о�ˬaTK٣=��hCA���GSHU�3�&��i�w��d�u8�᥁�T�M��}���<�N:)R�d_���A�8U-�a�H��,ǘ��+�mq���I��XG�^���Gd��o�돪��z�Co;�l��j��dR/2��Z~sۦ��mR��(�
)�V�e��!1K�ː_�p9(hJ%�\��-��1KK:ʛj�I),�.���5n:kš%Z� �:l���@��$���:Z�(,v=���ޭ3y�vN�oY��8me����a����\�"��;�Y05.&�Z*�@I�J����U��l���T]�ݛ����̩ �S�>�'O�`���3 Ѷ)=.�[�BD�J�]Fce���9)L�i���2��Ш
g��ʲ���d)�|ҩ4�Iǁ�ł��%`�V�]�r8���̛��-,�5Eر�Ax�4�������I�ݲ����i�ps��HK��^=����TA�f�s�u��$Q15z�ttjۙbiٮ�a�2�2������o�8���]0��HQh��0w�{����Q&�p��D#
�U�ȁ�+�۳��ͫ-n��MȘ`Z�A$�罹|�rƗl:��m��r������r�d����ќ�2rpݺ�. m��A�N��Y�(h�m-��m�����<�*p͙0.�::�#�{":p��F���5[��p�?R�:�	�#�{�$_�d��� �J��,A@��ibf��|����!�	��,4�2�0Ph��>�B��?'�g½������\8�'�&efC�g�:�9���<�p��kx����э}�
�����z%t��@3(�@�%���f[A�$��kXg^���e���]��;� ��EG`.p6��M�-���@�ȷ\D���z��]_o�[�n)|�	�I�ń|�Pp��ށ!$g�
�s˫^G�ѩ���f|)�#��`A���/��]d`�Z^�=��Y�XkB[!����� 1k�\.����;�qv��7 e�ZBt1k(�pS
蛑�}����������8�sĒ5�S� P���Ǌ�d
�[�P��1k�>��z�� ����y�ܺ��4��u{��a5���ɴۢ�>z��_/8A��r�2�@؆���y����mS�lD�`���mb#����z*�Bm� ��X]�G!�(����3N	6�e�r�D,�v��c�u�v�Ϸ��&=�M��pX@&���C�<��`@��|<)��� �-I��o�ꏄ�^׫�_�%�W66��ǯ	p�d�PЖ�k�ᲨѲ�IF����:;ѱ��>�!���A4�D �T�#�w��)l�/�
k� �<�D�s��<t���<����o]7~�^A�%�g�z��%%ɓ��&�q���f��cdk(R����UT�|ݎ�[A1d��m�@��ݩ�!�́�w�Y��6��i�[d;k����te�7>��g��|'��'�wZ�9m��<d)
������q5�x�  ��y�W5�����
3=���|����q����6�0�̪J�v�J}˪�ƪ�� WV���J�U�to�ԔO<��8��U�#z��nSN���|�i`��%�x��*�*��kM��xLG�Չt��������s��q�s�NF�
�c�و8���%"}���ߕ�ki�B�>aB-�Y�Α-��[=�(	�P�ױ�B�Q�1s�+(p�f/B�6՝9��� i�C����@�� �rX��
~}�[�i`fH�J̀�W2E�M���J]�MZ!h�2��0�J�"9q�A��SL���D����i�G׾g��F�#�7~�ca}�����"�ad/ͻ�=b_�B	@@p'�=`���z�C�9E{�{�i������y)��1�10wWH�I�@1	��88����\َ߭��-�{��^8����#�%l����<�1��T��� G�0�i�&�\�1@�g�RP(9��)%������
�*�=���[��d9傜��j��Cb��H~�\c<���\�'< �D(ɢV�qQ8���_�f ``��ڨ14;�ˁq���'�a[����S&���M^C.�aq�%�r�\��dm��������><�T֕A��Eòz
�Jij~������,�"� �,B�M�"ϐR�l���W�x9� gC� �%q�]ο^?hdr�.'�_ew5�7�C{Ý��$c&ۂ����z��#<��ڣM�㏇�cV�ۺ�.q��4^�´�`u�䰴� �*�P$%"~�)��M��,6'���ש����~�������=�U�C6���A B�o黚A+��^�.�}ғ.��Pt�g� .O��5�|z) �cT�v�yd��E�K��>Bz@ ��B2�B	F�i3̾r#��4��H޽���+@�MP
��A��!�J�	��m� WdQ�EeE?� H3E:a`B� � 쀄*�V	��?�D0`��v�#$d��E%�QF��!�HD�GD�>����"�(H@�~��