PGDMP     &                    z            users    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16395    users    DATABASE     e   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE users;
                apiadmin    false            ?            1259    16404 
   timestamps    TABLE     ?   CREATE TABLE public.timestamps (
    id integer NOT NULL,
    created_at timestamp without time zone,
    is_updated boolean,
    updated_at timestamp without time zone
);
    DROP TABLE public.timestamps;
       public         heap    apiadmin    false            ?            1259    16403    timestamps_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.timestamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.timestamps_id_seq;
       public          apiadmin    false    212            ?           0    0    timestamps_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.timestamps_id_seq OWNED BY public.timestamps.id;
          public          apiadmin    false    211            ?            1259    16397    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(40),
    password character varying(40),
    age integer
);
    DROP TABLE public.users;
       public         heap    apiadmin    false            ?            1259    16396    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          apiadmin    false    210            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          apiadmin    false    209            b           2604    16407    timestamps id    DEFAULT     n   ALTER TABLE ONLY public.timestamps ALTER COLUMN id SET DEFAULT nextval('public.timestamps_id_seq'::regclass);
 <   ALTER TABLE public.timestamps ALTER COLUMN id DROP DEFAULT;
       public          apiadmin    false    211    212    212            a           2604    16400    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          apiadmin    false    209    210    210            f           2606    16409    timestamps timestamps_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.timestamps
    ADD CONSTRAINT timestamps_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.timestamps DROP CONSTRAINT timestamps_pkey;
       public            apiadmin    false    212            d           2606    16402    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            apiadmin    false    210           