# Рекурзивно обртање ниске

Овај пример је природан наставак рекурзивног палиндрома: два показивача се
крећу ка средини ниске, али сада карактере не само да читамо већ их мењамо.

## Шта програм ради

Функција `obrni_nisku_rekurzivno` обрће ниску у месту.

Референтна C++ верзија је:

```cpp
void obrni_opseg(char *levo, char *desno) {
    if (levo >= desno) {
        return;
    }

    char pom = *levo;
    *levo = *desno;
    *desno = pom;
    obrni_opseg(levo + 1, desno - 1);
}

void obrni_nisku_rekurzivno(char *s) {
    if (*s == '\0') {
        return;
    }

    char *kraj = s;
    while (*kraj != '\0') {
        kraj++;
    }
    obrni_opseg(s, kraj - 1);
}
```

## Датотеке

- `main.cpp` чита ниску, позива функцију и исписује измењену ниску
- `obrni_nisku_rekurzivno.s` садржи јавну функцију и помоћну функцију `obrni_opseg`

## Шта треба посматрати у асемблеру

Јавна функција налази последњи карактер истим проласком као пример
палиндрома. У помоћној функцији се карактери учитавају и одмах замењују:

```asm
ldrb w2, [x0]
ldrb w3, [x1]
strb w3, [x0]
strb w2, [x1]
```

После замене оба показивача иду ка средини, а када важи `levo >= desno`
више нема пара карактера за замену.

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp obrni_nisku_rekurzivno.s -o obrni_nisku_rekurzivno
```

## Покретање

```sh
qemu-aarch64 ./obrni_nisku_rekurzivno
```

Пример интеракције:

```text
rekurzija
ajizruker
```

## На шта треба обратити пажњу

- ниска се мења у месту, па функција прима `char *`, а не `const char *`
- `strb` уписује један измењени карактер у меморију
- помоћна функција је рекурзивна, док јавна функција прво само налази крај ниске

## Навигација

- Претходно: [Рекурзивни НЗД](../01-nzd_rekurzivno/README.md)
- Следеће: [Рекурзивна бинарна претрага](../03-binarna_pretraga_rekurzivno/README.md)
- Горе: [Самостални мини-примери](../README.md)
