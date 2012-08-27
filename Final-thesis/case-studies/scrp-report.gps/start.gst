<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>63 160 79 50</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>228 87 48 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>82 90 40 33</string>
            </attr>
        </node>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:Account</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>flag:AS_IDLE</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:SFU</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:CR</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>flag:SS_OFF</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
    </graph>
</gxl>
