<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="css/firm.css"/>
            </head>
            <body>
                <div id="przod">
                    <h1 id="info">
                        <xsl:value-of select="company/metadata/name"/>
                    </h1>

                    <xsl:value-of select="company/contact/city"/>
&#xA0;<xsl:value-of select="company/contact/street"/>
&#xA0;<xsl:value-of select="company/contact/nr"/>

            <p id="contact">
                <xsl:value-of select="company/contact/tel"/>
                <br/>
                <xsl:value-of select="company/contact/mail"/>
            </p>
            <img class="cydr" src="img/masny_ben.png" />
        </div>

        <div id="tyl">
            <h1 id="nickname">
                <xsl:value-of select="company/metadata/nick"/>
                <xsl:value-of select="company/metadata/surname"/>
            </h1>

            <ul id="list">
                <xsl:for-each select="company/offerts/offert">
                    <li>
                        <xsl:value-of select="name"/>
                        <xsl:value-of select="price"/>
                    </li>

                </xsl:for-each>
            </ul>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>