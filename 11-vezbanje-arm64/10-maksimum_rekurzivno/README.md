# Рекурзивни максимум низа

У асемблеру имплементирати рекурзивну функцију која враћа највећи елемент
низа.

Референтна C++ верзија:

```cpp
int maksimum_rekurzivno(int *a, int n) {
    if (n <= 0) {
        return 0;
    }
    if (n == 1) {
        return a[0];
    }

    int max_ostatka = maksimum_rekurzivno(a + 1, n - 1);
    return a[0] > max_ostatka ? a[0] : max_ostatka;
}
```

## Датотеке

- `main.cpp` чита низ и исписује рекурзивно пронађен максимум
- `maksimum_rekurzivno.s` садржи ARM64 имплементацију функције

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp maksimum_rekurzivno.s -o maksimum_rekurzivno
```

## Покретање

```sh
qemu-aarch64 ./maksimum_rekurzivno
```

Пример:

```text
6
4 9 2 15 5 1
15
```

## На шта треба обратити пажњу

- за `a + 1` код низа `int` адреса се помера за `4` бајта
- вредност `a[0]` мора да се сачува пре рекурзивног позива
- после повратка из рекурзије пореди се сачувани елемент са максимумом
  остатка низа

## Навигација

- Претходно: [Рекурзивни број јединица](../09-broj_jedinica_rekurzivno/README.md)
- Горе: [Недеља 11](../README.md)
