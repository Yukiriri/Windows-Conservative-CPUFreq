# Windows-More-CPUFreq
重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，以实现更多用途  
台式和笔记本通用  

## 用途一览
[Performance]: ../bin/set-cpufreq-performance.bat
[Powersave]: ../bin/set-cpufreq-powersave.bat
[Ondemand]: ../bin/set-cpufreq-ondemand.bat
[Conservative]: ../bin/set-cpufreq-conservative.bat
[Readyboost]: ../bin/set-cpufreq-readyboost.bat
[Readyboost-Half]: ../bin/set-cpufreq-readyboost-half.bat

| 调频器            | 功能说明           | 性能影响         | 低载功耗 | AC有效 | DC有效 |
| :---------------- | :----------------- | :--------------- | :------- | :----- | :----- |
| [Performance]     | 恒定最高频率       | 不影响           | 明显提高 | 是     | 否     |
| [Powersave]       | 恒定最低频率       | 降低性能上限     | 最低     | 是     | 是     |
| [Ondemand]        | 按需积极调频       | 不影响           | 忽高忽低 | 是     | 是     |
| [Conservative]    | 按需保守调频       | 降低响应效率     | 很低     | 是     | 是     |
| [Readyboost]      | 恒定基频按需增频   | 不影响           | 有些提高 | 是     | 否     |
| [Readyboost-Half] | 恒定半基频按需增频 | 略微降低响应效率 | 略微提高 | 是     | 是     |

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
