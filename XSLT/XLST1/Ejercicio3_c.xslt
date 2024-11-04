<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="cifp">
        <html>
            <h1>
                <xsl:value-of select="nombre" />
            </h1>
            <table border="1">
                <xsl:apply-templates select="ciclos/ciclo" />
            </table>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <tr>
            <td>
                <xsl:value-of select="nombre" />
            </td>
            <td>
                <xsl:value-of select="grado" />
            </td>
            <td>
                <xsl:value-of select="decretoTitulo/@año" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8"?>
<html>
    <h1>CIFP Cesar Manrique</h1>
    <table border="1">
        <tr>
            <th>Nombre del ciclo</th>
            <th>Grado</th>
            <th>Año del título</th>
        </tr>
        <tr>
            <td>Administración de Sistemas Informáticos en Red</td>
            <td>Superior</td>
            <td>2009</td>
        </tr>
        <tr>
            <td>Desarrollo de Aplicaciones Web</td>
            <td>Superior</td>
            <td>2010</td>
        </tr>
        <tr>
            <td>Sistemas Microinformáticos y Redes</td>
            <td>Medio</td>
            <td>2008</td>
        </tr>
    </table>
</html> -->