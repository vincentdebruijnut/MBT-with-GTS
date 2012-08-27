<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph edgemode="directed" edgeids="false" role="graph" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n21">
            <attr name="layout">
                <string>273 122 44 37</string>
            </attr>
        </node>
        <node id="n19">
            <attr name="layout">
                <string>290 345 44 37</string>
            </attr>
        </node>
        <node id="n18">
            <attr name="layout">
                <string>256 274 85 33</string>
            </attr>
        </node>
        <node id="n17">
            <attr name="layout">
                <string>411 32 30 37</string>
            </attr>
        </node>
        <node id="n16">
            <attr name="layout">
                <string>241 15 30 37</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>96 17 30 37</string>
            </attr>
        </node>
        <node id="n14">
            <attr name="layout">
                <string>472 25 44 37</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>404 56 91 50</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>322 12 44 37</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>256 56 91 50</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>168 11 44 37</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>109 56 91 50</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>502 260 54 37</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>389 263 66 37</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>412 181 59 50</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>368 186 54 37</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>189 137 67 37</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>262 179 59 50</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>192 188 54 37</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>29 182 70 37</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>113 179 59 50</string>
            </attr>
        </node>
        <node id="n20">
            <attr name="layout">
                <string>132 263 30 37</string>
            </attr>
        </node>
        <edge to="n21" from="n21">
            <attr name="label">
                <string>real:1.0</string>
            </attr>
        </edge>
        <edge to="n19" from="n19">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge to="n18" from="n18">
            <attr name="label">
                <string>type:Payment</string>
            </attr>
        </edge>
        <edge to="n19" from="n18">
            <attr name="label">
                <string>amount</string>
            </attr>
        </edge>
        <edge to="n17" from="n17">
            <attr name="label">
                <string>int:3</string>
            </attr>
        </edge>
        <edge to="n16" from="n16">
            <attr name="label">
                <string>int:2</string>
            </attr>
        </edge>
        <edge to="n15" from="n15">
            <attr name="label">
                <string>int:1</string>
            </attr>
        </edge>
        <edge to="n14" from="n14">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge to="n13" from="n13">
            <attr name="label">
                <string>type:Customer</string>
            </attr>
        </edge>
        <edge to="n13" from="n13">
            <attr name="label">
                <string>flag:customer3</string>
            </attr>
        </edge>
        <edge to="n21" from="n13">
            <attr name="label">
                <string>discount</string>
            </attr>
        </edge>
        <edge to="n17" from="n13">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n14" from="n13">
            <attr name="label">
                <string>tab</string>
            </attr>
        </edge>
        <edge to="n12" from="n12">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>type:Customer</string>
            </attr>
        </edge>
        <edge to="n11" from="n11">
            <attr name="label">
                <string>flag:customer2</string>
            </attr>
        </edge>
        <edge to="n16" from="n11">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n12" from="n11">
            <attr name="label">
                <string>tab</string>
            </attr>
        </edge>
        <edge to="n21" from="n11">
            <attr name="label">
                <string>discount</string>
            </attr>
        </edge>
        <edge to="n10" from="n10">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>type:Customer</string>
            </attr>
        </edge>
        <edge to="n9" from="n9">
            <attr name="label">
                <string>flag:customer1</string>
            </attr>
        </edge>
        <edge to="n21" from="n9">
            <attr name="label">
                <string>discount</string>
            </attr>
        </edge>
        <edge to="n15" from="n9">
            <attr name="label">
                <string>id</string>
            </attr>
        </edge>
        <edge to="n10" from="n9">
            <attr name="label">
                <string>tab</string>
            </attr>
        </edge>
        <edge to="n8" from="n8">
            <attr name="label">
                <string>real:2.10</string>
            </attr>
        </edge>
        <edge to="n6" from="n6">
            <attr name="label">
                <string>string:&quot;wine&quot;</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>type:Drink</string>
            </attr>
        </edge>
        <edge to="n7" from="n7">
            <attr name="label">
                <string>flag:drink3</string>
            </attr>
        </edge>
        <edge to="n6" from="n7">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n20" from="n7">
            <attr name="label">
                <string>quantity</string>
            </attr>
        </edge>
        <edge to="n8" from="n7">
            <attr name="label">
                <string>price</string>
            </attr>
        </edge>
        <edge to="n5" from="n5">
            <attr name="label">
                <string>real:1.50</string>
            </attr>
        </edge>
        <edge to="n4" from="n4">
            <attr name="label">
                <string>string:&quot;beer&quot;</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>type:Drink</string>
            </attr>
        </edge>
        <edge to="n3" from="n3">
            <attr name="label">
                <string>flag:drink2</string>
            </attr>
        </edge>
        <edge to="n5" from="n3">
            <attr name="label">
                <string>price</string>
            </attr>
        </edge>
        <edge to="n4" from="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n20" from="n3">
            <attr name="label">
                <string>quantity</string>
            </attr>
        </edge>
        <edge to="n2" from="n2">
            <attr name="label">
                <string>real:0.80</string>
            </attr>
        </edge>
        <edge to="n1" from="n1">
            <attr name="label">
                <string>string:&quot;coke&quot;</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>type:Drink</string>
            </attr>
        </edge>
        <edge to="n0" from="n0">
            <attr name="label">
                <string>flag:drink1</string>
            </attr>
        </edge>
        <edge to="n2" from="n0">
            <attr name="label">
                <string>price</string>
            </attr>
        </edge>
        <edge to="n20" from="n0">
            <attr name="label">
                <string>quantity</string>
            </attr>
        </edge>
        <edge to="n1" from="n0">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge to="n20" from="n20">
            <attr name="label">
                <string>real:0.0</string>
            </attr>
        </edge>
    </graph>
</gxl>
