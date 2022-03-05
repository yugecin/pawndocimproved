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
	P { MARGIN-BOTTOM: 0.5em; MARGIN-TOP: 0.5em; MARGIN-LEFT: 4em }
	P.noindent { MARGIN-LEFT: 0em }
	P.syntax { FONT-WEIGHT: bold }
	HR.para { HEIGHT: 0; BORDER: 0; COLOR: white; BACKGROUND-COLOR: transparent; MARGIN-TOP: 0.5em; MARGIN-BOTTOM: 0; }
	XMP { BACKGROUND-COLOR: #ddeeff; MARGIN: 1em }
	PRE { BACKGROUND-COLOR: #ddeeff; MARGIN: 1em }
	TABLE { BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none }
	TABLE.param { BACKGROUND-COLOR: #ddeeff; }
	TABLE.transition { BACKGROUND-COLOR: #ddeeff; }
	TD { BACKGROUND-COLOR: #ddeeff; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none; MARGIN: 2px; PADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; PADDING-TOP: 2px; TEXT-ALIGN: left }
	TD.header { BACKGROUND-COLOR: transparent; FONT-WEIGHT: bold; COLOR: #4e4887; WIDTH: 3.3em; PADDING-LEFT: 0px; MARGIN-BOTTOM: 0.5em }
	TD.inline { BACKGROUND-COLOR: transparent }
	TD.param { FONT-WEIGHT: bold; FONT-STYLE: italic; PADDING-RIGHT: 20px; }
	TD.transition { PADDING-RIGHT: 10px; }
	TH { BACKGROUND-COLOR: #336699; COLOR: #ddeeff; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none; MARGIN: 2px; PADDING-BOTTOM: 2px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 2px; TEXT-ALIGN: left }
	UL { MARGIN-TOP: 0.5em; MARGIN-LEFT: 4em; PADDING-LEFT: 0; }
	LI.referrer { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.dependency { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.seealso { DISPLAY: inline-block; PADDING-RIGHT: 8px }
	LI.attribute { DISPLAY: inline; PADDING-RIGHT: 8px }
	OL { MARGIN-TOP: 0.5em; }
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
	H2 A.wiki:active, H2 A.wiki:hover { COLOR: #f16043; }
	H3 { COLOR: #4e4887; FONT-SIZE: 1em; MARGIN-BOTTOM: 0.5em }
	H4 { COLOR: #4e4887; FONT-SIZE: 1em; FONT-STYLE: italic; MARGIN-BOTTOM: 0.5em }
	H5 { COLOR: #4e4887; FONT-SIZE: 0.8em; MARGIN-BOTTOM: 0.5em }
	H6 { COLOR: #4e4887; FONT-SIZE: 0.8em; FONT-STYLE: italic; MARGIN-BOTTOM: 0.5em }
	DIV { BACKGROUND: #EEEEEE; PADDING: 0.2em 2em; PADDING-BOTTOM: 0.4em; MARGIN-BOTTOM: 2em; }
	DIV UL { LIST-STYLE: none; }
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
	<div>
		<h2>Appendices (1)</h2>
		<ul>
			<li><a href="#Appendix_A_Keys">Appendix A: Table of Keys</a></li>
		</ul>
	</div>
	<xsl:apply-templates select="doc/members/member[not(@name='F:__file' or @name='F:__date' or @name='F:__time')]"/>
	<xsl:call-template name="memberheader">
		<xsl:with-param name="membertype" select="'appendix'"/>
		<xsl:with-param name="membername" select="'Appendix A: Table of keys'"/>
		<xsl:with-param name="anchor" select="'Appendix_A_Keys'"/>
	</xsl:call-template>
	<table style="width:100%">
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
	<p class="noindent"><a href="#">Top</a></p>
</BODY>
</HTML>
</xsl:template>

<xsl:template name="index">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<div>
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
		<a class="wiki" target="_blank"><xsl:attribute name="href">https://team.sa-mp.com/wiki/<xsl:value-of select="$membername"/></xsl:attribute>wiki</a>
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
					<p><xsl:apply-templates select="text()"/></p>
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
			<xsl:if test="seealso">
				<h3>See Also</h3>
				<ul><xsl:apply-templates select="seealso"/></ul>
			</xsl:if>
		</xsl:when>
		<xsl:when test="substring(@name,1,2) = 'C:'">
			<xsl:call-template name="memberheader">
				<xsl:with-param name="membertype" select="'constant'"/>
				<xsl:with-param name="membername" select="substring(@name,3)"/>
				<xsl:with-param name="anchor" select="substring(@name,3)"/>
			</xsl:call-template>
			<xsl:apply-templates select="summary"/>
			<h3>Value</h3>
			<p><xsl:value-of select="@value"/></p>
			<xsl:apply-templates select="tagname"/>
			<xsl:apply-templates select="size"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<p><xsl:apply-templates select="text()"/></p>
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
			<xsl:if test="seealso">
				<h3>See Also</h3>
				<ul><xsl:apply-templates select="seealso"/></ul>
			</xsl:if>
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
				<p><table class="param"><xsl:apply-templates select="param"/></table></p>
			</xsl:if>
			<xsl:apply-templates select="tagname"/>
			<xsl:apply-templates select="returns"/>
			<xsl:if test="remarks or text()">
				<h3>Remarks</h3>
				<xsl:apply-templates select="remarks"/>
				<xsl:if test="text()">
					<p><xsl:apply-templates select="text()"/></p>
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
				<p>
					<table class="transition">
						<tr><th>Source</th><th>Target</th><th>Condition</th></tr>
						<xsl:apply-templates select="transition"/>
					</table>
				</p>
			</xsl:if>
			<xsl:apply-templates select="location"/>
			<xsl:apply-templates select="stacksize"/>
			<xsl:apply-templates select="codesize"/>
			<xsl:if test="seealso">
				<h3>See Also</h3>
				<ul><xsl:apply-templates select="seealso"/></ul>
			</xsl:if>
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
					<p><xsl:apply-templates select="text()"/></p>
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
			<xsl:if test="seealso">
				<h3>See Also</h3>
				<ul><xsl:apply-templates select="seealso"/></ul>
			</xsl:if>
		</xsl:when>
	</xsl:choose>
	<p class="noindent"><a href="#">Top</a></p>
</xsl:template>

<xsl:template match="summary">
	<p><xsl:apply-templates/></p>
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
	<p><xsl:value-of select="@value"/></p>
</xsl:template>

<xsl:template match="size">
	<h3>Size</h3>
	<p><xsl:value-of select="@value"/></p>
</xsl:template>

<xsl:template match="returns">
	<h3>Returns</h3>
	<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="location">
	<h3>Defined in</h3>
	<p><xsl:value-of select="@file"/>, line <xsl:value-of select="@line"/></p>
</xsl:template>

<xsl:template match="remarks">
	<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="example">
	<h3>Example</h3>
	<p><xsl:apply-templates/></p>
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
	<p><xsl:value-of select="@value"/> cells</p>
</xsl:template>

<xsl:template match="codesize">
	<h3>Code size</h3>
	<p><xsl:value-of select="@value"/> bytes</p>
</xsl:template>

<xsl:template match="automaton">
	<h3>Automaton</h3>
	<p><xsl:value-of select="@name"/></p>
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

<xsl:template match="seealso">
	<li class="seealso"><a><xsl:attribute name="href">#<xsl:value-of select="@name"/></xsl:attribute><xsl:value-of select="@name"/>()</a></li>
</xsl:template>

<xsl:template match="paramref">
	<i><xsl:value-of select="@name"/></i>
</xsl:template>

<xsl:template match="a"><a><xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute><xsl:apply-templates/></a></xsl:template>

<xsl:template match="c"><code><xsl:apply-templates/></code></xsl:template>

<xsl:template match="em"><em><xsl:apply-templates/></em></xsl:template>

<xsl:template match="b"><strong><xsl:apply-templates/></strong></xsl:template>

<xsl:template match="strong"><strong><xsl:apply-templates/></strong></xsl:template>

<xsl:template match="ul"><ul><xsl:apply-templates/></ul></xsl:template>

<xsl:template match="ol"><ol><xsl:apply-templates/></ol></xsl:template>

<xsl:template match="li"><li><xsl:apply-templates/></li></xsl:template>

<xsl:template match="p"><br/><xsl:apply-templates/></xsl:template>

<xsl:template match="para"><br/><xsl:apply-templates/></xsl:template>

<xsl:template match="section"><h2 class="general"><xsl:apply-templates/></h2></xsl:template>

<xsl:template match="subsection"><h3 class="general"><xsl:apply-templates/></h3></xsl:template>

</xsl:stylesheet>
