
The 'improvements' are mainly some fixes, some style changes and adding SA-MP specific links and appendices.

## pawndocimproved

base xsl taken from [the PAWN repo](https://github.com/compuphase/pawn)

Changes (doesn't include all; see commits for everything):
* more uniform style, larger fontsize
* member types each have a different color
* fixed titles showing for empty properties in firefox and chromium
* add generated index table at the top
* element names are now links that link to their own anchor
* add link to 'top' at the end of every member section
* link to sa-mp wiki mirror (sampwiki.blast.hk) for every member, this is only really useful for members of the SA-MP PAWN API as everything else will 404
* support for `<b>` `<strong>` `<a>` tags in documentation
* ignore `__file __date __time` members
* added table of keys appendix for SA-MP's key definitions

### demo

* [sample script with original style](https://yugecin.github.io/pawndocimproved/report1.xml)
* [sample script with improved style](https://yugecin.github.io/pawndocimproved/report2.xml)
* [docs of complete SA-MP PAWN API](https://basdon.github.io/documented-samp-pawn-api/main.xml)

### howto

See the PAWN language guide page 52: _A tutorial introduction - Documentation comments_ for the PAWN documentation syntax.

Use the `-rfilename` PAWN compiler option to generate a report of your code in XML format.

The XML report generates with an absolute link to the `pawndoc.xsl` stylesheet (`href` attribute of `xml-stylesheet` tag) located in the pawno xml directory. Either replace that file with the version of this repository, or change the href value in the generated XML report file after it is generated. You could also replace the href with `https://raw.githubusercontent.com/yugecin/pawndocimproved/master/pawndoc.xsl`, but this only works in IE and Firefox,  chromium does not allow cross domain resources.

---

you might also be interested in [documented-samp-pawn-api](https://github.com/basdon/documented-samp-pawn-api)
