<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n12">
            <attr name="layout">
                <string>472 256 83 37</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>490 145 57 37</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>236 147 63 33</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>481 49 81 37</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>74 141 44 37</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>59 53 114 33</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>237 53 63 33</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>360 138 53 50</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>499 96 44 37</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>497 192 44 37</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>237 256 63 33</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>356 257 64 33</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>356 46 59 50</string>
            </attr>
        </node>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>string:&quot;refund&quot;</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>string:&quot;tea&quot;</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>Button</string>
            </attr>
        </edge>
        <edge from="n4" to="n7">
            <attr name="label">
                <string>for</string>
            </attr>
            <attr name="layout">
                <string>500 0 268 164 387 163 12</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:&quot;coffee&quot;</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>CoffeeMachine</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>balance</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge from="n0" to="n4">
            <attr name="label">
                <string>has</string>
            </attr>
        </edge>
        <edge from="n0" to="n10">
            <attr name="label">
                <string>has</string>
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
        <edge from="n7" to="n7">
            <attr name="label">
                <string>flag:tea</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>Drink</string>
            </attr>
        </edge>
        <edge from="n7" to="n5">
            <attr name="label">
                <string>name</string>
            </attr>
            <attr name="layout">
                <string>500 0 387 163 519 164 12</string>
            </attr>
        </edge>
        <edge from="n7" to="n9">
            <attr name="label">
                <string>price</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>real:0.5</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>real:0.2</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>Button</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>for</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>Refund</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>flag:coffee</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>Drink</string>
            </attr>
        </edge>
        <edge from="n6" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n8">
            <attr name="label">
                <string>price</string>
            </attr>
        </edge>
    </graph>
</gxl>
