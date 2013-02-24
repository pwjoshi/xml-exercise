<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Create an alternate version of the countries database: for each country, include its name and population as sublements, and the number of languages and number of cities as attributes (called "languages" and "cities" respectively).  -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match='/'>
    <countries>
      <xsl:apply-templates />
    </countries>
  </xsl:template>
  <xsl:template match='country'>
    <country 
      languages='{count(language)}'
      cities='{count(city)}' >
      <name><xsl:value-of select='data(@name)'/> </name>
      <population><xsl:value-of select='data(@population)'/> </population>
    </country>
  </xsl:template>

</xsl:stylesheet>
