module.exports = function(eleventyConfig) {
    eleventyConfig.addPassthroughCopy("assets");
    eleventyConfig.addPassthroughCopy("admin");

    eleventyConfig.ignores.add("CLAUDE.md");
    eleventyConfig.ignores.add("README.md");
    eleventyConfig.ignores.add("NASAZENI.md");
    eleventyConfig.ignores.add("OBRAZKY-CHECKLIST.md");
    eleventyConfig.ignores.add("node_modules/**");

    ["manipedi", "solarium", "masaze", "dtcm"].forEach(section => {
        eleventyConfig.addCollection(section, function(collectionApi) {
            return collectionApi.getFilteredByGlob(`${section}/*.md`)
                .sort((a, b) => (a.data.navOrder || 0) - (b.data.navOrder || 0));
        });
    });

    return {
        dir: {
            input: ".",
            output: "_site",
            includes: "_includes",
            data: "_data"
        },
        templateFormats: ["md", "njk"],
        markdownTemplateEngine: "njk"
    };
};
