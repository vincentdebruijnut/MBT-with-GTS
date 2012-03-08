<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>21 12 27 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>0 87 27 33</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>330 147 27 33</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>240 151 27 33</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>161 57 73 31</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>290 149 27 33</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>28 127 27 33</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>382 151 27 33</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>268 43 57 46</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>366 44 57 31</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>73 144 27 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>63 72 39 31</string>
            </attr>
        </node>
        <edge to="n17" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>430 1 181 45 148 140 12</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>int:4</string>
            </attr>
        </edge>
        <edge to="n5" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>746 3 174 45 90 126 12</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge to="n2" from="n11">
            <attr name="label">
                <string>number</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n2" from="n12">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Die</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>500 0 170 40 27 97 12</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n3" from="n0">
            <attr name="label">
                <string>canThrow</string>
            </attr>
            <attr name="layout">
                <string>577 3 83 89 61 105 12</string>
            </attr>
        </edge>
        <edge to="n7" from="n9">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge to="n2" from="n9">
            <attr name="label">
                <string>field</string>
            </attr>
        </edge>
        <edge to="n7" from="n11">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n6" from="n12">
            <attr name="label">
                <string>number</string>
            </attr>
            <attr name="layout">
                <string>500 0 380 47 329 95 344 164 12</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>flag:turn</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
    </graph>
</gxl>
