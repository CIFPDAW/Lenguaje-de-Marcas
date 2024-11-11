<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <xsl:apply-templates />
    </html>
  </xsl:template>

  <xsl:template match="cifp">
    <h1>
      <xsl:value-of select="@nombre" />
    </h1>
        <p> Pagina Web: <a>
        <xsl:attribute name="href">
          <xsl:value-of select="@web" />
        </xsl:attribute>
        <xsl:value-of select="@web" />
      </a>
    </p>
    <ul>
      <xsl:apply-templates />
    </ul>
  </xsl:template>

  <xsl:template match="ciclo">
    <li>
      <xsl:value-of select="nombre" />
    </li>
  </xsl:template>

</xsl:stylesheet>

<!-- <html>
  <h1>CIFP Cesar Manrique</h1>
  <p>
    Página web:
    <a href=" http://www. cifpcesarmanrique.es/">
      http://www. cifpcesarmanrique.es/
    </a>
  </p>
  <ul>
    <li>Administración de Sistemas Informáticos en Red</li>
    <li>Desarrollo de Aplicaciones Web</li>
    <li>Sistemas Microinformáticos y Redes</li>
  </ul>
</html> -->