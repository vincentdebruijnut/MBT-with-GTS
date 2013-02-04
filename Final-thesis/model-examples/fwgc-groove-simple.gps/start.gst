<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n2">
            <attr name="layout">
                <string>125 169 63 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>130 97 51 50</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>18 170 75 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>210 97 51 50</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>32 116 49 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>33 62 44 33</string>
            </attr>
        </node>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>farmer</string>
            </attr>
        </edge>
        <edge from="n2" to="n0">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:left</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>bank</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>cabbage</string>
            </attr>
        </edge>
        <edge from="n5" to="n0">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>flag:right</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>bank</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>goat</string>
            </attr>
        </edge>
        <edge from="n4" to="n5">
            <attr name="label">
                <string>eats</string>
            </attr>
        </edge>
        <edge from="n4" to="n0">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>wolf</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
            <attr name="label">
                <string>eats</string>
            </attr>
        </edge>
        <edge from="n3" to="n0">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
    </graph>
</gxl>
