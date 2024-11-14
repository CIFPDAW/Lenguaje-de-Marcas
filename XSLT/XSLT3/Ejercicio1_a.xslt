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
            <li> Título - La vida está en otra parte</li>
            <li> Título - Pantaleón y las visitadoras</li>
            <li> Título - Conversación en la catedral</li>
            <li> Título - Reina Roja</li>
            <li> Título - Loba Negra</li>
            <li> Título - Rey Blanco</li>
        </ul>
    </body>
</html> -->