<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca</title>
            </head>
            <body>
                <h1>Lbros con puntuación</h1>
                <table>
                    <tr>
                        <th>Posición</th>
                        <th>Título</th>
                        <th>Puntos</th>
                    </tr>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:value-of select="position()" />
            </td>
            <td>
                <xsl:value-of select="titulo" />
            </td>
            <td>
                <xsl:value-of select="puntos" />
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<html>
    <head>
        <title>Biblioteca</title>
    </head>
    <body>
        <h1>Lbros con puntuación</h1>
        <table>
            <tr>
                <th>Posición</th>
                <th>Título</th>
                <th>Puntos</th>
            </tr>
            <tr>
                <td>1</td>
                <td>La vida está en otra parte</td>
                <td>5</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Pantaleón y las visitadoras</td>
                <td>3</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Conversación en la catedral</td>
                <td>4</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Reina Roja</td>
                <td>5</td>
            </tr>
            <tr>
                <td>5</td>
                <td>Loba Negra</td>
                <td>4</td>
            </tr>
            <tr>
                <td>6</td>
                <td>Rey Blanco</td>
                <td>4.5</td>
            </tr>
        </table>
    </body>
</html> -->