#!/bin/bash

# Skript pro stažení všech obrázků z Wix webu
# Spusťte tento skript z hlavního adresáře projektu

echo "Začínám stahování obrázků..."

# Vytvoření adresářů
mkdir -p assets/images/manipedi
mkdir -p assets/images/solarium

# Hlavní obrázky
echo "Stahuji hlavní obrázky..."
wget -q "https://static.wixstatic.com/media/11062b_61dbd21e9e0041c4b08c1b7fdee0c36f~mv2_d_6000_4000_s_4_2.jpg" -O assets/images/header-bg.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_d4537ccedd534b0abe1f0c3364e70274~mv2.jpeg" -O assets/images/logo.jpeg

# Obrázky pro Manipedi
echo "Stahuji obrázky pro Manipedi..."
wget -q "https://static.wixstatic.com/media/11062b_fdec3bbebf8d4dcdbaf22213cea2ecd0~mv2.jpg" -O assets/images/manipedi/gallery-1.jpg
wget -q "https://static.wixstatic.com/media/11062b_d1397226784047a5941b0e391e6e4258~mv2.jpg" -O assets/images/manipedi/gallery-2.jpg
wget -q "https://static.wixstatic.com/media/11062b_59c73aef515d40679995d10968f74638~mv2.jpg" -O assets/images/manipedi/gallery-3.jpg
wget -q "https://static.wixstatic.com/media/11062b_7cc40919971441eb823af69faf2c7a12~mv2.jpg" -O assets/images/manipedi/gallery-4.jpg
wget -q "https://static.wixstatic.com/media/11062b_f559db1cc04e4659ba60bf315688cfeb~mv2.jpg" -O assets/images/manipedi/gallery-5.jpg
wget -q "https://static.wixstatic.com/media/f4e6b4d3adc942c2952a9a3198f6af00.jpg" -O assets/images/manipedi/pedikura.jpg
wget -q "https://static.wixstatic.com/media/11062b_cf4e25ba583547eb94cdfa63c47b19a5~mv2.jpg" -O assets/images/manipedi/manikura.jpg
wget -q "https://static.wixstatic.com/media/11062b_084d972442e04b5ca49ff58a5c29729f~mv2.jpg" -O assets/images/manipedi/parafin.jpg
wget -q "https://static.wixstatic.com/media/11062b_dd2251b39c704ef095a09f92a0f3135f~mv2.jpeg" -O assets/images/manipedi/epilace.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_482cd77da37d467ea0928d55d95c5f63~mv2.jpg" -O assets/images/manipedi/darkovy-poukaz.jpg

# Obrázky pro Solárium
echo "Stahuji obrázky pro Solárium..."
wget -q "https://static.wixstatic.com/media/b6e9b2_9c09bb98822144368ecb622164f4c05b~mv2.jpg" -O assets/images/solarium/main-solarium.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_f22b692811964c80b9dc956e22686559~mv2.jpg" -O assets/images/solarium/solarium-detail.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_0cd985ace80046e9956612813d29a789~mv2.jpg" -O assets/images/solarium/kremy.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_c9c488c4e4cb445585972e39076253ca~mv2.jpg" -O assets/images/solarium/doporuceni.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_bd675ee5dd5d434f805f464c8c4c3d15~mv2.png" -O assets/images/solarium/poukaz-50.png
wget -q "https://static.wixstatic.com/media/b6e9b2_d992e499e6d94b7bba30781e897276de~mv2.png" -O assets/images/solarium/poukaz-100.png
wget -q "https://static.wixstatic.com/media/b6e9b2_664cfc7d10aa4d7797ec2431581ab588~mv2.png" -O assets/images/solarium/poukaz-150.png
wget -q "https://static.wixstatic.com/media/b6e9b2_9427acbce9bc455b8d48cfdcfa79fff3~mv2.png" -O assets/images/solarium/poukaz-200.png

# Obrázky pro Masáže
echo "Stahuji obrázky pro Masáže..."
mkdir -p assets/images/masaze
wget -q "https://static.wixstatic.com/media/11062b_25c28d3a6ec84d40a1bad4467b539318~mv2.jpeg" -O assets/images/masaze/hlavni.jpg
wget -q "https://static.wixstatic.com/media/11062b_b8ba80d2e6ea43b3a9e6c1f9b4d3dd57~mv2.jpg" -O assets/images/masaze/sportovni-masaz.jpg
wget -q "https://static.wixstatic.com/media/11062b_78ea2e5aa4c648aca195e0f85894f91e~mv2.jpg" -O assets/images/masaze/balneo.jpg
wget -q "https://static.wixstatic.com/media/11062b_0f7972f71fec4767994517872ca954c1~mv2.jpg" -O assets/images/masaze/indicka-masaz.jpg
wget -q "https://static.wixstatic.com/media/11062b_847d8e32faf7476bb407e2f55f440cb1~mv2.jpg" -O assets/images/masaze/cinska-masaz.jpg
wget -q "https://static.wixstatic.com/media/11062b_16aa40c0cf7c419284876be02e0b4d4b~mv2.jpeg" -O assets/images/masaze/kineziotaping.jpg
wget -q "https://static.wixstatic.com/media/11062b_50823653f9bb4794a1410e88fff3b6c6~mv2.jpg" -O assets/images/masaze/bankovani.jpg
wget -q "https://static.wixstatic.com/media/nsplsh_62417a4468696c51467341~mv2_d_5038_3072_s_4_2.jpg" -O assets/images/masaze/pece-o-telo.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_a600e746743a442cb13119af065e0ee1~mv2.jpeg" -O assets/images/masaze/darkovy-poukaz.jpg

# Obrázky pro DTCM (Čínská medicína)
echo "Stahuji obrázky pro DTCM..."
mkdir -p assets/images/dtcm
wget -q "https://static.wixstatic.com/media/nsplsh_62417a4468686c51467341~mv2_d_5038_3072_s_4_2.jpg" -O assets/images/dtcm/hlavni.jpg
wget -q "https://static.wixstatic.com/media/b6e9b2_a6e08b8d7af24e9c9e0ffa3917293072~mv2.png" -O assets/images/dtcm/eav.png
wget -q "https://static.wixstatic.com/media/b6e9b2_da985b114900409193c835bb922d5e38~mv2.png" -O assets/images/dtcm/energy-1.png
wget -q "https://static.wixstatic.com/media/b6e9b2_c8b62b77dda04057b6fab5d86872a436~mv2.png" -O assets/images/dtcm/energy-2.png
wget -q "https://static.wixstatic.com/media/b6e9b2_ae97f2a5d7fb4b5984b1aea8a731699a~mv2.png" -O assets/images/dtcm/energy-3.png
wget -q "https://static.wixstatic.com/media/11062b_50823653f9bb4794a1410e88fff3b6c6~mv2.jpg" -O assets/images/dtcm/pece-o-telo.jpg

echo "Stahování dokončeno!"
echo "Všechny obrázky byly staženy do assets/images/"
