# Замени највећу цифру

У асемблеру имплементирати функцију која враћа број добијен заменом свих
појављивања највеће цифре броја `n` цифром `c`. У овом задатку се користи
помоћна функција `najveca_cifra`.

Референтна C++ верзија:

```cpp
unsigned najveca_cifra(unsigned n);

unsigned zameni_najvecu(unsigned n, unsigned c) {
    unsigned max = najveca_cifra(n);
    if (n == 0) {
        return c;
    }

    unsigned rezultat = 0;
    unsigned pozicija = 1;
    while (n != 0) {
        unsigned cifra = n % 10;
        if (cifra == max) {
            cifra = c;
        }
        rezultat += cifra * pozicija;
        pozicija *= 10;
        n /= 10;
    }
    return rezultat;
}
```

## Датотеке

- `main.cpp` чита број `n` и цифру `c`
- `zameni_najvecu.s` садржи главну ARM64 функцију
- `najveca_cifra.s` садржи помоћну функцију

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp zameni_najvecu.s najveca_cifra.s -o zameni_najvecu
```

## Покретање

```sh
qemu-aarch64 ./zameni_najvecu
```

Пример:

```text
297693 4
247643
```

## На шта треба обратити пажњу

- `zameni_najvecu` ради `bl najveca_cifra`, па мора да сачува `lr`
- оригинални број и цифра `c` морају да преживе позив помоћне функције
- број се гради од последње цифре ка првој помоћу променљиве `pozicija`

## Навигација

- Претходно: [Број речи](../05-broj_reci/README.md)
- Следеће: [Опсег низа](../07-opseg_niza/README.md)
- Горе: [Недеља 11](../README.md)
