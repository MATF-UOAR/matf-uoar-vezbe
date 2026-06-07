# Низ највећих цифара

У асемблеру имплементирати функцију која за сваки елемент низа `a` уписује
у низ `rez` његову највећу цифру. У овом задатку се користи помоћна функција
`najveca_cifra` из првог задатка.

Референтна C++ верзија:

```cpp
unsigned najveca_cifra(unsigned n);

void niz_najvecih_cifara(unsigned *a, unsigned *rez, int n) {
    for (int i = 0; i < n; i++) {
        rez[i] = najveca_cifra(a[i]);
    }
}
```

## Датотеке

- `main.cpp` чита низ, позива функцију и исписује резултат
- `niz_najvecih_cifara.s` садржи главну ARM64 функцију
- `najveca_cifra.s` садржи помоћну функцију (из задатка 01)

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp niz_najvecih_cifara.s najveca_cifra.s -o niz_najvecih_cifara
```

## Покретање

```sh
qemu-aarch64 ./niz_najvecih_cifara
```

Пример:

```text
5
45316 297 8 1234 90
6 9 8 4 9
```

## На шта треба обратити пажњу

- `niz_najvecih_cifara` ради `bl najveca_cifra` унутар петље, па мора да
  сачува `lr`
- показивачи `a` и `rez`, дужина `n` и бројач `i` морају да преживе позив,
  па се чувају у callee-saved регистрима
- елемент `a[i]` се прослеђује у `w0`, а резултат позива се уписује у `rez[i]`

## Навигација

- Претходно: [Опсег низа](../07-opseg_niza/README.md)
- Следеће: [Рекурзивни број јединица](../09-broj_jedinica_rekurzivno/README.md)
- Горе: [Недеља 11](../README.md)
