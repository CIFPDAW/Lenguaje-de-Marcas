<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/museos">
        <museos>
            <xsl:apply-templates select="museo" />
        </museos>
    </xsl:template>

    <xsl:template match="museo">
        <museo>
            <nombre>
                <xsl:value-of select="nombre" />
            </nombre>
            <ubicacion>
                <xsl:attribute
                    name="ciudad">
                    <xsl:value-of select="ciudad" />
                </xsl:attribute>
                <xsl:attribute
                    name="pais">
                    <xsl:value-of select="pais" />
                </xsl:attribute>
            </ubicacion>
        </museo>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<museos>
    <museo>
        <nombre>Museo del Prado</nombre>
        <ubicacion ciudad="Madrid" pais="España" />
    </museo>
    <museo>
        <nombre>British Museum</nombre>
        <ubicacion ciudad="Londres" pais="Reino Unido" />
    </museo>
    <museo>
        <nombre>National Gallery</nombre>
        <ubicacion ciudad="Londres" pais="Reino Unido" />
    </museo>
</museos> -->