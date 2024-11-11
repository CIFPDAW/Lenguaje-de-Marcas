<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="cifp">
        <html>
            <h1>
                <xsl:text>Ciclos formativos del </xsl:text>
                <xsl:value-of select="nombre" />
            </h1>
            <xsl:apply-templates select="ciclos/ciclo" />
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <li>
            <xsl:value-of select="@id" />
            <br />
            <xsl:value-of select="nombre" />
            <xsl:text>, Ciclo Formativo de Grado </xsl:text>
            <xsl:value-of select="grado" />
            <xsl:text> creado en </xsl:text>
            <xsl:value-of select="decretoTitulo/@año" />    
        </li>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<html>
    <h1>Ciclos formativos del CIFP Cesar Manrique</h1>
    <ul>
        <li>ASIR<br />Administración de Sistemas Informáticos en Red, Ciclo Formativo de Grado
            Superior creado en 2009</li>
        <li>DAW<br />Desarrollo de Aplicaciones Web, Ciclo Formativo de Grado Superior creado en
            2010</li>
        <li>SMR<br />Sistemas Microinformáticos y Redes, Ciclo Formativo de Grado Medio creado en
            2008</li>
    </ul>
</html> -->