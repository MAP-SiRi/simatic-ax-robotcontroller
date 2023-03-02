USING System.Counters;

PROGRAM MyProgram
    
    VAR_EXTERNAL
        In : INT;
        Out : INT;
        toggle : BOOL;
        output_signal: BOOL;
        count_value : LINT;

    END_VAR

    VAR
        count : CounterUp := (presetValue := 5);
    END_VAR

    Out := In;
    toggle := NOT toggle;
    count(up := toggle);
    output_signal := count.presetReached;
    count_value := count.value;
    count.reset := count_value >= 10;
    // to be done:
    // Implement OPC Server
    //apax oscr interface install opcinterface.yml -t targetIP

    // OPC Server provides variables similar to MoPaHyb Interface
    // Implement State Manager similar to MoPaHyb Interface (see RPI implementation as reference) using simatic-ax\statemachine package from github
    // Implement Handshake with robot
    // testings
    ;
END_PROGRAM
