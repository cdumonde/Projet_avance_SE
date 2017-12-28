set language "SC"
set moduleName "UartModOut"
set portName0 "e"
set isMeta0 0
set portInterface0 [list "sc_fifo_in"]
set portData0 [list "float"]
set isClock0 0
set isReset0 0
set portAttribute0 [list $isClock0 $isReset0]
set port0 [list $portName0 $isMeta0 $portInterface0 $portData0 $portAttribute0]
lappend portList $port0
set portName1 "s"
set isMeta1 0
set portInterface1 [list "sc_fifo_out"]
set portData1 [list "unsigned char"]
set isClock1 0
set isReset1 0
set portAttribute1 [list $isClock1 $isReset1]
set port1 [list $portName1 $isMeta1 $portInterface1 $portData1 $portAttribute1]
lappend portList $port1
set portName2 "clk"
set isMeta2 0
set portInterface2 [list "sc_in"]
set portData2 [list "bool"]
set isClock2 1
set isReset2 0
set portAttribute2 [list $isClock2 $isReset2]
set port2 [list $portName2 $isMeta2 $portInterface2 $portData2 $portAttribute2]
lappend portList $port2
set portName3 "rst"
set isMeta3 0
set portInterface3 [list "sc_in"]
set portData3 [list "bool"]
set isClock3 0
set isReset3 1
set portAttribute3 [list $isClock3 $isReset3]
set port3 [list $portName3 $isMeta3 $portInterface3 $portData3 $portAttribute3]
lappend portList $port3
set module [list $moduleName $portList]
