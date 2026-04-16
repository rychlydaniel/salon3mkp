# Salon 3MKP - Čistý web bez trackerů

Tento projekt je 1:1 klon webů z Wix platformy, vytvořený jako čistý HTML/CSS web bez jakýchkoli trackerů.

## Struktura projektu

```
salon3mkp/
├── index.html                    # Přesměrování na /manipedi
├── manipedi/                     # Manikúra & Pedikúra
│   ├── index.html
│   ├── pedikura.html
│   ├── manikura.html
│   ├── prispevek-pojistovny.html
│   ├── parafinove-zabaly.html
│   ├── epilace.html
│   ├── darkove-poukazy.html
│   └── kontakt.html
├── solarium/                     # Solárium
│   ├── index.html
│   ├── solarium.html
│   ├── kremy.html
│   ├── doporuceni.html
│   ├── darkove-poukazy.html
│   └── kontakt.html
└── assets/
    ├── css/
    │   └── style.css
    ├── js/
    └── images/
        ├── manipedi/
        └── solarium/
```

## Stažení obrázků

Kvůli omezení sítě v Docker prostředí je třeba stáhnout obrázky manuálně.

### Hlavní obrázky (společné):
1. Header pozadí: https://static.wixstatic.com/media/11062b_61dbd21e9e0041c4b08c1b7fdee0c36f~mv2_d_6000_4000_s_4_2.jpg
   → Uložit jako: `assets/images/header-bg.jpg`

2. Logo: https://static.wixstatic.com/media/b6e9b2_d4537ccedd534b0abe1f0c3364e70274~mv2.jpeg
   → Uložit jako: `assets/images/logo.jpeg`

### Obrázky pro Manipedi (assets/images/manipedi/):
1. gallery-1.jpg - https://static.wixstatic.com/media/11062b_fdec3bbebf8d4dcdbaf22213cea2ecd0~mv2.jpg
2. gallery-2.jpg - https://static.wixstatic.com/media/11062b_d1397226784047a5941b0e391e6e4258~mv2.jpg
3. gallery-3.jpg - https://static.wixstatic.com/media/11062b_59c73aef515d40679995d10968f74638~mv2.jpg
4. gallery-4.jpg - https://static.wixstatic.com/media/11062b_7cc40919971441eb823af69faf2c7a12~mv2.jpg
5. gallery-5.jpg - https://static.wixstatic.com/media/11062b_f559db1cc04e4659ba60bf315688cfeb~mv2.jpg
6. pedikura.jpg - https://static.wixstatic.com/media/f4e6b4d3adc942c2952a9a3198f6af00.jpg
7. manikura.jpg - https://static.wixstatic.com/media/11062b_cf4e25ba583547eb94cdfa63c47b19a5~mv2.jpg
8. parafin.jpg - https://static.wixstatic.com/media/11062b_084d972442e04b5ca49ff58a5c29729f~mv2.jpg
9. epilace.jpg - https://static.wixstatic.com/media/11062b_dd2251b39c704ef095a09f92a0f3135f~mv2.jpeg
10. darkovy-poukaz.jpg - https://static.wixstatic.com/media/b6e9b2_482cd77da37d467ea0928d55d95c5f63~mv2.jpg

### Obrázky pro Solárium (assets/images/solarium/):
1. main-solarium.jpg - https://static.wixstatic.com/media/b6e9b2_9c09bb98822144368ecb622164f4c05b~mv2.jpg
2. solarium-detail.jpg - https://static.wixstatic.com/media/b6e9b2_f22b692811964c80b9dc956e22686559~mv2.jpg
3. kremy.jpg - https://static.wixstatic.com/media/b6e9b2_0cd985ace80046e9956612813d29a789~mv2.jpg
4. doporuceni.jpg - https://static.wixstatic.com/media/b6e9b2_c9c488c4e4cb445585972e39076253ca~mv2.jpg
5. poukaz-50.png - https://static.wixstatic.com/media/b6e9b2_bd675ee5dd5d434f805f464c8c4c3d15~mv2.png
6. poukaz-100.png - https://static.wixstatic.com/media/b6e9b2_d992e499e6d94b7bba30781e897276de~mv2.png
7. poukaz-150.png - https://static.wixstatic.com/media/b6e9b2_664cfc7d10aa4d7797ec2431581ab588~mv2.png
8. poukaz-200.png - https://static.wixstatic.com/media/b6e9b2_9427acbce9bc455b8d48cfdcfa79fff3~mv2.png

## Nasazení na Netlify

### 1. Vytvoření účtu na Netlify
1. Jděte na https://www.netlify.com/
2. Klikněte na "Sign up"
3. Zaregistrujte se pomocí emailu nebo GitHub účtu

### 2. Nahrání webu
**Možnost A - Drag & Drop (nejjednodušší):**
1. Přihlaste se do Netlify
2. V hlavním dashboardu najděte "Add new site" → "Deploy manually"
3. Přetáhněte celou složku `salon3mkp` do upload zóny
4. Netlify automaticky vytvoří web

**Možnost B - GitHub (doporučeno pro aktualizace):**
1. Vytvořte GitHub repozitář
2. Nahrajte obsah složky `salon3mkp` do repozitáře
3. V Netlify: "Add new site" → "Import an existing project" → "GitHub"
4. Vyberte repozitář
5. Netlify automaticky nasadí web

### 3. Nastavení vlastní subdomény
1. V Netlify dashboardu přejděte na "Site settings"
2. V sekci "Site information" klikněte na "Change site name"
3. Zadejte: `salon3mkp`
4. Web bude dostupný na: https://salon3mkp.netlify.app

### 4. Nastavení redirectu
Netlify automaticky rozpozná `index.html` s meta refresh tagom pro přesměrování z `/` na `/manipedi`.

## Funkce webu

✅ Čistý HTML/CSS - bez JavaScript trackerů
✅ Mapa.cz integrace místo Google Maps
✅ Responzivní design (mobil, tablet, desktop)
✅ Struktura: `/` → `/manipedi`, `/solarium`
✅ HTTPS automaticky přes Netlify
✅ Bez reklam a sledování

## Budoucí úpravy

Pro úpravu obsahu:
1. Otevřete příslušný HTML soubor v textovém editoru
2. Upravte text nebo obrázky
3. Uložte změny
4. Pokud používáte GitHub → push změn → Netlify automaticky aktualizuje web
5. Pokud používáte Drag & Drop → přetáhněte aktualizovanou složku znovu

## Kontakty

- Adresa: Mikulášovice 2, 407 79 Mikulášovice
- Tel: 606 580 435
- IČO: 06930671
- Facebook: Pedikúra Manikúra Mikulášovice
- Instagram: salon_3mkp

## Technické informace

- HTML5
- CSS3 (čistý CSS, bez frameworků)
- Žádné závislosti
- Velikost: ~50 KB bez obrázků
- Rychlost načítání: < 1s (s optimalizovanými obrázky)

---

**Poznámka:** Web je připraven k nasazení. Stačí stáhnout obrázky a nahrát na Netlify.
