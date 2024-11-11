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
                <xsl:value-of select="@nombre" />
            </nombre>
            <ciudad>
                <xsl:value-of select="@ciudad" />
            </ciudad>
            <pais>
                <xsl:value-of select="@pais" />
            </pais>
        </museo>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<museos>
    <museo>
        <nombre>Museo del Prado</nombre>
        <ciudad>Madrid</ciudad>
        <pais>España</pais>
    </museo>
    <museo>
        <nombre>British Museum</nombre>
        <ciudad>Londres</ciudad>
        <pais>Reino Unido</pais>
    </museo>
    <museo>
        <nombre>National Gallery</nombre>
        <ciudad>Londres</ciudad>
        <pais>Reino Unido</pais>
    </museo>
</museos> -->