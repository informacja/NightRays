# Night Rays 
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

- Making circuits


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
