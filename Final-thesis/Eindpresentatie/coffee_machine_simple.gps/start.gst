<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n6">
            <attr name="layout">
                <string>240 114 61 33</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>237 54 63 33</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>59 53 114 33</string>
            </attr>
        </node>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>Coffee</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>Button</string>
            </attr>
        </edge>
        <edge from="n2" to="n6">
            <attr name="label">
                <string>for</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>CoffeeMachine</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
    </graph>
</gxl>
