<project xmlns="com.autoesl.autopilot.project" name="sc_loop" top="Conversion" projectType="SystemC">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0" compiler="true"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/main.cpp" sc="1" tb="1" cflags=" "/>
        <file name="../src/analyseur/Terminal.h" sc="1" tb="1" cflags=" "/>
        <file name="../src/analyseur/Terminal.cpp" sc="1" tb="1" cflags=" "/>
        <file name="../src/gene/Gene.h" sc="1" tb="1" cflags=" "/>
        <file name="../src/gene/Gene.cpp" sc="1" tb="1" cflags=" "/>
        <file name="sc_loop/src/modules/Conversion.h" sc="1" tb="false" cflags=""/>
        <file name="sc_loop/src/modules/Conversion.cpp" sc="1" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="nexys4" status="active"/>
    </solutions>
</project>

