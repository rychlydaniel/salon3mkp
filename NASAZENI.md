# RYCHLÝ PRŮVODCE NASAZENÍM

## Krok 1: Stažení obrázků (DŮLEŽITÉ!)

Web je připraven, ale **obrázky musíte stáhnout ručně** kvůli omezením v Docker prostředí.

### Možnost A - Automaticky (doporučeno)
1. Otevřete terminál/příkazový řádek
2. Přejděte do složky projektu: `cd salon3mkp`
3. Spusťte: `bash download-images.sh`
4. Skript stáhne všechny obrázky na správná místa

### Možnost B - Ručně
Postupujte podle seznamu v README.md v sekci "Stažení obrázků"

---

## Krok 2: Nasazení na Netlify

### Rychlé nasazení (5 minut):

1. **Zaregistrujte se na Netlify**
   - Jděte na: https://www.netlify.com/
   - Klikněte "Sign up" (můžete použít GitHub nebo email)

2. **Nahrajte web**
   - Po přihlášení klikněte na: **"Add new site"** → **"Deploy manually"**
   - **Přetáhněte celou složku `salon3mkp`** do upload zóny
   - Netlify začne nahrávat a během ~30 sekund web zpřístupní

3. **Nastavte název**
   - Po nahrání klikněte na **"Site settings"**
   - V sekci "Site information" → **"Change site name"**
   - Zadejte: `salon3mkp`
   - Potvrdťte

4. **Hotovo!**
   Web je nyní dostupný na: **https://salon3mkp.netlify.app**

---

## Ověření funkčnosti

Po nasazení zkontrolujte:

✅ https://salon3mkp.netlify.app → přesměruje na /manipedi
✅ https://salon3mkp.netlify.app/manipedi → zobrazí Mani & Pedi
✅ https://salon3mkp.netlify.app/solarium → zobrazí Solárium
✅ Všechny podstránky jsou funkční
✅ Mapa.cz se zobrazuje v kontaktech
✅ Navigace funguje mezi sekcemi

---

## Časté problémy a řešení

### Problém: Chybí obrázky
**Řešení:** Ujistěte se, že jste spustili `download-images.sh` nebo stáhli obrázky ručně

### Problém: Web se nezobrazuje správně
**Řešení:** Zkontrolujte, že jste nahráli celou složku `salon3mkp`, ne jen její obsah

### Problém: Mapa se nezobrazuje
**Řešení:** Zkontrolujte v prohlížeči konzoli (F12). Pokud vidíte chyby, kontaktujte podporu.

---

## Budoucí úpravy

### Změna textu:
1. Otevřete příslušný `.html` soubor v textovém editoru
2. Najděte text, který chcete změnit
3. Upravte ho
4. Uložte soubor
5. Přetáhněte aktualizovanou složku znovu do Netlify

### Změna obrázků:
1. Nahraďte obrázek v příslušné složce (`assets/images/...`)
2. Ponechte stejný název souboru
3. Přetáhněte aktualizovanou složku znovu do Netlify

### Změna barev/stylů:
1. Otevřete `assets/css/style.css`
2. Upravte CSS proměnné v `:root` sekci
3. Uložte
4. Přetáhněte aktualizovanou složku znovu do Netlify

---

## Kontakt pro technickou podporu

Pokud narazíte na problémy, napište na email uvedený v kontaktech nebo kontaktujte osobu, která web vytvořila.

---

**DŮLEŽITÉ:** Po nasazení nezapomeňte odstranit původní Wix weby, abyste přestali platit za jejich služby a zabránili duplicitnímu obsahu.

---

Přeji hodně štěstí s novým webem! 🚀
