<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>247 42 30 37</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>167 43 30 37</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>480 128 30 37</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>188 35 73 50</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>315 186 82 33</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>52 182 82 33</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>179 238 82 33</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>66 26 66 67</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>177 130 82 33</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>322 36 66 50</string>
            </attr>
        </node>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:Die</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>rolls</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge from="n10" to="n8">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge from="n9" to="n7">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge from="n8" to="n9">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>flag:turn</string>
            </attr>
        </edge>
        <edge from="n11" to="n9">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n11" to="n2">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:Location</string>
            </attr>
        </edge>
        <edge from="n7" to="n10">
            <attr name="label">
                <string>next</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge from="n12" to="n3">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge from="n12" to="n10">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
    </graph>
</gxl>
