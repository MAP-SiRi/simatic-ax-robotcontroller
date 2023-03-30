NAMESPACE Simatic.Ax.DemoLibrary
    FUNCTION_BLOCK EnableRobotFB
        VAR_INPUT
            RobotRequest : BOOL;
            RobotBusy : Bool;
        END_VAR
        VAR_OUTPUT
            RobotEnable : Bool;
        END_VAR
        VAR
           _inst : ExampleClass; 
        END_VAR

        RobotEnable := FALSE ;
        IF RobotRequest AND NOT RobotBusy THEN
            RobotEnable := TRUE;
        END_IF;
        //_inst.RunCyclic();

    END_FUNCTION_BLOCK
END_NAMESPACE
