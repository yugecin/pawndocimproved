cp ../pawndocimproved/pawndoc.xsl ./improved.xsl 2>/dev/null
pawncc.exe "-(-" "-;-" main.pwn -roriginal.xml
sed -i 's/xml-stylesheet href="[^"]*"/xml-stylesheet href="original.xsl"/' original.xml
sed 's/xml-stylesheet href="[^"]*"/xml-stylesheet href="improved.xsl"/' original.xml > improved.xml
