for %%i in (SetAcValueIndex) do (
    powercfg -%%i Scheme_Current Sub_Processor PerfAutonomous 0
    powercfg -%%i Scheme_Current Sub_Processor PerfCheck 10

    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin 99
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin1 99
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin2 99
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax1 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax2 100
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax 0
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax1 0
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax2 0

    powercfg -%%i Scheme_Current Sub_Processor PerfBoostMode 1
    powercfg -%%i Scheme_Current Sub_Processor PerfBoostPol 0
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold 95
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold1 95
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold 47
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold1 47
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol 1
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol1 1
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol 1
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol1 1
)

powercfg -SetActive Scheme_Current
