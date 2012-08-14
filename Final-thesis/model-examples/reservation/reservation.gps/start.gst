<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n6">
            <attr name="layout">
                <string>267 157 60 33</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>412 158 60 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>343 106 60 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>105 107 71 33</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>101 164 71 33</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>86 39 103 37</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>77 233 115 37</string>
            </attr>
        </node>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n4" from="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n7" from="n2">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;John Doe&quot;</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>string:&quot;Lisa Smith&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
