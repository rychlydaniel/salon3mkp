# CHECKLIST - Stažení obrázků

Tento checklist vám pomůže zkontrolovat, že máte všechny obrázky stažené.

## ✅ Hlavní obrázky (2 ks)

- [ ] `assets/images/header-bg.jpg` - Header pozadí (velký obrázek růží)
- [ ] `assets/images/logo.jpeg` - Logo salonu (kruhové logo)

## ✅ Manipedi - Galerie (5 ks)

- [ ] `assets/images/manipedi/gallery-1.jpg` - Lesklý lak
- [ ] `assets/images/manipedi/gallery-2.jpg` - Pedikúra 1
- [ ] `assets/images/manipedi/gallery-3.jpg` - Pedikúra 2
- [ ] `assets/images/manipedi/gallery-4.jpg` - Manikúra 1
- [ ] `assets/images/manipedi/gallery-5.jpg` - Manikúra 2

## ✅ Manipedi - Detaily služeb (5 ks)

- [ ] `assets/images/manipedi/pedikura.jpg` - Detail pedikúry
- [ ] `assets/images/manipedi/manikura.jpg` - Detail manikúry
- [ ] `assets/images/manipedi/parafin.jpg` - Oranžový parafínový vosk
- [ ] `assets/images/manipedi/epilace.jpg` - Vosková epilace
- [ ] `assets/images/manipedi/darkovy-poukaz.jpg` - Dárkový poukaz

## ✅ Solárium - Hlavní obrázky (4 ks)

- [ ] `assets/images/solarium/main-solarium.jpg` - Hlavní obrázek (úvodní stránka)
- [ ] `assets/images/solarium/solarium-detail.jpg` - Detail solária
- [ ] `assets/images/solarium/kremy.jpg` - Solární krémy
- [ ] `assets/images/solarium/doporuceni.jpg` - Obrázek k doporučením

## ✅ Solárium - Dárkové poukazy (4 ks)

- [ ] `assets/images/solarium/poukaz-50.png` - Poukaz 50 Kč
- [ ] `assets/images/solarium/poukaz-100.png` - Poukaz 100 Kč
- [ ] `assets/images/solarium/poukaz-150.png` - Poukaz 150 Kč
- [ ] `assets/images/solarium/poukaz-200.png` - Poukaz 200 Kč

---

**CELKEM:** 20 obrázků

---

## Jak zkontrolovat, že máte všechny obrázky?

Spusťte v terminálu (Linux/Mac):
```bash
cd salon3mkp
find assets/images -type f | wc -l
```

Mělo by to zobrazit: **20** (nebo 21 pokud máte placeholder.svg)

---

## Automatické stažení

Nejjednodušší způsob je spustit přiložený skript:

```bash
cd salon3mkp
bash download-images.sh
```

Skript automaticky stáhne všechny obrázky na správná místa.
