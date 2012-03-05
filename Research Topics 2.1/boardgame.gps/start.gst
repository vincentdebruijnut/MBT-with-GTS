<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n19">
            <attr name="layout">
                <string>231 135 27 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>22 141 27 33</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>169 174 27 33</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>533 37 57 31</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>388 122 73 31</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>277 29 57 46</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>390 230 73 31</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>26 73 27 33</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>263 174 73 31</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>526 178 73 31</string>
            </attr>
        </node>
        <node id="n21">
            <attr name="layout">
                <string>234 72 27 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>139 71 39 31</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>90 178 27 33</string>
            </attr>
        </node>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n9" from="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Die</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n19" from="n19">
            <attr name="label">
                <string>int:5</string>
            </attr>
        </edge>
        <edge to="n9" from="n11">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>flag:turn</string>
            </attr>
        </edge>
        <edge to="n8" from="n10">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n21" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>505 -1 158 86 247 88 12</string>
            </attr>
        </edge>
        <edge to="n17" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>430 1 158 86 182 190 12</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>577 3 158 86 35 157 12</string>
            </attr>
        </edge>
        <edge to="n10" from="n12">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n21" from="n21">
            <attr name="label">
                <string>int:6</string>
            </attr>
        </edge>
        <edge to="n10" from="n7">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n19" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>472 -8 158 86 244 151 12</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>int:4</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>500 0 158 86 39 89 12</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n7" from="n9">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n5" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>746 3 158 86 103 194 12</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
    </graph>
</gxl>
