<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
	<xsl:output indent="yes" />

	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="wsdl:*" />

	<xsl:template match="wsdl:definitions">
		<xsl:apply-templates select="@* | node()" />
	</xsl:template>

	<xsl:template match="wsdl:types">
		<xsl:apply-templates select="@* | node()" />
	</xsl:template>
</xsl:stylesheet>