<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
  xmlns:xh="http://www.w3.org/1999/xhtml"> 

  <sch:ns prefix="xh" uri="http://www.w3.org/1999/xhtml"/>
  
  <sch:pattern>
    <sch:rule context="xh:tbody/xh:tr">
      <sch:assert test="@data-sort-key and matches(@data-sort-key, '^[a-z]+$')">
        Table rows must have a @data-sort-key attribute consisting of a-z lower-case letters only.
      </sch:assert>
    </sch:rule>
  </sch:pattern>

</sch:schema>
