<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  exclude-result-prefixes="#all"
  xpath-default-namespace="http://www.w3.org/1999/xhtml"
  xmlns="http://www.w3.org/1999/xhtml"
  version="3.0">
  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p><xd:b>Created on:</xd:b> Apr 15, 2019</xd:p>
      <xd:p><xd:b>Author:</xd:b> mholmes</xd:p>
      <xd:p>Sorts the table rows by sort key.</xd:p>
    </xd:desc>
  </xd:doc>
  
  <xsl:strip-space elements="html head style body table thead tbody tr td div"/>
  <xsl:preserve-space elements="script"/>
  
  <xsl:output method="xhtml" encoding="UTF-8" normalization-form="NFC" exclude-result-prefixes="#all" html-version="5" 
    indent="yes"
  omit-xml-declaration="yes"/>
  
  <xd:doc>
    <xd:desc>Sort the rows in the body.</xd:desc>
  </xd:doc>
  <xsl:template match="tbody">
    <xsl:copy>
      <xsl:for-each select="tr">
        <xsl:sort select="@data-sort-key"/>
        <xsl:apply-templates select="."/>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xd:doc>
    <xd:desc>Default identity transform.</xd:desc>
  </xd:doc>
  <xsl:template match="@*|node()" priority="-1">
    <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>