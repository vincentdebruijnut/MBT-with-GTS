<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>308 83 43 34</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>125 160 27 38</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>123 83 36 34</string>
            </attr>
        </node>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:CR</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>highest_id</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:SFU</string>
            </attr>
        </edge>
    </graph>
</gxl>
