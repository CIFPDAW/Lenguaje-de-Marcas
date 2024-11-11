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
            <xsl:attribute name="ubicacion">
                <xsl:value-of select="@ciudad" /> ( <xsl:value-of select="@pais" /> ) </xsl:attribute>
            <xsl:value-of select="@nombre" />
        </museo>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<museos>
    <museo ubicacion="Madrid (España)">Museo del Prado</museo>
    <museo ubicacion="Londres (Reino Unido)">British Museum</museo>
    <museo ubicacion="Londres (Reino Unido)">National Gallery</museo>
</museos> -->