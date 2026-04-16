# CLAUDE.md

Tento soubor poskytuje pokyny pro Claude Code (claude.ai/code) při práci s kódem v tomto repozitáři.

## Přehled projektu

Statický HTML/CSS web pro **Salon 3MKP** — český kosmetický salon. Jedná se o klon původních Wix stránek salonu, přestavěný bez JavaScriptu, bez trackerů a bez závislostí.

Veškerý obsah je v **češtině**.

## Vývoj

Není zde žádný build systém, balíčkovací manažer ani testovací sada. Web je čisté HTML5 + CSS3.

- **Lokální náhled:** Otevřít libovolný `.html` soubor přímo v prohlížeči
- **Stažení obrázků:** `bash download-images.sh` (stáhne všechny obrázky z původního Wix CDN)
- **Nasazení:** Nahrát celou složku na Netlify přes drag-and-drop (zatím bez napojení na Git)
- **Živý web:** https://salon3mkp.netlify.app/

## Architektura

### Sekce webu

Web má čtyři nezávislé sekce, každá se svou vlastní sadou stránek a sekundární navigací:

- **`/manipedi/`** — Manikúra a pedikúra (8 stránek, Miluše Šmejkalová)
- **`/solarium/`** — Solárium (6 stránek)
- **`/masaze/`** — Masážní, rekondiční a regenerační služby (10 stránek, Kateřina Bednářová)
- **`/dtcm/`** — Diagnostika tradiční čínské medicíny (5 stránek, Kateřina Bednářová)

Kořenový `index.html` přesměrovává na `/manipedi/`. Netlify `_redirects` to řeší také pomocí 301.

### Šablona stránky

Každá stránka má stejnou strukturu (bez šablonovacího enginu — duplikováno napříč 29 soubory):

1. Obrázek pozadí v hlavičce (`.header-bg`)
2. Přilepená horní navigace (`.top-nav`) — odkazy mezi všemi čtyřmi sekcemi
3. Sekundární navigace (`.secondary-nav`) — podmenu dané sekce s třídou `.active` na aktuální stránce
4. Hlavní obsah (`.container`)
5. Patička se sociálními odkazy

### Stylování

Jeden CSS soubor: `assets/css/style.css`. Klíčové detaily:

- CSS custom properties pro theming (`--primary-color: #2c3e50`, `--secondary-color: #e8d5c4`)
- CSS Grid pro galerie, Flexbox pro navigaci a kontaktní karty
- Responzivní design (mobile-first) s media queries
- `.pricing-table` pro ceníky služeb, `.faq-item` pro sekce s častými otázkami
- Utility třídy: `.text-center`, `.mt-40`, `.mb-20`

### Klíčová omezení

- **Žádný JavaScript** — záměr, ne opomenutí. Web je navržen tak, aby fungoval bez JS.
- **Žádné Google služby** — místo Google Maps se používá Mapy.com. Žádná analytika.
- **Duplikovaná navigace/patička** — bez šablon je nutné změny ve sdílených prvcích (nav, footer, hlavička) aplikovat ručně na všech 29 HTML souborech.
- **Relativní cesty** — všechny interní odkazy používají relativní cesty pro navigaci mezi sekcemi.

### Konfigurace Netlify

`_redirects` zajišťuje:
- Přesměrování z kořene (`/ → /manipedi/` s kódem 301)
- Bezpečnostní hlavičky (X-Content-Type-Options, XSS-Protection atd.)
