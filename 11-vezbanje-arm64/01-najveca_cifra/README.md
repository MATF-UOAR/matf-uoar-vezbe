# Највећа цифра

У асемблеру имплементирати функцију која враћа највећу цифру у запису
неозначеног броја.

Референтна C++ верзија:

```cpp
unsigned najveca_cifra(unsigned n) {
    unsigned max = 0;
    while (n != 0) {
        unsigned cifra = n % 10;
        if (cifra > max) {
            max = cifra;
        }
        n /= 10;
    }
    return max;
}
```

## Датотеке

- `main.cpp` чита број и исписује највећу цифру
- `najveca_cifra.s` садржи ARM64 имплементацију функције

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp najveca_cifra.s -o najveca_cifra
```

## Покретање

```sh
qemu-aarch64 ./najveca_cifra
```

Пример:

```text
45316
6
```

## На шта треба обратити пажњу

- последња цифра се добија преко `udiv` и `msub`
- пошто су цифре неозначене вредности, за ажурирање максимума користи се
  услов `hi`
- за `n = 0` функција враћа `0`

## Навигација

- Претходно: [Недеља 11](../README.md)
- Следеће: [Квадрирај негативне елементе](../02-kvadriraj_negativne/README.md)
- Горе: [Недеља 11](../README.md)
