# Windows-More-CPUFreq
重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，以实现更多用途  
台式和笔记本通用  

## 用途一览
[Performance]: ../bin/set-cpufreq-performance.bat
[Powersave]: ../bin/set-cpufreq-powersave.bat
[Ondemand]: ../bin/set-cpufreq-ondemand.bat
[Conservative]: ../bin/set-cpufreq-conservative.bat
[Readyboost]: ../bin/set-cpufreq-readyboost.bat

| 调频目标       | 用途场景     | 性能影响     | AC有效 | DC有效 |
| :------------- | :----------- | :----------- | :----- | :----- |
| [Performance]  | 恒定最高频率 | 不影响       | 是     | 否     |
| [Powersave]    | 恒定最低频率 | 降低性能上限 | 是     | 是     |
| [Ondemand]     | 按需积极调频 | 不影响       | 是     | 是     |
| [Conservative] | 按需保守调频 | 降低响应效率 | 是     | 是     |
| [Readyboost]   | 按需基准增频 | 不影响       | 是     | 否     |

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 等价参考
| Linux                | Windows          |
| :------------------- | :--------------- |
| sampling_rate        | PerfCheck        |
| freq_step            | PerfIncPol       |
| up_threshold         | PerfIncThreshold |
| down_threshold       | PerfDecThreshold |
| sampling_down_factor | PerfDecPol       |

## 学习参考
- https://www.kernel.org/doc/Documentation/cpu-freq/governors.txt
