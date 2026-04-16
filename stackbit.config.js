const { defineStackbitConfig } = require("@stackbit/types");
const { GitContentSource } = require("@stackbit/cms-git");

module.exports = defineStackbitConfig({
    stackbitVersion: "~0.6.0",
    ssgName: "eleventy",
    nodeVersion: "18",
    devCommand: "npx eleventy --serve --port {PORT}",
    experimental: {
        ssg: {
            name: "eleventy",
            logPatterns: {
                up: ["Server at"]
            },
            directRoutes: {
                "socket.io": "socket.io"
            },
            proxyWebsockets: true
        }
    },
    customContentReload: true,
    contentSources: [
        new GitContentSource({
            rootPath: __dirname,
            contentDirs: ["manipedi", "solarium", "masaze", "dtcm"],
            models: [
                {
                    name: "home-page",
                    type: "page",
                    label: "Úvodní stránka",
                    urlPath: "/{section}",
                    filePath: "{section}/index.md",
                    fields: [
                        { name: "title", type: "string", label: "Nadpis", required: true },
                        { name: "layout", type: "string", const: "base.njk", hidden: true },
                        { name: "section", type: "string", hidden: true },
                        { name: "pageType", type: "string", const: "home", hidden: true },
                        { name: "navLabel", type: "string", label: "Název v navigaci" },
                        { name: "navOrder", type: "number", hidden: true },
                        { name: "permalink", type: "string", hidden: true }
                    ]
                },
                {
                    name: "contact-page",
                    type: "page",
                    label: "Kontakt",
                    urlPath: "/{section}/kontakt.html",
                    filePath: "{section}/kontakt.md",
                    fields: [
                        { name: "title", type: "string", label: "Nadpis", required: true },
                        { name: "layout", type: "string", const: "base.njk", hidden: true },
                        { name: "section", type: "string", hidden: true },
                        { name: "pageType", type: "string", const: "contact", hidden: true },
                        { name: "navLabel", type: "string", hidden: true },
                        { name: "navOrder", type: "number", hidden: true },
                        { name: "permalink", type: "string", hidden: true },
                        { name: "phone", type: "string", label: "Telefon" },
                        { name: "address", type: "string", label: "Adresa" },
                        { name: "zip", type: "string", label: "PSČ" },
                        { name: "ico", type: "string", label: "IČO" },
                        { name: "hours", type: "string", label: "Otevírací doba" },
                        { name: "facebook", type: "string", label: "Facebook" },
                        { name: "instagram", type: "string", label: "Instagram" },
                        { name: "mapUrl", type: "url", label: "URL mapy" }
                    ]
                },
                {
                    name: "content-page",
                    type: "page",
                    label: "Stránka",
                    urlPath: "/{section}/{slug}.html",
                    filePath: "{section}/{slug}.md",
                    fields: [
                        { name: "title", type: "string", label: "Nadpis", required: true },
                        { name: "layout", type: "string", const: "base.njk", hidden: true },
                        { name: "section", type: "string", hidden: true },
                        { name: "navLabel", type: "string", label: "Název v navigaci" },
                        { name: "navOrder", type: "number", hidden: true },
                        { name: "permalink", type: "string", hidden: true },
                        { name: "image", type: "image", label: "Obrázek" },
                        { name: "imageAlt", type: "string", label: "Popis obrázku" },
                        { name: "imagePosition", type: "enum", label: "Pozice obrázku", options: [
                            { label: "Vedle textu", value: "side" },
                            { label: "Nahoře", value: "top" }
                        ]},
                        {
                            name: "pricing",
                            type: "list",
                            label: "Ceník",
                            items: {
                                type: "object",
                                fields: [
                                    { name: "service", type: "string", label: "Služba" },
                                    { name: "duration", type: "string", label: "Délka" },
                                    { name: "price", type: "string", label: "Cena" }
                                ]
                            }
                        },
                        {
                            name: "faq",
                            type: "list",
                            label: "Časté otázky",
                            items: {
                                type: "object",
                                fields: [
                                    { name: "question", type: "string", label: "Otázka" },
                                    { name: "answer", type: "text", label: "Odpověď" }
                                ]
                            }
                        }
                    ]
                }
            ],
            assetsConfig: {
                referenceType: "static",
                staticDir: "assets",
                uploadDir: "images",
                publicPath: "/assets"
            }
        })
    ]
});
