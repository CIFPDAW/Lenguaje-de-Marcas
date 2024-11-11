<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <table border="1">
                <xsl:apply-templates />
            </table>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <tr>
            <td>
                <xsl:value-of select="nombre" />
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<html>
    <table border="1">
        <tr>
            <td>Administración de Sistemas Informáticos en Red</td>
        </tr>
        <tr>
            <td>Desarrollo de Aplicaciones Web</td>
        </tr>
        <tr>
            <td>Sistemas Microinformáticos y Redes</td>
        </tr>
    </table>
</html> -->