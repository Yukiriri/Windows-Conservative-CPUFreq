for %%i in (SetAcValueIndex SetDcValueIndex) do (
    powercfg -%%i Scheme_Current Sub_Processor PerfAutonomous 0
    powercfg -%%i Scheme_Current Sub_Processor PerfCheck 10

    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin1 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin2 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax1 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax2 100

    powercfg -%%i Scheme_Current Sub_Processor PerfBoostMode 0
    @REM powercfg -%%i Scheme_Current Sub_Processor PerfBoostPol
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold 99
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold1 99
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold 90
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold1 90
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol 1
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol1 1
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol 2
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol1 2
)

powercfg -SetActive Scheme_Current
