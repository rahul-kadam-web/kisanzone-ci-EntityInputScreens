PGDMP          #                y         	   kisanzone    11.11    11.11 :    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            T           1262    16393 	   kisanzone    DATABASE     �   CREATE DATABASE kisanzone WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE kisanzone;
             postgres    false            �            1259    16524    admin    TABLE     H  CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    username character varying(20),
    password character varying(20),
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT admin_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.admin;
       public         postgres    false            �            1259    16522    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public       postgres    false    197            U           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
            public       postgres    false    196            �            1259    16554    brand    TABLE     &  CREATE TABLE public.brand (
    brand_id integer NOT NULL,
    brand_name character varying(20),
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT brand_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.brand;
       public         postgres    false            �            1259    16552    brand_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.brand_brand_id_seq;
       public       postgres    false    203            V           0    0    brand_brand_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.brand_brand_id_seq OWNED BY public.brand.brand_id;
            public       postgres    false    202            �            1259    16544    category    TABLE     -  CREATE TABLE public.category (
    cat_id integer NOT NULL,
    category_name character varying(20),
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT category_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.category;
       public         postgres    false            �            1259    16542    category_cat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.category_cat_id_seq;
       public       postgres    false    201            W           0    0    category_cat_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.category_cat_id_seq OWNED BY public.category.cat_id;
            public       postgres    false    200            �            1259    16534 	   customers    TABLE     1  CREATE TABLE public.customers (
    cus_id integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    email character varying(20),
    mobile character varying(13),
    password character varying(16),
    pin character varying(6),
    city character varying(20),
    state character varying(20),
    address character varying(50),
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT customers_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.customers;
       public         postgres    false            �            1259    16532    customers_cus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_cus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.customers_cus_id_seq;
       public       postgres    false    199            X           0    0    customers_cus_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.customers_cus_id_seq OWNED BY public.customers.cus_id;
            public       postgres    false    198            �            1259    16603    order_items    TABLE     �   CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer,
    pro_id integer,
    quantity integer,
    sub_total numeric(8,2)
);
    DROP TABLE public.order_items;
       public         postgres    false            �            1259    16601    order_items_order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.order_items_order_item_id_seq;
       public       postgres    false    209            Y           0    0    order_items_order_item_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;
            public       postgres    false    208            �            1259    16588    orders    TABLE     4  CREATE TABLE public.orders (
    order_id integer NOT NULL,
    cus_id integer,
    grand_total numeric(8,2),
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT orders_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.orders;
       public         postgres    false            �            1259    16586    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public       postgres    false    207            Z           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
            public       postgres    false    206            �            1259    16565    products    TABLE     �  CREATE TABLE public.products (
    pro_id integer NOT NULL,
    name character varying(50),
    image character varying(300),
    price numeric(8,2),
    quantity integer,
    description character varying(1000),
    cat_id integer,
    brand_id integer,
    added_date timestamp without time zone,
    modified_date timestamp without time zone,
    status integer DEFAULT 1,
    CONSTRAINT products_status_check CHECK ((status = ANY (ARRAY[0, 1])))
);
    DROP TABLE public.products;
       public         postgres    false            �            1259    16563    products_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.products_pro_id_seq;
       public       postgres    false    205            [           0    0    products_pro_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.products_pro_id_seq OWNED BY public.products.pro_id;
            public       postgres    false    204            �
           2604    16527    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16557    brand brand_id    DEFAULT     p   ALTER TABLE ONLY public.brand ALTER COLUMN brand_id SET DEFAULT nextval('public.brand_brand_id_seq'::regclass);
 =   ALTER TABLE public.brand ALTER COLUMN brand_id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16547    category cat_id    DEFAULT     r   ALTER TABLE ONLY public.category ALTER COLUMN cat_id SET DEFAULT nextval('public.category_cat_id_seq'::regclass);
 >   ALTER TABLE public.category ALTER COLUMN cat_id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16537    customers cus_id    DEFAULT     t   ALTER TABLE ONLY public.customers ALTER COLUMN cus_id SET DEFAULT nextval('public.customers_cus_id_seq'::regclass);
 ?   ALTER TABLE public.customers ALTER COLUMN cus_id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16606    order_items order_item_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);
 H   ALTER TABLE public.order_items ALTER COLUMN order_item_id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16591    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    16568    products pro_id    DEFAULT     r   ALTER TABLE ONLY public.products ALTER COLUMN pro_id SET DEFAULT nextval('public.products_pro_id_seq'::regclass);
 >   ALTER TABLE public.products ALTER COLUMN pro_id DROP DEFAULT;
       public       postgres    false    204    205    205            B          0    16524    admin 
   TABLE DATA               b   COPY public.admin (admin_id, username, password, created_date, modified_date, status) FROM stdin;
    public       postgres    false    197   F       H          0    16554    brand 
   TABLE DATA               Z   COPY public.brand (brand_id, brand_name, created_date, modified_date, status) FROM stdin;
    public       postgres    false    203   $F       F          0    16544    category 
   TABLE DATA               ^   COPY public.category (cat_id, category_name, created_date, modified_date, status) FROM stdin;
    public       postgres    false    201   AF       D          0    16534 	   customers 
   TABLE DATA               �   COPY public.customers (cus_id, fname, lname, email, mobile, password, pin, city, state, address, created_date, modified_date, status) FROM stdin;
    public       postgres    false    199   ^F       N          0    16603    order_items 
   TABLE DATA               [   COPY public.order_items (order_item_id, order_id, pro_id, quantity, sub_total) FROM stdin;
    public       postgres    false    209   {F       L          0    16588    orders 
   TABLE DATA               d   COPY public.orders (order_id, cus_id, grand_total, created_date, modified_date, status) FROM stdin;
    public       postgres    false    207   �F       J          0    16565    products 
   TABLE DATA               �   COPY public.products (pro_id, name, image, price, quantity, description, cat_id, brand_id, added_date, modified_date, status) FROM stdin;
    public       postgres    false    205   �F       \           0    0    admin_admin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_admin_id_seq', 1, false);
            public       postgres    false    196            ]           0    0    brand_brand_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.brand_brand_id_seq', 1, false);
            public       postgres    false    202            ^           0    0    category_cat_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.category_cat_id_seq', 1, false);
            public       postgres    false    200            _           0    0    customers_cus_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.customers_cus_id_seq', 1, false);
            public       postgres    false    198            `           0    0    order_items_order_item_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 1, false);
            public       postgres    false    208            a           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);
            public       postgres    false    206            b           0    0    products_pro_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.products_pro_id_seq', 25, true);
            public       postgres    false    204            �
           2606    16531    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public         postgres    false    197            �
           2606    16561    brand brand_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (brand_id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public         postgres    false    203            �
           2606    16551    category category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cat_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public         postgres    false    201            �
           2606    16541    customers customers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (cus_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public         postgres    false    199            �
           2606    16608    order_items order_items_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public         postgres    false    209            �
           2606    16595    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         postgres    false    207            �
           2606    16575    products products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (pro_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    205            �
           2606    16609 %   order_items order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_order_id_fkey;
       public       postgres    false    209    2752    207            �
           2606    16614 #   order_items order_items_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pro_id_fkey FOREIGN KEY (pro_id) REFERENCES public.products(pro_id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pro_id_fkey;
       public       postgres    false    2750    209    205            �
           2606    16596    orders orders_cus_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_cus_id_fkey FOREIGN KEY (cus_id) REFERENCES public.customers(cus_id) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_cus_id_fkey;
       public       postgres    false    199    2744    207            �
           2606    16581    products products_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brand(brand_id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_brand_id_fkey;
       public       postgres    false    205    2748    203            �
           2606    16576    products products_cat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_cat_id_fkey FOREIGN KEY (cat_id) REFERENCES public.category(cat_id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.products DROP CONSTRAINT products_cat_id_fkey;
       public       postgres    false    2746    201    205            B      x������ � �      H      x������ � �      F      x������ � �      D      x������ � �      N      x������ � �      L      x������ � �      J     x����j�0���S��Hr츹�K ��ZY�n��}���6�с����#bo��!XQ��7~k)�g���<I�⶙����mJ�=?�5��� ���+����}Y��qV`�?:�b ��~F$�j<����#/�Kj���%n"5֥��i�lkC��8eU��k�GF��Ƥ
��%����<GPl�7���n˫|��e�����������S�؉�z= 4G#3Q-K� U�IeO	�qEWy�N     