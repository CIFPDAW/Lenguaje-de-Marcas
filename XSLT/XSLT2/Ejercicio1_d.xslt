<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/museos">
        <ciudades>
            <xsl:apply-templates select="museo" />
        </ciudades>
    </xsl:template>

    <xsl:template match="museo">
        <ciudad>
            <xsl:attribute
                name="nombre">
                <xsl:value-of select="ciudad" />
            </xsl:attribute>
            <xsl:attribute
                name="pais">
                <xsl:value-of select="pais" />
            </xsl:attribute>
            <museo>
                <xsl:value-of select="nombre" />
            </museo>
        </ciudad>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<ciudades>
    <ciudad nombre="Madrid" pais="España">
        <museo>Museo del Prado</museo>
    </ciudad>
    <ciudad nombre="Londres" pais="Reino Unido">
        <museo>British Museum</museo>
    </ciudad>
    <ciudad nombre="Londres" pais="Reino Unido">
        <museo>National Gallery</museo>
    </ciudad>
</ciudades> -->