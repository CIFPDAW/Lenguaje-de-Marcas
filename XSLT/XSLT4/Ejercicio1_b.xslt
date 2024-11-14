<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="catalogo">
        <datos>
            <da>
                <table border="1">
                    <tr>
                        <td>Nombre</td>
                        <td>Año de Nacimiento</td>
                    </tr>
                    <xsl:apply-templates select="libro/autores" />
                </table>
            </da>
        </datos>
    </xsl:template>

    <xsl:template match="autores">
        <xsl:apply-templates select="autor" />
    </xsl:template>

    <xsl:template match="autor">
        <tr>
            <td>
                <xsl:value-of select="." />
            </td>
            <td>
                <xsl:value-of select="@nacimiento" />

            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <table border="1">
            <tr> Cervantes </tr>
            <li> Loraca </li>
            <li> Miguel Hernandez </li>
        </table>
    </body>
</html> -->