# Опсег низа

У асемблеру имплементирати функцију која враћа разлику између највећег и
најмањег елемента низа. Главна функција `opseg` позива помоћне функције
`minimum` и `maksimum`.

Референтна C++ верзија:

```cpp
int minimum(int *a, int n);
int maksimum(int *a, int n);

int opseg(int *a, int n) {
    if (n <= 0) {
        return 0;
    }

    int min = minimum(a, n);
    int max = maksimum(a, n);
    return max - min;
}
```

## Датотеке

- `main.cpp` чита низ и исписује његов опсег
- `minimum.s` налази најмањи елемент
- `maksimum.s` налази највећи елемент
- `opseg.s` позива обе помоћне функције

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp opseg.s minimum.s maksimum.s -o opseg
```

## Покретање

```sh
qemu-aarch64 ./opseg
```

Пример:

```text
5
-2 7 3 9 -5
14
```

## На шта треба обратити пажњу

- `opseg` мора да сачува адресу низа и дужину пре првог позива
- резултат функције `minimum` мора да преживи позив функције `maksimum`
- обе помоћне функције су leaf функције, али `opseg` није

## Навигација

- Претходно: [Замени највећу цифру](../06-zameni_najvecu/README.md)
- Следеће: [Низ највећих цифара](../08-niz_najvecih_cifara/README.md)
- Горе: [Недеља 11](../README.md)
