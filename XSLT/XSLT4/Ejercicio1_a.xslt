<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="catalogo">
        <html>
            <head>
                <title>Resultado</title>
            </head>
            <body>
                <ol>
                    <xsl:apply-templates select="libro/autores" />
                </ol>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="autores">
        <xsl:apply-templates select="autor"/>
    </xsl:template>

    <xsl:template match="autor">
        <li>
            <xsl:value-of select="." />
        </li>
    </xsl:template>

</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <ol>
            <li> Cervantes </li>
            <li> Loraca </li>
            <li> Miguel Hernandez </li>
        </ol>
    </body>
</html> -->