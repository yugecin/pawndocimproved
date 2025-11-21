<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Version: $Id: pawndoc.xsl 5182 2015-01-28 10:21:43Z  $ -->
<!-- edit: https://github.com/yugecin/pawndocimproved -->

<xsl:strip-space elements="*"/>

<xsl:template match="/">
<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<TITLE><xsl:value-of select="doc/assembly/name"/></TITLE>
<STYLE type="text/css">
	BODY { FONT-FAMILY: "Tahoma", sans-serif; COLOR: #000000; MAX-WIDTH: 900px; BACKGROUND-COLOR: #FFFFFF; }
	DL { MARGIN-LEFT: 4em; DISPLAY: compact }
	DT { FONT-WEIGHT: bold }
	A:link { COLOR: #4e4887 }
	A:visited { COLOR: #4e4887 }
	A:active { COLOR: #f16043 }
	A:hover { COLOR: #f16043 }
	DIV.p, DIV.p>p, P.syntax, TABLE, PRE, UL, OL { MARGIN: 0.5em 0 }
	DIV.p, P.syntax, TABLE.param, TABLE.transition { MARGIN-LEFT: 4em }
	DIV.para-margin { MARGIN-BOTTOM: 0.5em }
	P.syntax { FONT-WEIGHT: bold }
	PRE { BACKGROUND-COLOR: #ddeeff }
	TABLE { BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none; WHITE-SPACE: nowrap }
	TABLE.param { BACKGROUND-COLOR: #ddeeff; WHITE-SPACE: wrap }
	TABLE.transition { BACKGROUND-COLOR: #ddeeff; }
	TBODY.monospace { FONT-FAMILY: monospace }
	TD { BACKGROUND-COLOR: #ddeeff; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none; MARGIN: 2px; PADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; PADDING-TOP: 2px; TEXT-ALIGN: left; VERTICAL-ALIGN: top }
	TD.header { BACKGROUND-COLOR: transparent; FONT-WEIGHT: bold; COLOR: #4e4887; WIDTH: 3.3em; PADDING-LEFT: 0px; MARGIN-BOTTOM: 0.5em }
	TD.inline { BACKGROUND-COLOR: transparent }
	TD.param { FONT-WEIGHT: bold; FONT-STYLE: italic; PADDING-RIGHT: 20px; }
	TD.transition { PADDING-RIGHT: 10px; }
	TH { BACKGROUND-COLOR: #336699; COLOR: #ddeeff; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none; MARGIN: 2px; PADDING-BOTTOM: 2px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 2px; TEXT-ALIGN: left }
	UL { LIST-STYLE-IMAGE: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAANCAYAAABhPKSIAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAjSURBVChTY/z//z8DOmCC0iiAboKMyT1zMNxEE4sw/c7AAACp0gicfX+bFQAAAABJRU5ErkJggg==') }
	UL, OL { MARGIN-LEFT: 3em; PADDING-LEFT: 0; }
	LI.referrer { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.dependency { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.seealso { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.attribute { DISPLAY: inline; PADDING-RIGHT: 8px }
	SPAN.paraminfo { FONT-WEIGHT:Bold; COLOR: #336699; }
	H1 { COLOR: #336699; FONT-SIZE: 2em; MARGIN-BOTTOM: 0.5em; MARGIN-TOP: 1em; PADDING-LEFT: 4px }
	H2 { BORDER-RIGHT: #000 8px solid; FONT-SIZE: 1.3em; BORDER-TOP: #000 2px solid; COLOR: #000; MARGIN-BOTTOM: 0.5em; MARGIN-TOP: 1em; }
	H2.constant { BORDER-COLOR: #874862; COLOR: #874862; }
	H2.variable { BORDER-COLOR: #48876D; COLOR: #48876D; }
	H2.function { BORDER-COLOR: #818748; COLOR: #818748; }
	H2 SPAN { FLOAT: right; PADDING-RIGHT: 2px; }
	H2.general { COLOR: #4E4887; }
	H2.general, DIV H2 { BORDER: none; }
	H2 A { TEXT-DECORATION: none; }
	H2 A.wiki { FONT-SIZE: 60%; COLOR: #BBB; MARGIN-LEFT: 1em; TEXT-DECORATION: underline; }
	H2 A.wiki::AFTER {
		DISPLAY: inline-block;
		CONTENT: '';
		WIDTH: 8px;
		HEIGHT: 8px;
		MARGIN-LEFT: 3px;
		BACKGROUND: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAIBAMAAAA2IaO4AAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYUExURUdwTAAAAAAAAAAAAAAAAAAAAAAAAAAAAGgC1MsAAAAHdFJOUwCqxo5x4xyyUfqkAAAALElEQVQI12MIdFAvZxBgSAIR5uoMAizFSQwC5g4MDALFDCxAMQZGhkBBQVEAevcFF/vEFTYAAAAASUVORK5CYII=) no-repeat;
	}
	H2 A.wiki:active, H2 A.wiki:hover { COLOR: #f16043; }
	H3 { COLOR: #4e4887; FONT-SIZE: 1em; MARGIN-BOTTOM: 0.5em }
	H4 { COLOR: #4e4887; FONT-SIZE: 1em; FONT-STYLE: italic; MARGIN-BOTTOM: 0.5em }
	H5 { COLOR: #4e4887; FONT-SIZE: 0.8em; MARGIN-BOTTOM: 0.5em }
	H6 { COLOR: #4e4887; FONT-SIZE: 0.8em; FONT-STYLE: italic; MARGIN-BOTTOM: 0.5em }
	DIV.index { BACKGROUND: #EEEEEE; PADDING: 0.2em 2em; PADDING-BOTTOM: 0.4em; MARGIN-BOTTOM: 2em; }
	DIV.index UL { LIST-STYLE: none; }
	SUP { FONT-WEIGHT: bold; }
</STYLE>
</HEAD>
<BODY>
	<h1><xsl:value-of select="doc/assembly/name"/></h1>
	<xsl:apply-templates select="doc/general"/>
	<xsl:call-template name="index">
		<xsl:with-param name="name" select="'enumeration'" />
		<xsl:with-param name="type" select="'T:'" />
	</xsl:call-template>
	<xsl:call-template name="index">
		<xsl:with-param name="name" select="'constant'" />
		<xsl:with-param name="type" select="'C:'" />
	</xsl:call-template>
	<xsl:call-template name="index">
		<xsl:with-param name="name" select="'variable'" />
		<xsl:with-param name="type" select="'F:'" />
	</xsl:call-template>
	<xsl:call-template name="index">
		<xsl:with-param name="name" select="'function'" />
		<xsl:with-param name="type" select="'M:'" />
	</xsl:call-template>
	<div class="index">
		<h2>Appendices (2)</h2>
		<ul>
			<li><a href="#Appendix_Keys">Appendix A: Table of Keys</a></li>
			<li><a href="#Appendix_Vehicle_Damage_Status">Appendix B: Vehicle Damage Status</a></li>
		</ul>
	</div>
	<xsl:apply-templates select="doc/members/member[not(@name='F:__file' or @name='F:__date' or @name='F:__time')]"/>
	<xsl:call-template name="memberheader">
		<xsl:with-param name="membertype" select="'appendix'"/>
		<xsl:with-param name="membername" select="'Appendix A: Table of keys'"/>
		<xsl:with-param name="anchor" select="'Appendix_Keys'"/>
	</xsl:call-template>
	<table>
		<thead>
			<tr><th>Value</th><th>Macro</th><th>On foot GXT</th><th>In vehicle GXT</th><th>On foot default</th><th>In vehicle default</th></tr>
		</thead>
		<tbody style="font-family:monospace">
			<tr><td>0x1</td><td>KEY_ACTION</td><td>~k~~PED_ANSWER_PHONE~</td><td>~k~~VEHICLE_FIREWEAPON_ALT~</td><td>TAB</td><td>ALT GR / LCTRL / NUM0</td></tr>
			<tr><td>0x2</td><td>KEY_CROUCH</td><td>~k~~PED_DUCK~</td><td>~k~~VEHICLE_HORN~</td><td>C</td><td>H / CAPSLOCK</td></tr>
			<tr><td>0x4</td><td>KEY_FIRE</td><td>~k~~PED_FIREWEAPON~</td><td>~k~~VEHICLE_FIREWEAPON~</td><td>LCTRL / LMB</td><td>LALT</td></tr>
			<tr><td>0x8</td><td>KEY_SPRINT</td><td>~k~~PED_SPRINT~</td><td>~k~~VEHICLE_ACCELERATE~</td><td>SPACE</td><td>W</td></tr>
			<tr><td>0x10</td><td>KEY_SECONDARY_ATTACK</td><td>~k~~VEHICLE_ENTER_EXIT~</td><td>~k~~VEHICLE_ENTER_EXIT~</td><td>ENTER</td><td>ENTER</td></tr>
			<tr><td>0x20</td><td>KEY_JUMP</td><td>~k~~PED_JUMPING~</td><td>~k~~VEHICLE_BRAKE~</td><td>LSHIFT</td><td>S</td></tr>
			<tr><td>0x40</td><td>KEY_LOOK_RIGHT</td><td>-</td><td>~k~~VEHICLE_LOOKRIGHT~</td><td>-</td><td>E</td></tr>
			<tr><td>0x80</td><td>KEY_HANDBRAKE/KEY_AIM</td><td>~k~~PED_LOCK_TARGET~</td><td>~k~~VEHICLE_HANDBRAKE~</td><td>RMB</td><td>SPACE</td></tr>
			<tr><td>0x100</td><td>KEY_LOOK_LEFT</td><td>-</td><td>~k~~VEHICLE_LOOKLEFT~</td><td>-</td><td>Q</td></tr>
			<tr><td>0x140</td><td>KEY_LOOK_BEHIND</td><td>~k~~PED_LOOKBEHIND~</td><td>~k~~VEHICLE_LOOKBEHIND~</td><td>NUM1 / MMB</td><td>2</td></tr>
			<tr><td>0x200</td><td>KEY_SUBMISSION</td><td>-</td><td>~k~~TOGGLE_SUBMISSIONS~</td><td>NUM1 / MMB</td><td>2 / NUMPAD +</td></tr>
			<tr><td>0x400</td><td>KEY_WALK</td><td>~k~~SNEAK_ABOUT~</td><td>-</td><td>LALT</td><td>-</td></tr>
			<tr><td>0x800</td><td>KEY_ANALOG_UP</td><td>-</td><td>~k~~VEHICLE_TURRETUP~</td><td>NUM8<sup>(4)</sup></td><td>NUM8</td></tr>
			<tr><td>0x1000</td><td>KEY_ANALOG_DOWN</td><td>-</td><td>~k~~VEHICLE_TURRETDOWN~</td><td>NUM2<sup>(4)</sup></td><td>NUM2</td></tr>
			<tr><td>0x2000</td><td>KEY_ANALOG_LEFT</td><td>~k~~VEHICLE_LOOKLEFT~</td><td>~k~~VEHICLE_TURRETLEFT~</td><td>NUM4</td><td>NUM4</td></tr>
			<tr><td>0x4000</td><td>KEY_ANALOG_RIGHT</td><td>~k~~VEHICLE_LOOKRIGHT~</td><td>~k~~VEHICLE_TURRETRIGHT~</td><td>NUM6</td><td>NUM6</td></tr>
			<tr><td>0x10000</td><td>KEY_YES(2)</td><td>~k~~CONVERSATION_YES~</td><td>~k~~CONVERSATION_YES~</td><td>Y</td><td>Y</td></tr>
			<tr><td>0x20000</td><td>KEY_NO(2)</td><td>~k~~CONVERSATION_NO~</td><td>~k~~CONVERSATION_NO~</td><td>N</td><td>N</td></tr>
			<tr><td>0x40000<sup>(3)</sup></td><td>KEY_CTRL_BACK<sup>(1)</sup></td><td>~k~~GROUP_CONTROL_BWD~</td><td>~k~~GROUP_CONTROL_BWD~</td><td>H</td><td>H</td></tr>
			<tr><td>-<sup>(2)</sup></td><td>-</td><td>~k~~GROUP_CONTROL_FWD~</td><td>~k~~GROUP_CONTROL_FWD~</td><td>G</td><td>G</td></tr>
			<tr><td>[-128,-1]</td><td>KEY_UP</td><td>~k~~GO_FORWARD~</td><td>~k~~VEHICLE_STEERUP~</td><td>UP</td><td>UP</td></tr>
			<tr><td>[1,128]</td><td>KEY_DOWN</td><td>~k~~GO_BACK~</td><td>~k~~VEHICLE_STEERDOWN~</td><td>DOWN</td><td>DOWN</td></tr>
			<tr><td>[-128,-1]</td><td>KEY_LEFT</td><td>~k~~GO_LEFT~</td><td>~k~~VEHICLE_STEERLEFT~</td><td>LEFT</td><td>LEFT</td></tr>
			<tr><td>[1,128]</td><td>KEY_RIGHT</td><td>~k~~GO_RIGHT~</td><td>~k~~VEHICLE_STEERRIGHT~</td><td>RIGHT</td><td>RIGHT</td></tr>
		</tbody>
	</table>
	<h3>Remarks</h3>
	<ul>
		<li><strong>(1)</strong> Since 0.3d. Cannot be detected while the player is in spectator mode.</li>
		<li><strong>(2)</strong> Cannot be detected, <code>GROUP_CONTROL_FWD</code> is used to enter as passenger.</li>
		<li><strong>(3)</strong> If this doesn't work, use <code>2</code>. (what?)</li>
		<li><strong>(4)</strong> Only detected when JOYPAD configuration is selected.</li>
	</ul>
	<p><small><a href="#">top</a></small></p>
	<xsl:call-template name="vehicle-damage-status"/>
	<script>
		// initially loading the page somehow doesn't jump to the anchor referenced in the
		// url fragment (both on Firefox and Chromium), so do it manually:
		window.addEventListener('DOMContentLoaded', () => {
			const anchor = window[window.location.hash.substring(1)];
			anchor instanceof HTMLElement &amp;&amp; anchor.scrollIntoView();
		});
	</script>
</BODY>
</HTML>
</xsl:template>

<xsl:template name="index">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<div class="index">
		<xsl:variable name="members0" select="doc/members/member[starts-with(@name,$type)]"/>
		<xsl:variable name="members" select="$members0[not(@name='F:__file' or @name='F:__date' or @name='F:__time')]"/>
		<h2>
			<xsl:attribute name="class"><xsl:value-of select="$name"/></xsl:attribute>
			<xsl:value-of select="translate(substring($name,1,1),'ecvf','ECVF')"/>
			<xsl:value-of select="substring($name,2)"/>s (<xsl:value-of select="count($members)"/>)
		</h2>
		<ul>
			<xsl:for-each select="$members">
				<li><a><xsl:attribute name="href">#<xsl:value-of select="substring(@name,3)"/></xsl:attribute><xsl:value-of select="substring(@name,3)"/></a></li>
			</xsl:for-each>
		</ul>
	</div>
</xsl:template>

<xsl:template match="general">
    <xsl:apply-templates/>
    <br/>
</xsl:template>

<xsl:template name="memberheader">
	<xsl:param name="membertype"/>
	<xsl:param name="membername"/>
	<xsl:param name="anchor"/>
	<h2>
		<xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
		<xsl:attribute name="class"><xsl:value-of select="$membertype"/></xsl:attribute>
		<span><xsl:value-of select="$membertype"/></span>
		<a><xsl:attribute name="href">#<xsl:value-of select="$anchor"/></xsl:attribute><xsl:value-of select="$membername"/></a>
		<a class="wiki" target="_blank"><xsl:attribute name="href">https://sampwiki.blast.hk/wiki/<xsl:value-of select="$membername"/></xsl:attribute>sampwiki.blast.hk</a>
	</h2>
</xsl:template>

<xsl:template match="member">
	<xsl:choose>
		<xsl:when test="substring(@name,1,2) = 'T:'">
			<xsl:call-template name="memberheader">
				<xsl:with-param name="membertype" select="'enumeration'"/>
				<xsl:with-param name="membername" select="substring(@name,3)"/>
				<xsl:with-param name="anchor" select="substring(@name,3)"/>
			</xsl:call-template>
			<xsl:apply-templates select="summary"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<div class="p"><xsl:apply-templates select="text()"/></div>
				</xsl:if>
			</xsl:if>
			<xsl:if test="member">
				<h3>Members</h3>
				<blockquote>
				<xsl:apply-templates select="member"/>
				</blockquote>
			</xsl:if>
			<xsl:apply-templates select="example"/>
			<xsl:if test="referrer">
				<h3>Used by</h3>
				<ul><xsl:apply-templates select="referrer"/></ul>
			</xsl:if>
			<xsl:if test="dependency">
				<h3>Depends on</h3>
				<ul><xsl:apply-templates select="dependency"/></ul>
			</xsl:if>
			<xsl:apply-templates select="location"/>
			<xsl:call-template name="seealso-section"/>
		</xsl:when>
		<xsl:when test="substring(@name,1,2) = 'C:'">
			<xsl:call-template name="memberheader">
				<xsl:with-param name="membertype" select="'constant'"/>
				<xsl:with-param name="membername" select="substring(@name,3)"/>
				<xsl:with-param name="anchor" select="substring(@name,3)"/>
			</xsl:call-template>
			<xsl:apply-templates select="summary"/>
			<h3>Value</h3>
			<div class="p"><xsl:value-of select="@value"/></div>
			<xsl:apply-templates select="tagname"/>
			<xsl:apply-templates select="size"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<div class="p"><xsl:apply-templates select="text()"/></div>
				</xsl:if>
			</xsl:if>
			<xsl:apply-templates select="example"/>
			<xsl:if test="referrer">
				<h3>Used by</h3>
				<ul><xsl:apply-templates select="referrer"/></ul>
			</xsl:if>
			<xsl:if test="dependency">
				<h3>Depends on</h3>
				<ul><xsl:apply-templates select="dependency"/></ul>
			</xsl:if>
			<xsl:apply-templates select="location"/>
			<xsl:call-template name="seealso-section"/>
		</xsl:when>
		<xsl:when test="substring(@name,1,2) = 'M:'">
			<xsl:call-template name="memberheader">
				<xsl:with-param name="membertype" select="'function'"/>
				<xsl:with-param name="membername" select="substring(@name,3)"/>
				<xsl:with-param name="anchor" select="substring(@name,3)"/>
			</xsl:call-template>
			<xsl:apply-templates select="summary"/>
			<h3>Syntax</h3><p class="syntax"><xsl:value-of select="@syntax"/></p>
			<xsl:if test="param">
				<table class="param"><xsl:apply-templates select="param"/></table>
			</xsl:if>
			<xsl:apply-templates select="tagname"/>
			<xsl:apply-templates select="returns"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<div class="p"><xsl:apply-templates select="text()"/></div>
				</xsl:if>
			</xsl:if>
			<xsl:apply-templates select="example"/>
			<xsl:if test="referrer">
				<h3>Used by</h3>
				<ul><xsl:apply-templates select="referrer"/></ul>
			</xsl:if>
			<xsl:if test="dependency">
				<h3>Depends on</h3>
				<ul><xsl:apply-templates select="dependency"/></ul>
			</xsl:if>
			<xsl:if test="attribute">
				<h3>Attributes</h3>
				<ul><xsl:apply-templates select="attribute"/></ul>
			</xsl:if>
			<xsl:apply-templates select="automaton"/>
			<xsl:if test="transition">
				<h3>Transition table</h3>
				<table class="transition">
					<tr><th>Source</th><th>Target</th><th>Condition</th></tr>
					<xsl:apply-templates select="transition"/>
				</table>
			</xsl:if>
			<xsl:apply-templates select="location"/>
			<xsl:apply-templates select="stacksize"/>
			<xsl:apply-templates select="codesize"/>
			<xsl:call-template name="seealso-section"/>
		</xsl:when>
		<xsl:when test="substring(@name,1,2) = 'F:'">
			<xsl:call-template name="memberheader">
				<xsl:with-param name="membertype" select="'variable'"/>
				<xsl:with-param name="membername" select="substring(@name,3)"/>
				<xsl:with-param name="anchor" select="substring(@name,3)"/>
			</xsl:call-template>
			<xsl:apply-templates select="summary"/>
			<xsl:if test="@syntax">
				<h3>Syntax</h3><p class="syntax"><xsl:value-of select="@syntax"/></p>
			</xsl:if>
			<xsl:apply-templates select="tagname"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<div class="p"><xsl:apply-templates select="text()"/></div>
				</xsl:if>
			</xsl:if>
			<xsl:apply-templates select="example"/>
			<xsl:if test="referrer">
				<h3>Used by</h3>
				<ul><xsl:apply-templates select="referrer"/></ul>
			</xsl:if>
			<xsl:if test="dependency">
				<h3>Depends on</h3>
				<ul><xsl:apply-templates select="dependency"/></ul>
			</xsl:if>
			<xsl:apply-templates select="location"/>
			<xsl:call-template name="seealso-section"/>
		</xsl:when>
	</xsl:choose>
	<p><small><a href="#">top</a></small></p>
</xsl:template>

<xsl:template match="summary">
	<div class="p"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="param">
	<tr>
		<td class="param"><xsl:value-of select="@name"/></td>
		<td><xsl:apply-templates/></td>
	</tr>
</xsl:template>

<xsl:template match="paraminfo">
	<span class="paraminfo">&lt;<xsl:value-of select="normalize-space(.)"/>&gt;</span>
</xsl:template>

<xsl:template match="tagname">
	<h3>Tag</h3>
	<div class="p"><xsl:value-of select="@value"/></div>
</xsl:template>

<xsl:template match="size">
	<h3>Size</h3>
	<div class="p"><xsl:value-of select="@value"/></div>
</xsl:template>

<xsl:template match="returns">
	<h3>Returns</h3>
	<div class="p"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="location">
	<h3>Defined in</h3>
	<div class="p"><xsl:value-of select="@file"/>, line <xsl:value-of select="@line"/></div>
</xsl:template>

<xsl:template match="remarks">
	<div class="p"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="example">
	<h3>Example</h3>
	<div class="p"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="attribute">
	<li class="attribute"><xsl:value-of select="@name"/></li>
</xsl:template>

<xsl:template match="referrer">
	<li class="referrer"><a><xsl:attribute name="href">#<xsl:value-of select="@name"/></xsl:attribute><xsl:value-of select="@name"/>()</a></li>
</xsl:template>

<xsl:template match="dependency">
	<li class="dependency"><a><xsl:attribute name="href">#<xsl:value-of select="@name"/></xsl:attribute><xsl:value-of select="@name"/>()</a></li>
</xsl:template>

<xsl:template match="stacksize">
	<h3>Estimated stack usage</h3>
	<div class="p"><xsl:value-of select="@value"/> cells</div>
</xsl:template>

<xsl:template match="codesize">
	<h3>Code size</h3>
	<div class="p"><xsl:value-of select="@value"/> bytes</div>
</xsl:template>

<xsl:template match="automaton">
	<h3>Automaton</h3>
	<div class="p"><xsl:value-of select="@name"/></div>
</xsl:template>

<xsl:template match="transition">
	<tr>
		<td class="transition"><xsl:value-of select="@source"/></td>
		<td class="transition"><xsl:value-of select="@target"/></td>
		<td><xsl:value-of select="@condition"/></td>
	</tr>
</xsl:template>

<xsl:template match="code">
	<pre><xsl:apply-templates/></pre>
</xsl:template>

<xsl:template name="seealso-section">
	<xsl:if test="seealso">
		<h3>See Also</h3>
		<xsl:if test="seealso[@name]">
			<ul><xsl:apply-templates select="seealso[@name]"/></ul>
		</xsl:if>
		<xsl:apply-templates select="seealso[not(@name)]"/>
	</xsl:if>
</xsl:template>

<xsl:template match="seealso[@name]">
	<li class="seealso"><a><xsl:attribute name="href">#<xsl:value-of select="@name"/></xsl:attribute><xsl:value-of select="@name"/>()</a></li>
</xsl:template>

<xsl:template match="seealso[not(@name)]">
	<div class="p"><xsl:apply-templates /></div>
</xsl:template>

<xsl:template match="paramref">
	<i><xsl:value-of select="@name"/></i>
</xsl:template>

<xsl:template match="a">
	<a>
		<xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute>
		<xsl:apply-templates/>
	</a>
</xsl:template>

<xsl:template match="sup"><sup><xsl:apply-templates/></sup></xsl:template>
<xsl:template match="c"><code><xsl:apply-templates/></code></xsl:template>
<xsl:template match="em"><em><xsl:apply-templates/></em></xsl:template>
<xsl:template match="b"><strong><xsl:apply-templates/></strong></xsl:template>
<xsl:template match="strong"><strong><xsl:apply-templates/></strong></xsl:template>
<xsl:template match="ul"><ul><xsl:apply-templates/></ul></xsl:template>
<xsl:template match="ol"><ol><xsl:apply-templates/></ol></xsl:template>
<xsl:template match="li"><li><xsl:apply-templates/></li></xsl:template>
<xsl:template match="br"><br/></xsl:template>

<xsl:template match="p">
	<xsl:choose>
		<xsl:when test="text()">
			<p><xsl:apply-templates select="text()"/></p>
		</xsl:when>
		<xsl:otherwise>
			<div class="para-margin"></div>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="para"><xsl:call-template name="p"/></xsl:template>
<xsl:template match="section"><h2 class="general"><xsl:apply-templates/></h2></xsl:template>
<xsl:template match="subsection"><h3 class="general"><xsl:apply-templates/></h3></xsl:template>
<xsl:template match="table"><table><xsl:apply-templates/></table></xsl:template>
<xsl:template match="thead"><thead><xsl:apply-templates/></thead></xsl:template>
<xsl:template match="tbody">
	<tbody>
		<xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute>
		<xsl:apply-templates/>
	</tbody>
</xsl:template>
<xsl:template match="tr"><tr><xsl:apply-templates/></tr></xsl:template>
<xsl:template match="th"><th><xsl:apply-templates/></th></xsl:template>
<xsl:template match="td"><td><xsl:apply-templates/></td></xsl:template>

<xsl:template name="vehicle-damage-status">
	<xsl:call-template name="memberheader">
		<xsl:with-param name="membertype" select="'appendix'"/>
		<xsl:with-param name="membername" select="'Appendix B: Vehicle Damage Status'"/>
		<xsl:with-param name="anchor" select="'Appendix_Vehicle_Damage_Status'"/>
	</xsl:call-template>
	<h3>Remarks</h3>
	<div class="p">
		<p>When using <a href="#UpdateVehicleDamageStatus">UpdateVehicleDamageStatus</a>, the server will internally store the damage status without any checks and send it to the clients, but the clients will only (partially) apply the damage status depending on the vehicle. This means setting values using <a href="#UpdateVehicleDamageStatus">UpdateVehicleDamageStatus</a> will be reported back when using <a href="#GetVehicleDamageStatus">GetVehicleDamageStatus</a> but they may not have any effect in players' clients. See tables and notes below for support.</p>
		<p>The client usually keeps values that don't mean anything. For example, when setting the unused highest nibble of the panel state to <strong><code>7</code></strong> and the player damages the windshield, the panel value after the client reports the update would be <strong><code>0x70020000</code></strong>.</p>
	</div>
	<h3 id="Appendix_Vehicle_Damage_Status_vehiclesupport">Vehicle support</h3>
	<div class="p">
		<p>Unsupported damage in the table below also means the damage will not be synced between clients.</p>
		<table>
			<thead><tr><th>Kind</th><th>Panels</th><th>Doors</th><th>Lights</th><th>Tires</th></tr></thead>
			<tbody>
				<tr><td>Automobile<sup><strong>(1)</strong></sup></td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
				<tr><td>Motorcycle</td><td></td><td></td><td></td><td>x</td></tr>
				<tr><td>Heli</td><td></td><td></td><td></td><td></td></tr>
				<tr><td>Boat</td><td></td><td></td><td></td><td></td></tr>
				<tr><td>Plane<sup><strong>(2)</strong></sup></td><td>x</td><td>x</td><td>x<sup><strong>(3)</strong></sup></td><td></td></tr>
				<tr><td>Bike</td><td></td><td></td><td></td><td></td></tr>
				<tr><td>Train</td><td></td><td></td><td></td><td></td></tr>
				<tr><td>Trailer</td><td></td><td></td><td></td><td></td></tr>
			</tbody>
		</table>
		<p>
			<strong>(1)</strong> following automobiles are excluded and do not sync damage at all: <strong>Dumper, Monster, Monster A, Monster B, Quadbike, Dune</strong>. All of these vehicles have bulletproof tires, except for the Quadbike. A player can shoot the tires of a Quadbike and they will be popped for the player driving the vehicle, but the tires will stay intact in the clients of all other players<br/>
			<strong>(2)</strong> plane damage status can be set (with <a href="#UpdateVehicleDamageStatus">UpdateVehicleDamageStatus</a>), but clients will NOT report if damage changes. This means <a href="#OnVehicleDamageStatusUpdate">OnVehicleDamageStatusUpdate</a> will NOT be called when a player damages their plane's engine/aileron/... and this damage will NOT be synced to other clients.<br/>
			<strong>(3)</strong> it is supported as in the client will apply it to the game vehicle, but it has no effect
		</p>
	</div>
	<h3 id="Appendix_Vehicle_Damage_Status_panelstates">Panel states</h3>
	<div class="p">
		<p>Each nibble contains the status of a different panel.</p>
		<table>
		  <thead><tr><th>Mask</th><th>Automobile usage</th><th>Plane usage</th></tr></thead>
		  <tbody>
		  <tr><td><strong><code>0x0000000F</code></strong></td><td>front left</td><td>left engine<sup><strong>(1)(2)</strong></sup></td></tr>
		  <tr><td><strong><code>0x000000F0</code></strong></td><td>front right</td><td>right engine<sup><strong>(1)(2)</strong></sup></td></tr>
		  <tr><td><strong><code>0x00000F00</code></strong></td><td>rear left</td><td>rudder</td></tr>
		  <tr><td><strong><code>0x0000F000</code></strong></td><td>rear right</td><td>elevators<sup><strong>(3)</strong></sup></td></tr>
		  <tr><td><strong><code>0x000F0000</code></strong></td><td>windshield</td><td>ailerons<sup><strong>(4)</strong></sup></td></tr>
		  <tr><td><strong><code>0x00F00000</code></strong></td><td>front bumper</td><td>(unused)</td></tr>
		  <tr><td><strong><code>0x0F000000</code></strong></td><td>rear bumber</td><td>(unused)</td></tr>
		  <tr><td><strong><code>0xF0000000</code></strong></td><td>(unused)</td><td>(unused)</td></tr>
		  </tbody>
		</table>
		<p>Individual nibble meaning:</p>
		<ul>
			<li><strong><code>0x1</code></strong> - is damaged</li>
			<li><strong><code>0x2</code></strong> - is very damaged (panel hangs loosely)</li>
			<li><strong><code>0x3</code></strong> - is removed<sup><strong>(5)(6)</strong></sup></li>
		</ul>
		<p>
			<strong>(1)</strong> single-engine planes only use the left engine, setting the right engine status will have no effect<br/>
			<strong>(2)</strong> jet engines cannot be damaged (Shamal, Hydra, AT-400, Andromada)<br/>
			<strong>(3)</strong> if the plane has two separate elevators, this only damages the right elevator (but it will repair both when setting it to 0)<br/>
			<strong>(4)</strong> this only damages the right aileron, but setting it to 0 repairs both left and right<br/>
			<strong>(5)</strong> plane panels do not get removed, they have another gradation of damaged<br/>
			<strong>(6)</strong> if this is a plane engine it will produce barely any thrust and most of the time even reverse thrust
		</p>
	</div>
	<h3 id="Appendix_Vehicle_Damage_Status_doorstates">Door states</h3>
	<div class="p">
		<p>Each byte contains the status of a different door.</p>
		<table>
			<thead><tr><th>Mask</th><th>Automobile usage</th><th>Plane usage</th></tr></thead>
			<tbody>
				<tr><td><strong><code>0x000000FF</code></strong></td><td>hood</td><td>rudder<sup><strong>(1)</strong></sup></td></tr>
				<tr><td><strong><code>0x0000FF00</code></strong></td><td>trunk</td><td>left elevator<sup><strong>(1)(2)</strong></sup></td></tr>
				<tr><td><strong><code>0x00FF0000</code></strong></td><td>drivers door</td><td>pilot door<sup><strong>(3)</strong></sup></td></tr>
				<tr><td><strong><code>0xFF000000</code></strong></td><td>co-drivers door</td><td>co-pilot door</td></tr>
			</tbody>
		</table>
		<p>The game holds state for 6 doors: hood, trunk, 2 front doors, 2 back doors. It's not possible to get or set the state of the back doors, their states are also not synced between clients.</p>
		<p>Individual byte meaning:</p>
		<ul>
			<li><strong><code>0x1</code></strong> - is opened<sup><strong>(4)(5)</strong></sup></li>
			<li><strong><code>0x2</code></strong> - is damaged<sup><strong>(6)</strong></sup></li>
			<li><strong><code>0x4</code></strong> - is removed</li>
		</ul>
		<p>
			<strong>(1)</strong> only value <strong><code>0x4</code></strong> has an effect: it will spawn a flying part (but the rudder/elevator will not actually be removed nor functionally damaged)<br/>
			<strong>(2)</strong> only applies to Stuntplane, Shamal, Hydra, Nevada, AT-400, Andromada<br/>
			<strong>(3)</strong> setting the pilot door to <strong><code>0</code></strong> creates a 'ghost door' on some models, see <a href="#Appendix_Vehicle_Damage_Status_planeghostdoors">Plane ghost doors</a> below<br/>
			<strong>(4)</strong> extra plane passenger doors (for Beagle, Dodo, Skimmer) don't open<br/>
			<strong>(5)</strong> opening the driver's door will result in the drive immediately closing the door again<br/>
			<strong>(6)</strong> plane doors do not have damaged models, so these look like undamaged doors
		</p>
	</div>
	<h3 id="Appendix_Vehicle_Damage_Status_lightstates">Light states</h3>
	<div class="p">
		<table>
		  <thead><tr><th>Mask</th><th>Automobile/Motorcycle usage</th></tr></thead>
		  <tbody>
		  <tr><td><strong><code>0x01</code></strong></td><td>front left broken</td></tr>
		  <tr><td><strong><code>0x04</code></strong></td><td>front right broken</td></tr>
		  <tr><td><strong><code>0x40</code></strong></td><td>rear both broken</td></tr>
		  </tbody>
		</table>
	</div>
	<h3 id="Appendix_Vehicle_Damage_Status_tirestates">Tire states</h3>
	<div class="p">
		<table>
		  <thead><tr><th>Mask</th><th>Automobile/Motorcycle usage</th></tr></thead>
		  <tbody>
		  <tr><td><strong><code>0x1</code></strong></td><td>rear right popped</td></tr>
		  <tr><td><strong><code>0x2</code></strong></td><td>front right popped</td></tr>
		  <tr><td><strong><code>0x4</code></strong></td><td>rear left popped</td></tr>
		  <tr><td><strong><code>0x8</code></strong></td><td>front left popped</td></tr>
		  </tbody>
		</table>
	</div>
<h3 id="Appendix_Vehicle_Damage_Status_planeghostdoors">Plane ghost doors</h3>
	<div class="p">
		<p>Fixing the damage of a <strong>Rustler, Stuntplane, Shamal, Hydra, Nevada</strong> (unexpectedly not for the Cropduster) by doing <code>UpdateVehicleDamageStatus(vehicleid, 0, 0, 0, 0)</code> will cause a 'ghost door' effect: the pilot's door will show undamaged but the door will not open while the player does their enter/exit animation. To fix this, set the value of the pilot's door to <strong><code>0x2</code></strong> (damaged). The door will not show as damaged as there is no damaged model for them, but this will fix the enter/exit animation.</p>
		<p>This should also be done after calling <a href="#RepairVehicle">RepairVehicle</a>, as that internally works by using <a href="#UpdateVehicleDamageStatus">UpdateVehicleDamageStatus</a>. Example fix:</p>
		<pre>RepairVehicle(vehicleid);
switch(GetVehicleModel(vehicleid)) {
case 476: // Rustler
case 513: // Stuntplane
case 519: // Shamal
case 520: // Hydra
case 553: // Nevada
	UpdateVehicleDamageStatus(vehicleid, 0, 0x20000, 0, 0);
}</pre>
	</div>
	<p><small><a href="#">top</a></small></p>
</xsl:template>

</xsl:stylesheet>
