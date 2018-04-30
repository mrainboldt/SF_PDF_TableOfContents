@page {
    size: letter;
    margin: 25mm;
    @font-face{
    	font-family: 'Arial Unicode MS';
    }
    @bottom-left{
    	content: "[Company Name] - Confidential";
    }
    @bottom-right {
        content: "Page | " counter(page);
    }
}
.pagebreak {
	display:block;
	page-break-before: always;
}
a{
	text-decoration: none;
	color: black;
}
tocLine{
	padding: .3em 0 .3em 0;
}
tocSubLine{
	padding: .3em 0 .3em 2.5em;
}
a.pageNumber::after {
	content: "\A0" target-counter(attr(href), page)
}