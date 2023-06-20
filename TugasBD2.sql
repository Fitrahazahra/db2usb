PGDMP         *    
            {            retail_final    14.6    14.6     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16446    retail_final    DATABASE     p   CREATE DATABASE retail_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail_final;
                postgres    false            �            1259    16452    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16462 
   pembayaran    TABLE     y   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16457    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50),
    jk character(1),
    alamat character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    16447    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50),
    no_hp character(15),
    alamat character varying(60)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    24717 	   transaksi    TABLE     �   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_pembeli integer,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16452    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   �                 0    16462 
   pembayaran 
   TABLE DATA           P   COPY public.pembayaran (id_pembayaran, tanggal_bayar, id_transaksi) FROM stdin;
    public          postgres    false    212                    0    16457    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    211   �                 0    16447    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, no_hp, alamat) FROM stdin;
    public          postgres    false    209   C                 0    24717 	   transaksi 
   TABLE DATA           I   COPY public.transaksi (id_transaksi, id_pembeli, keterangan) FROM stdin;
    public          postgres    false    213   &       n           2606    16456    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            r           2606    16466    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    212            p           2606    16461    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            l           2606    16451    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            t           2606    24721    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    213            u           2606    24702    supplier fk_barang_supplier    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT fk_barang_supplier FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.supplier DROP CONSTRAINT fk_barang_supplier;
       public          postgres    false    209    209    3180            v           2606    16467    barang fk_supplier_barang    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    3180    209                  x�e��n�0�����l�D�ėN�vA,��"v�4Z�ږ;��%;A����E~�$<���M�e�����U'�DQ��B,HH(���g���Ux�Ŷ@�(| �Q���x�}k:�tgI�����h,�I�6� ��b�Xۓk�������V�b*�����=/��)�����Ϊ^aa�
i�dޓ�g	���FA�vĭ��[�l�a�^���i�,�	������P�.cU�_k�ܪoFF��ꖻ)���(;���,���iܝMm�~"Af�2��ZՍƇ;�'�9%1:�[���$S�1<;���[ܹט�L��#�(ӻ�$��K�ѶF,����O�Eq�qQ��`8)�	�_���͐�R5�`_�I��߈EDW���'%	��#ZΔ)�qBe�1��qF�-ŰS�4(�+]�7N`7�/�*dSi�8lJ��?m��G�k��<~o.�I)<�P0 �ܦ#?]Ƥk7�P8�s-��^�hz�r~�<I.ǛVn̛��ֺwūs���L�D��oΞ���}��!��c}����ϋ��?�:�         �   x�U���0DѳՋ2�,�zI�u�xLr}�,덭u��u�]��6D���M!��~��.h@v�ʇ�	��	M�,� ���) �I��/(��₮��*�z��P���^�K��Z4 �O��$�ϟ�'D�Y�K(�]ʪF����/�ʈw+2�xE\4��,�e�,�x�q/⃌q<��ӌq�*b��8Q-�'�,I������JVԄ{�����G{�Zka�         D  x�m�Mn�0���)z��&	�%Mv%JUU��L�C&1Q����c�V-d����`d�@�J�pĺ�@
	iݡ�vؒ���
��x�ޘ��zh	�������'�,S�����w�(���U7���)��Ć#h��n	��Q�*GV�9�q	9<+sqN�zM�m��bs��D{�M�%��5������iG}鑔�zy������3����_�%���Sl��K�/`G�y;��O�����\�^i�/���Ʋ�%��O����q7��GS3/���E�I(��״M�j�}�~�G�{h:�0�����?�����Q<A�5��2         �  x�uT�r�0|6_�h2�͖I�������3�P[�Hv;��{$95Іf�w�V�{ g��ݛ�=�N�ڣ�"�1&9|��[������Q^�	�$^��N6ͥ�i��\xO(#/�?��Rղ��4��[�������� �"v���^"Y�y�$G*�e���t��5�������E�~����w��V�[,r���f�]�N�� I����W�w/U�ZY#���*>"�d�lڶ�!�� ��p�� ����Z�F�k�4��[Pa�����+]I"y$��f����Bf� ��^�G���4Z9��M� H���h� 8)�ų�u��x�	y%N�)�P�gm�=����g�S�S�9�>X��`��Nq>����@@8EN�gɗ�;t��N�!%�M����d�� ��f�s,�jmn����K�Ģ$q��t�N�lf�kB�Bjfכ�p��J�t��E6�/�X���k���3h*|%�KZ���0c�hr�mu�?�m�;�z����J�Qj8)x�1e�}��6}}� L�~R��*��Pf�W%�ky��װڤ8]��锃��=��*��ẃ��a���7��@�x1�x&��n[�>_��g
a�֔�7z΁"a6��:,翻���"g��7��a������v�3�DJAJ���l�[e8[Zs@s����(��H̕��;�������d2����\         �   x�U�;1���%���v�HI��+�f�[�����>������`BY��l̪�̦̮L�P�TN�q%�9�TA*P�@�U�
TA*�v�P�Uؒ*�TA�X*�c�d�j�[6Cjo�۟㮊�����O���3��_�R�,#m(     