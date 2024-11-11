<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/museos">
        <paises>
            <xsl:apply-templates select="museo" />
        </paises>
    </xsl:template>

    <xsl:template match="museo">
        <lugar tipo="museo">
            <ubicacion nombre="ciudad">
                <xsl:value-of select="@ciudad" />
            </ubicacion>
            <ubicacion tipo="pais">
                <xsl:value-of select="@pais" />
            </ubicacion>
            <nombre>
                <xsl:value-of select="@nombre" />
            </nombre>
        </lugar>
    </xsl:template>
</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8"?>
<lugares>
    <lugar tipo="museo">
        <ubicacion nombre="ciudad">Madrid</ubicacion>
        <ubicacion nombre="pais">España</ubicacion>
        <nombre>Museo del Prado</nombre>
    </lugar>
    <lugar tipo="museo">
        <ubicacion nombre="ciudad">Londres</ubicacion>
        <ubicacion nombre="pais">Reino Unido</ubicacion>
        <nombre>British Museum</nombre>
    </lugar>
    <lugar tipo="museo">
        <ubicacion nombre="ciudad">Londres</ubicacion>
        <ubicacion nombre="pais">Reino Unido</ubicacion>
        <nombre>National Gallery</nombre>
    </lugar>
</lugares> -->