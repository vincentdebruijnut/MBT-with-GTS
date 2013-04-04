<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start1">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>88 48 71 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>78 157 88 33</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>215 49 88 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>204 157 104 50</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>149 98 84 33</string>
            </attr>
        </node>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>type:SideWalk</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:SideWalk</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:TrafficLight</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>flag:green</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>type:Crossing</string>
            </attr>
        </edge>
        <edge to="n1" from="n4">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n3" from="n4">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n2" from="n4">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
    </graph>
</gxl>
