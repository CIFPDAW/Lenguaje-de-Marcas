<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/museos">
        <paises>
            <xsl:apply-templates select="museo" />
        </paises>
    </xsl:template>

    <xsl:template match="museo">
        <pais>
            <xsl:attribute
                name="nombre">
                <xsl:value-of select="pais" />
            </xsl:attribute>
            <museo>
                <xsl:attribute
                    name="museo">
                    <xsl:value-of select="nombre" />
                </xsl:attribute>
                <xsl:attribute
                    name="ciudad">
                    <xsl:value-of select="ciudad" />
                </xsl:attribute>
            </museo>
        </pais>
    </xsl:template>
</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8"?>
<paises>
    <pais nombre="España">
        <museo museo="Museo del Prado" ciudad="Madrid" />
    </pais>
    <pais nombre="Reino Unido">
        <museo museo="British Museum" ciudad="Londres" />
    </pais>
    <pais nombre="Reino Unido">
        <museo museo="National Gallery" ciudad="Londres" />
    </pais>
</paises> -->