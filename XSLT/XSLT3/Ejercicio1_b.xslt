<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca</title>
            </head>
            <body>
                <h1>Listado Libros</h1>
                <ul>
                    <xsl:apply-templates />
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <li>
            <xsl:text> Título - </xsl:text>
                <xsl:value-of select="titulo" />
            <xsl:text>(</xsl:text>
                <xsl:value-of select="autor" />
            <xsl:text> - </xsl:text>
                <xsl:value-of select="fechaPublicacion/@año" />
            <xsl:text>)</xsl:text>
        </li>
    </xsl:template>

</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<html>
    <head>
        <title>Biblioteca</title>
    </head>
    <body>
        <h1>Listado Libros</h1>
        <ul>
            <li>Título - La vida está en otra parte( Milan Kundera - 1973)</li>
            <li>Título - Pantaleón y las visitadoras( Mario Vargas Llosa - 1973) </li>
            <li>Título - Conversación en la catedral( Mario Vargas Llosa - 1969) </li>
            <li>Título - Reina Roja( Juan Gómez Jurado - 2010) </li>
            <li>Título - Loba Negra( Juan Gómez Jurado - 2014) </li>
            <li>Título - Rey Blanco( Juan Gómez Jurado - 2018) </li>
        </ul>
    </body>
</html> -->