<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>114 118 30 37</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>42 37 82 50</string>
            </attr>
        </node>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:var1</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>Container</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>items</string>
            </attr>
        </edge>
    </graph>
</gxl>
