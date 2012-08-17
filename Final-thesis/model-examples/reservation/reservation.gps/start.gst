<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n11">
            <attr name="layout">
                <string>270 12 107 33</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>123 12 107 33</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>113 70 115 37</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>272 69 103 37</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>140 138 71 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>291 137 71 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>224 186 60 33</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>291 242 60 33</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>156 242 60 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>168 307 30 37</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>239 246 30 37</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>306 304 30 37</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>236 80 30 37</string>
            </attr>
        </node>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Reservation</string>
            </attr>
        </edge>
        <edge to="n12" from="n11">
            <attr name="label">
                <string>start_time</string>
            </attr>
        </edge>
        <edge to="n12" from="n11">
            <attr name="label">
                <string>for</string>
            </attr>
            <attr name="layout">
                <string>500 0 323 28 267 42 251 98 12</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>type:Reservation</string>
            </attr>
        </edge>
        <edge to="n12" from="n10">
            <attr name="label">
                <string>start_time</string>
            </attr>
        </edge>
        <edge to="n12" from="n10">
            <attr name="label">
                <string>for</string>
            </attr>
            <attr name="layout">
                <string>500 0 176 28 193 84 251 98 12</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>string:&quot;Lisa Smith&quot;</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;John Doe&quot;</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>type:Person</string>
            </attr>
        </edge>
        <edge to="n10" from="n2">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n7" from="n2">
            <attr name="label">
                <string>name</string>
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
        <edge to="n11" from="n1">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n8" from="n3">
            <attr name="label">
                <string>number</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n9" from="n5">
            <attr name="label">
                <string>number</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>type:Table</string>
            </attr>
        </edge>
        <edge to="n0" from="n6">
            <attr name="label">
                <string>number</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
    </graph>
</gxl>
