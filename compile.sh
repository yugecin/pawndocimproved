mv ../pawndocimproved/pawndoc.xsl ./pawndoc.xsl 2>/dev/null
pawncc.exe "-(-" "-;-" main.pwn -rreport1.xml
sed -i 's/xml-stylesheet href="[^"]*"/xml-stylesheet href="original.xsl"/' report1.xml
sed 's/xml-stylesheet href="[^"]*"/xml-stylesheet href="improved.xsl"/' report1.xml > report2.xml
