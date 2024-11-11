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
            <xsl:attribute name="nombre">
                <xsl:value-of select="@pais" />
            </xsl:attribute>
            <ciudad>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="@ciudad" />
                </xsl:attribute>
                <museo>
                    <xsl:value-of select="@nombre" />
                </museo>
            </ciudad>
        </pais>
    </xsl:template>
</xsl:stylesheet>

<!-- <?xml version="1.0" encoding="UTF-8"?>
<paises>
    <pais nombre="España">
        <ciudad nombre="Madrid">
            <museo nombre="Museo del Prado" />
        </ciudad>
    </pais>
    <pais nombre="Reino Unido">
        <ciudad nombre="Londres">
            <museo nombre="British Museum" />
        </ciudad>
    </pais>
    <pais nombre="Reino Unido">
        <ciudad nombre="Londres">
            <museo nombre="National Gallery" />
        </ciudad>
    </pais>
</paises> -->