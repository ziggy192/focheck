<?xml version="1.0" encoding="UTF-8"?>
<!--
     Copyright 2015 Antenna House, Inc.

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <include href="fo.sch"/>
    <include href="fo-property.sch" />
    <ns uri="http://www.w3.org/1999/XSL/Format" prefix="fo" />
    <ns uri="http://www.antennahouse.com/names/XSLT/Functions/Document" prefix="ahf" />
    
    <phase id="fo">
        <active pattern="fo-fo" /></phase>
    <phase id="property">
        <active pattern="fo-property"></active>
    </phase>
    <pattern id="axf">
        <p>http://www.antennahouse.com/product/ahf60/docs/ahf-ext.html#axf.document-info</p>
        <rule context="ahf:document-info[@name = ('author-title', 'description-writer', 'copyright-status', 'copyright-notice', 'copyright-info-url')]" id="axf-1" role="axf-1">
            <assert test="empty(../ahf:document-info[@name eq 'xmp'])" role="axf-2">"<value-of select="@name"/>" axf:document-info cannot be used when "xmp" axf:document-info is present.</assert>
        </rule>
    </pattern>
</schema>
