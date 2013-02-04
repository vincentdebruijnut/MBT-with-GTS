<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>68 81 67 50</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>214 81 56 50</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>64 171 79 50</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>53 13 93 37</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>225 16 32 37</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:CR</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:SS_OFF</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:var_1</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge from="n0" to="n3">
            <attr name="label">
                <string>state</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:SFU</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>flag:var_2</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>var_name</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:Account</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>flag:AS_IDLE</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;SS_OFF&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:&quot;&quot;</string>
            </attr>
        </edge>
    </graph>
</gxl>
