<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xml:lang="de">
    <sch:title>Example of Multi-Lingual Schema</sch:title>
    <sch:pattern>
        <sch:rule context="topic">
            <sch:assert test="shortdesc" diagnostics="d1 d2 d3 d5 d6" sqf:fix="addshortdesc"> A topic should have a shortdesc. </sch:assert>
            <sqf:fix id="addshortdesc">
                <sqf:description>
                    <sqf:title ref="add_shortdesc_en add_shortdesc_en2 add_shortdesc_de add_shortdesc_us add_shortdesc_us2">
                        Add a shortdesc to the <sch:value-of select="name()"/></sqf:title>
                    <sqf:p ref="desc_add_shortdesc_en desc_add_shortdesc_en2 desc_add_shortdesc_de desc_add_shortdesc_us desc_add_shortdesc_us2">
                        A shortdesc element should be added to the <sch:value-of select="name()"/></sqf:p>
                </sqf:description>
                <sqf:add node-type="element" position="last-child" target="shortdesc"/>
            </sqf:fix>
        </sch:rule>
    </sch:pattern>
    <sch:diagnostics>
        <sch:diagnostic id="d1" xml:lang="en"> A <sch:value-of select="name()"/> should have a shortdesc. </sch:diagnostic>
        <sch:diagnostic id="d2" xml:lang="de"> Ein Hund sollte ein Bein haben. </sch:diagnostic>
        <sch:diagnostic id="d3" xml:lang="en"> A <sch:value-of select="name()"/> should have a shortdesc. </sch:diagnostic>
        <sch:diagnostic id="d5" xml:lang="en-US"> Or a shortdesc has a topic. </sch:diagnostic>
        <sch:diagnostic id="d6" xml:lang="en-US"> Or a shortdesc has a topic. </sch:diagnostic>
    </sch:diagnostics>
    <sch:diagnostics>
        <sch:diagnostic id="add_shortdesc_en" xml:lang="en"> Add a shortdesc to the <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="add_shortdesc_de" xml:lang="de"> Fügen Sie einen shortdesc zu dem hinzu <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="add_shortdesc_en2" xml:lang="en"> Add a shortdesc to the <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="add_shortdesc_us" xml:lang="en-US"> You must add a shortdesc </sch:diagnostic>
        <sch:diagnostic id="add_shortdesc_us2" xml:lang="en-US"> You must add a shortdesc </sch:diagnostic>
    </sch:diagnostics>
    <sch:diagnostics>
        <sch:diagnostic id="desc_add_shortdesc_en" xml:lang="en"> A shortdesc element should be added to the <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="desc_add_shortdesc_de" xml:lang="de"> FEin Knochenelement sollte dem hinzugefügt werden <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="desc_add_shortdesc_en2" xml:lang="en"> A shortdesc element should be added to the <sch:value-of select="name()"/> </sch:diagnostic>
        <sch:diagnostic id="desc_add_shortdesc_us" xml:lang="en-US"> You must add a shortdesc element to the topic </sch:diagnostic>
        <sch:diagnostic id="desc_add_shortdesc_us2" xml:lang="en-US"> You must add a shortdesc element to the topic  </sch:diagnostic>
    </sch:diagnostics>
</sch:schema>
