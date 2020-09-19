# Night Rays 
> Dla uniknięcia rozbłysków przy przerwach w zasilaniu, domyślna logika układu sterującego
> [ Optoizolacja sygnałów sterujących 3.3V od zasilających 12V P-Mosfet
![](docs/circuitP.gif)
](https://www.falstad.com/circuit/circuitjs.html?ctz=CQAgjCAMB0l5BOJyWoVWCBMcAs+xcA2LBAZizNxDPQFYQ6iAoAZxFwSPCMg9wAcPPiJAAzAIYAbVgFNmANxAB2AdTC8VakFizVRuPmCxRTMOs0PLGx4TZO71zAE4giAoY7d6dPo-Bd7cGx+ITAQvlxlSECSdVt3MNs+MjJ4GI0TZTJuDT5VdU0TABNZSQBXKQAXAFopWWLwJogYY2YAd291ELjffWYAJVC7fDCsIT4TMHhwaDDoBhEF5gBzYfCTUb6oDpUc8ASPA5MYzsS7bNzNMF2iZSmeo42ds6Ove8m-S0gyN0gw7gCOBufQHAD6YDBkDBdAonChsHgCDAdDoWGyuDIyjoYLI0CwULBBLAkLIYIACs5AKCAxQAOqwAHYSenFACWAHtigAvVmyekAGQAogARenGekANV2nCufDotjy4G+v0MRm4aKERFBKIhhIEvDIOKICMgWBx0OJOLJADkJAAHVmATEAAMa8+lc+kAWwAwvS8WRJcwAEZBM3cQwmJA7EMa7Z0ZHgCg7AAeHB+IAQkTofHIHBUIAAqgBrQBCgBI6axWFVZM5ygArKnOgCezFTvHQAnQRHjGc2+eLZYrXIkrFZUgkDebrcYZoO1l4UzSeesA-L9Lt7MA2oDOBoM1nOrmNpu02kM90ScqSJn0qrOLmyV3Myu39nX1gALgAlLsPtsCttTi6OxehJBwf32UCtHiE4f20SD-0VQDeDCHofGeJC0M0EDlG4DD1BwkEjAIpCnkeTwvjOe5gKeTQkP+YDMJEYM-k8JgQCBBgEAmZgxEI8ACLuKYCOmdQFgwU1mHZHRfhaRhcFhCAcHEuBwgU2dJmkmhmCAA)
> dla 

[ Optoizolacja sygnałów sterujących 3.3V od zasilających 12V
![](docs/circuit.gif)
](https://www.falstad.com/circuit/circuitjs.html?ctz=CQAgjCAMB0l5BOJyWoVWCBMcAs+xcA2LBAZizNxF0hAFYayAoAZxoSPCLvwA5udISABmAQwA2rAKbMAbiADsfamB5KVILFmrDa4LFCMx6zWooZhDauvStad4ZgCcQRPgO3US1L0bDwLpbW2DS4AmChvIqQQT7g9u4R9nRkZPCxaoaKZFw2GqrqhgAm0uIArhIALgC0EtLF4E0QMFbMAO5ujpGG8X6xIm76YIpcRIrWoyCcWhiQWMwASmER6vwGAnTW8ODQEdCMQgfMAOYr4KHr-R1KuQm9HvdQN0mCt3nqYC8TFw8RUS9Hn4JltHLFaGQ3JBViA+HAhv4sAB9MBIyBI+gUXAINGweAIMD0ehYHK4MiKei4vhopHIqxIshIgAKzkAoIDFAA6rAAdmIucUAJYAe2KAC8BdIuQAZACiABEuVYuQA1G7Yj62ez5L4QmjwtTBWHCNQoml8HhkSlEXHzSnounWxkAOTEAAcBYBMQAAxhKuaKuQBbADCXLI0DIKuYACNDVh6FxaIYkM8Y8TPI56ATwBRngAPPWQhC8eh0cg0JQgACqAGtAEKAYk5rFYVWkznKACtWV6AJ7MfM8AR8CxEegCIvliw1+uN0ViVgCiRiTs9vsMOMJYfzbO8CtThtc11CwDagM4GtyBV7RV3uxyOdy-WJyuJeVyqs5RdIfXym2+hS-WAAXAAlDcIIONQyi+GCLzdOo8RgPYCydDkeT2JBTyxMhmgIdk2HqJhUL-L03QAp08Fwd0UwEfBUxEMMVGAkRbhAtBZE-Pkrz5NR0JvORQjRoRWjxkajAIJszBCrCTSatoWhHC0swCCwkndEY9C4JiEA4HMcCRJp65aVo1AsEAA)


## ToDo

### Liniowe sterowanie jasnością
```m
y = ax2 +bx +c
```

### Wdrożenie sterowania
- automatyczne/fabryczne (safe default)
- dyskretne (lookuptable na żądanie)
- ciągłe, pomiar i korekcja przy każdym rozświetleniu

## FAQ

- What is [gamma correction](docs/led-tricks-gamma-correction.pdf)?
- [ Make sure your optocoupler is properly biased](https://www.edn.com/power-tips-81-make-sure-your-optocoupler-is-properly-biased/)
- Making circuits
- https://www.edn.com/power-tips-81-make-sure-your-optocoupler-is-properly-biased/

Java version
http://www.falstad.com/mathphysics.html

JS version
http://lushprojects.com/circuitjs/circuitjs.html

### Historia:
- Poniedziałek: Test sprawności transoptora [PC817](docs/PC817.pdf) i mosfetów [IRF540N](docs/irf540n.pdf)
- Wtorek  Dobór rezystorów
- Środa Programowanie mikrokontrolera
- Czwartek Zastosowanie
- Piątek testy
