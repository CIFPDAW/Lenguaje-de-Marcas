<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8" />

    <xsl:template match="/">
        <datos>
            <xsl:apply-templates select="listado/cuenta" />
        </datos>
    </xsl:template>

    <xsl:template match="cuenta">
        <cuenta>
            <xsl:attribute name="dnititular">
                <xsl:value-of select="titular/@dni" />
            </xsl:attribute>
            <creacion>
                <xsl:value-of select="fechacreacion" />
            </creacion>
            <Titular>
                <xsl:value-of select="titular" />
            </Titular>
            <saldocactual>
                <xsl:value-of select="saldoactual" />
                <xsl:value-of select="saldoactual/@moneda" />

            </saldocactual>
        </cuenta>
    </xsl:template>
</xsl:stylesheet>