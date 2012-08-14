<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n12">
            <attr name="layout">
                <string>322 45 66 33</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>177 130 82 33</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>66 35 66 50</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>179 238 82 33</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>52 182 82 33</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>315 186 82 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>474 45 44 33</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>480 128 30 37</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>167 43 30 37</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>247 42 30 37</string>
            </attr>
        </node>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n10" from="n12">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n3" from="n12">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n10" from="n7">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>flag:turn</string>
            </attr>
        </edge>
        <edge to="n9" from="n11">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge to="n2" from="n11">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n9" from="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n7" from="n9">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge to="n8" from="n10">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Die</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>rolls</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
    </graph>
</gxl>
