# x86-64: сабирање `float` и `double` бројева

Код x86-64 архитектуре аргументи типа `float` и `double` стижу у `xmm`
регистре.

Референтне C++ функције:

```cpp
float saberi_float(float a, float b) {
    return a + b;
}

double saberi_double(double a, double b) {
    return a + b;
}
```

## Датотеке

- `main.cpp` чита два `float` и два `double` броја и исписује обе суме
- `saberi_float_double.s` садржи x86-64 имплементације функција

## Шта треба посматрати у асемблеру

Регистар `xmm0` може да садржи више различитих облика података. У овом примеру
користимо само његов доњи део као једну скаларну вредност.

```text
float:   xmm0 + xmm1 -> xmm0     addss
double:  xmm0 + xmm1 -> xmm0     addsd
```

Инструкција `addss` сабира scalar single-precision вредности, односно `float`.
Инструкција `addsd` сабира scalar double-precision вредности, односно `double`.

Ако полазимо од целог броја, пре реалне операције потребна је конверзија:

| Извор | У `float` | У `double` |
| --- | --- | --- |
| `int` | `cvtsi2ss xmm0, eax` | `cvtsi2sd xmm0, eax` |
| `unsigned int` | `mov eax, edi`<br>`cvtsi2ss xmm0, rax` | `mov eax, edi`<br>`cvtsi2sd xmm0, rax` |

Инструкције `cvtsi2ss` и `cvtsi2sd` раде означену конверзију. Зато код
`unsigned int` вредности прво нулама проширимо број у 64-битни регистар, па га
онда конвертујемо као позитиван 64-битни број.

За `long` се користи 64-битни регистар или меморијски операнд:
`cvtsi2ss xmm0, rax` или `cvtsi2sd xmm0, rax`. За `unsigned long` нема једне
једноставне SSE инструкције која покрива све 64-битне вредности; ако је вредност
у опсегу означеног `long`, може да се користи исти облик као за `long`, а за
пун опсег је потребна дужа секвенца. За `short` и `char` вредности прво урадимо
`movsx` за означене типове или `movzx` за неозначене, па онда користимо исти
облик као за `int`.

## Превођење

```sh
g++ main.cpp saberi_float_double.s -o saberi_float_double
```

## Покретање

```sh
./saberi_float_double
```

Пример:

```text
1.5 2.25
1.5 2.25
3.750000
3.750000
```

## На шта треба обратити пажњу

- и `float` и `double` аргументи стижу у `xmm0` и `xmm1`
- резултат се враћа у `xmm0`
- избор инструкције одређује да ли гледамо 32-битну `float` или 64-битну `double` вредност

## Навигација

- Претходно: [ARM64: SIMD сума низа](../03-arm64-simd_suma/README.md)
- Следеће: [x86-64: аритметичка средина `int` низа](../05-x86-64-aritmeticka_sredina/README.md)
- Горе: [Недеља 13](../README.md)
