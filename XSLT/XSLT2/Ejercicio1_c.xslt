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
            <nombre>
                <xsl:value-of select="ciudad" />
            </nombre>
            <pais>
                <xsl:value-of select="pais" />
            </pais>
            <museo>
                <xsl:value-of select="nombre"/>
            </museo>
        </ciudad>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<ciudades>
    <ciudad>
        <nombre>Madrid</nombre>
        <pais>España</pais>
        <museo>Museo del Prado</museo>
    </ciudad>
    <ciudad>
        <nombre>Londres</nombre>
        <pais>Reino Unido</pais>
        <museo>British Museum</museo>
    </ciudad>
    <ciudad>
        <nombre>Londres</nombre>
        <pais>Reino Unido</pais>
        <museo>National Gallery</museo>
    </ciudad>
</ciudades> -->