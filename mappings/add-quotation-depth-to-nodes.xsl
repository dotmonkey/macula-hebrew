<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:macula="http://www.w3.org/"
    exclude-result-prefixes="xs" version="2.0">
    <!-- declare macula namespace -->
    <xsl:namespace-alias stylesheet-prefix="xs" result-prefix="xsl"/>

    <xsl:variable name="quotations" select="document('../TSV/esv-quotations-alignment.xml')"/>
    
    <xsl:function name="macula:node-book-number">
        <xsl:param name="nodeBookId"/>
        <xsl:if test="string-length($nodeBookId) > 0">
            <xsl:value-of select="substring($nodeBookId, 1, 2)"/>
        </xsl:if>
    </xsl:function>

    <xsl:function name="macula:USFMBook">
        <xsl:param name="nodeBookId"/>
        <xsl:if test="string-length($nodeBookId) > 0">
            <xsl:variable name="nodeBookNumber">
                <xsl:value-of select="macula:node-book-number($nodeBookId)"/>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="$nodeBookNumber = '01'">
                    <xsl:value-of select="'GEN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '02'">
                    <xsl:value-of select="'EXO'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '03'">
                    <xsl:value-of select="'LEV'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '04'">
                    <xsl:value-of select="'NUM'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '05'">
                    <xsl:value-of select="'DEU'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '06'">
                    <xsl:value-of select="'JOS'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '07'">
                    <xsl:value-of select="'JDG'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '08'">
                    <xsl:value-of select="'RUT'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '09'">
                    <xsl:value-of select="'1SA'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '10'">
                    <xsl:value-of select="'2SA'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '11'">
                    <xsl:value-of select="'1KI'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '12'">
                    <xsl:value-of select="'2KI'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '13'">
                    <xsl:value-of select="'1CH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '14'">
                    <xsl:value-of select="'2CH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '15'">
                    <xsl:value-of select="'EZR'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '16'">
                    <xsl:value-of select="'NEH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '17'">
                    <xsl:value-of select="'EST'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '18'">
                    <xsl:value-of select="'JOB'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '19'">
                    <xsl:value-of select="'PSA'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '20'">
                    <xsl:value-of select="'PRO'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '21'">
                    <xsl:value-of select="'ECC'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '22'">
                    <xsl:value-of select="'SNG'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '23'">
                    <xsl:value-of select="'ISA'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '24'">
                    <xsl:value-of select="'JER'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '25'">
                    <xsl:value-of select="'LAM'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '26'">
                    <xsl:value-of select="'EZK'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '27'">
                    <xsl:value-of select="'DAN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '28'">
                    <xsl:value-of select="'HOS'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '29'">
                    <xsl:value-of select="'JOL'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '30'">
                    <xsl:value-of select="'AMO'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '31'">
                    <xsl:value-of select="'OBA'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '32'">
                    <xsl:value-of select="'JON'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '33'">
                    <xsl:value-of select="'MIC'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '34'">
                    <xsl:value-of select="'NAM'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '35'">
                    <xsl:value-of select="'HAB'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '36'">
                    <xsl:value-of select="'ZEP'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '37'">
                    <xsl:value-of select="'HAG'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '38'">
                    <xsl:value-of select="'ZEC'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '39'">
                    <xsl:value-of select="'MAL'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '40'">
                    <xsl:value-of select="'MAT'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '41'">
                    <xsl:value-of select="'MRK'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '42'">
                    <xsl:value-of select="'LUK'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '43'">
                    <xsl:value-of select="'JHN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '44'">
                    <xsl:value-of select="'ACT'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '45'">
                    <xsl:value-of select="'ROM'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '46'">
                    <xsl:value-of select="'1CO'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '47'">
                    <xsl:value-of select="'2CO'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '48'">
                    <xsl:value-of select="'GAL'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '49'">
                    <xsl:value-of select="'EPH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '50'">
                    <xsl:value-of select="'PHP'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '51'">
                    <xsl:value-of select="'COL'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '52'">
                    <xsl:value-of select="'1TH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '53'">
                    <xsl:value-of select="'2TH'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '54'">
                    <xsl:value-of select="'1TI'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '55'">
                    <xsl:value-of select="'2TI'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '56'">
                    <xsl:value-of select="'TIT'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '57'">
                    <xsl:value-of select="'PHM'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '58'">
                    <xsl:value-of select="'HEB'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '59'">
                    <xsl:value-of select="'JAS'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '60'">
                    <xsl:value-of select="'1PE'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '61'">
                    <xsl:value-of select="'2PE'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '62'">
                    <xsl:value-of select="'1JN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '63'">
                    <xsl:value-of select="'2JN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '64'">
                    <xsl:value-of select="'3JN'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '65'">
                    <xsl:value-of select="'JUD'"/>
                </xsl:when>
                <xsl:when test="$nodeBookNumber = '66'">
                    <xsl:value-of select="'REV'"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="'###'"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <xsl:function name="macula:USFMId">
        <xsl:param name="nodeId"/>
        <xsl:if test="string-length($nodeId) > 0">
            <xsl:value-of
                select="
                    concat(macula:USFMBook($nodeId),
                    ' ',
                    xs:integer(substring($nodeId, 3, 3)),
                    ':',
                    xs:integer(substring($nodeId, 6, 3)),
                    '!',
                    xs:integer(substring($nodeId, 9, 3))
                    )"
            />
        </xsl:if>
    </xsl:function>

    <xsl:function name="macula:USFMVerseId">
        <xsl:param name="nodeId"/>
        <xsl:if test="string-length($nodeId) > 0">
            <xsl:value-of
                select="
                    concat(macula:USFMBook($nodeId),
                    ' ',
                    xs:integer(substring($nodeId, 3, 3)),
                    ':',
                    xs:integer(substring($nodeId, 6, 3))
                    )"
            />
        </xsl:if>
    </xsl:function>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="m">
        <xsl:variable name="num" select="data(@xml:id)"/>
        <xsl:variable name="depth" select="$quotations/descendant::row[@clearId = $num]/data(@depth)"/>
        <xsl:element name="m">
        <xsl:copy-of select="@*"/>
        <xsl:attribute name="depth" select="$depth"/>
        <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
