
_improved is subjective_

## pawndocimproved

base xsl taken from [the PAWN repo](https://github.com/compuphase/pawn)

Changes (doesn't include all; see commits for everything):
* more uniform style
* member types each have a different color
* fixed showing empty properties in firefox and chromium
* generated index table
* larger fontsize
* auto link to sa-mp wiki for every member
* support for `<b> <strong> <a>` tags
* ignore `__file __date __time` members

### demo

* [sample script with original style](https://yugecin.github.io/pawndocimproved/report1.xml)
* [sample script with 'improved' style](https://yugecin.github.io/pawndocimproved/report2.xml)

### howto

See the PAWN language guide page 52: _A tutorial introduction - Documentation comments_ for the PAWN documentation syntax.

Use the `-rfilename` PAWN compiler option to generate a report of your code in XML format.

After the report was generated, change the `xml-stylesheet` href to `pawndoc.xsl` and put this xsl in the same folder.

---

you might also be interested in [documented-samp-pawn-api](https://github.com/basdon/documented-samp-pawn-api)
