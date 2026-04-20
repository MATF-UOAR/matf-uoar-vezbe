# Рекурзивни степен

Ово је кратак рекурзивни пример са два аргумента.

Референтна C++ верзија:

```cpp
unsigned stepen_rekurzivno(unsigned a, unsigned n) {
    if (n == 0) {
        return 1;
    }

    return a * stepen_rekurzivno(a, n - 1);
}
```

## Превођење

```sh
g++ main.cpp stepen_rekurzivno.s
```

## На шта треба обратити пажњу

- база `a` мора да се сачува преко рекурзивног позива
- базни случај је `n == 0`, јер је `a^0 = 1`

## Навигација

- Претходно: [Испиши више пута](../01-ispisi_puta/README.md)
- Следеће: [Рекурзивна сума низа](../03-zbir_niza_rekurzivno/README.md)
