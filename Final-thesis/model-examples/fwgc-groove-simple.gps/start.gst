<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>33 62 44 33</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>32 116 49 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>210 97 51 50</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>18 170 75 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>130 97 51 50</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>32 26 63 33</string>
            </attr>
        </node>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>wolf</string>
            </attr>
        </edge>
        <edge to="n0" from="n3">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n4" from="n3">
            <attr name="label">
                <string>eats</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>goat</string>
            </attr>
        </edge>
        <edge to="n0" from="n4">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n5" from="n4">
            <attr name="label">
                <string>eats</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>flag:right</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>bank</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>cabbage</string>
            </attr>
        </edge>
        <edge to="n0" from="n5">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>flag:left</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>bank</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>farmer</string>
            </attr>
        </edge>
        <edge to="n0" from="n2">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
    </graph>
</gxl>
