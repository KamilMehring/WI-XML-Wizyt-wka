<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <head>
            <link rel="stylesheet" type="text/css" href="css/web.css" />
        </head>
        <body>
            <div id="strona">
                <header>
                    <img id="logo" src="img/masny_ben.png"/>
                </header>
                <div id="main">
                    <h2>
                        <xsl:value-of select="company/contact/status"/>
                    </h2>
                    <xsl:value-of select="company/contact/tel"/>
                    <p>
                        <xsl:value-of select="company/contact/mail"/>
                    </p>
                    <xsl:value-of select="company/contact/city"/>
                    &#xA0;<xsl:value-of select="company/contact/code"/>
                <p>
                    <xsl:value-of select="company/contact/street"/>
                        &#xA0;<xsl:value-of select="company/contact/nr"/>
                </p>
                <div id="offerts">
                    <h2>
                        <xsl:value-of select="company/offerts/offert/status"/>
                    </h2>
                    <ul>
                        <xsl:for-each select="company/offerts/offert">
                            <li>
                                <xsl:value-of select="name"/>
                            &#xA0;<xsl:value-of select="price"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
            </div>
            <div id="map">
                <div>
                    <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=15.236811339855196%2C52.732944389688036%2C15.240241885185243%2C52.73438012390306&amp;layer=mapnik&amp;marker=52.73366226270606%2C15.238526612520218" style="border: 1px solid black"></iframe>
                </div>
            </div>
        </div>
    </body>
</xsl:template>
</xsl:stylesheet>