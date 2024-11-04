<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <xsl:apply-templates/>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <p>
            <xsl:value-of select="nombre" />
        </p>
    </xsl:template>

</xsl:stylesheet>

<!-- <html>
 <p>Administración de Sistemas Informáticos en Red</p>
 <p>Desarrollo de Aplicaciones Web</p>
 <p>Sistemas Microinformáticos y Redes</p>
</html> -->