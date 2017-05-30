<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : booking.xsl
    Created on : 30 May 2017, 11:45 AM
    Author     : d0se
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="bookings">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Is Staff?</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates/>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="booking>
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>

</xsl:stylesheet>
