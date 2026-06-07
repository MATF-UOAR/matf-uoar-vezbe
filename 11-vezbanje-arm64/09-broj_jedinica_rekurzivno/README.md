# Рекурзивни број јединица

У асемблеру имплементирати рекурзивну функцију која враћа број постављених
битова у бинарном запису неозначеног броја.

Референтна C++ верзија:

```cpp
unsigned broj_jedinica_rekurzivno(unsigned n) {
    if (n == 0) {
        return 0;
    }

    return (n & 1) + broj_jedinica_rekurzivno(n >> 1);
}
```

## Датотеке

- `main.cpp` чита број и исписује број јединица
- `broj_jedinica_rekurzivno.s` садржи ARM64 имплементацију функције

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp broj_jedinica_rekurzivno.s -o broj_jedinica_rekurzivno
```

## Покретање

```sh
qemu-aarch64 ./broj_jedinica_rekurzivno
```

Пример:

```text
13
3
```

## На шта треба обратити пажњу

- најнижи бит се добија инструкцијом `and`
- следећи рекурзивни позив добија број померен удесно за једно место
- сачувани најнижи бит додаје се резултату тек после повратка из рекурзије

## Навигација

- Претходно: [Низ највећих цифара](../08-niz_najvecih_cifara/README.md)
- Следеће: [Рекурзивни максимум низа](../10-maksimum_rekurzivno/README.md)
- Горе: [Недеља 11](../README.md)
