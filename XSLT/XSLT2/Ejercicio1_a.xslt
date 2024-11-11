<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/museos">
        <museos>
            <xsl:apply-templates select="museo" />
        </museos>
    </xsl:template>

    <xsl:template match="museo">
        <museo>
            <xsl:attribute name="nombre">
                <xsl:value-of select="nombre" />
            </xsl:attribute>
            <xsl:attribute
                name="ciudad">
                <xsl:value-of select="ciudad" />
            </xsl:attribute>
            <xsl:attribute
                name="pais">
                <xsl:value-of select="pais" />
            </xsl:attribute>
        </museo>
    </xsl:template>
</xsl:stylesheet>

<!-- 
<museos>
  <museo nombre="Museo del Prado" ciudad="Madrid" pais="España"/>
  <museo nombre="British Museum" ciudad="Londres" pais="Reino Unido"/>
  <museo nombre="National Gallery" ciudad="Londres" pais="Reino Unido"/>
</museos> -->