local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
        snip({
            trig = "vbase",
            namr = "Vbase",
            dscr = "Vue.js basic component template",
        }, {
            text({
								"<template>",
								"\t<div>",
								"",
								"\t</div>",
								"</template>",
								"",
								"<script>",
								"export default {",
								"",
								"}",
								"</script>",
								"",
								"<style scoped>",
								"",
								"</style>"
		})
        }),
        snip({
            trig = "iferr",
            namr = "Iferr",
            dscr = "if err != nil =)",
        }, {
		text({
			"if err != nil {",
			"\treturn err",
			"}",
		})
        }),
    },
})

