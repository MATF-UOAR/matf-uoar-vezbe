# Рекурзивни палиндром

Овај пример комбинује пролаз кроз ниску са рекурзивном помоћном функцијом
која пореди карактере са два краја опсега.

## Шта програм ради

Функција `palindrom_rekurzivno` враћа ненула вредност ако је ниска палиндром.
Празна ниска и ниска дужине један су палиндроми.

Референтна C++ верзија је:

```cpp
int palindrom_opseg(const char *levo, const char *desno) {
    if (levo >= desno) {
        return 1;
    }
    if (*levo != *desno) {
        return 0;
    }
    return palindrom_opseg(levo + 1, desno - 1);
}

int palindrom_rekurzivno(const char *s) {
    if (*s == '\0') {
        return 1;
    }

    const char *kraj = s;
    while (*kraj != '\0') {
        kraj++;
    }
    return palindrom_opseg(s, kraj - 1);
}
```

## Датотеке

- `main.cpp` чита ниску и исписује да ли је палиндром
- `palindrom_rekurzivno.s` садржи јавну функцију и помоћну функцију `palindrom_opseg`

## Шта треба посматрати у асемблеру

Јавна функција прво издваја празну ниску, а затим петљом налази завршни
карактер `'\0'`. Тек тада прави адресу последњег стварног карактера:

```asm
sub x1, x1, #1
bl palindrom_opseg
```

У помоћној функцији су `x0` и `x1` леви и десни показивач. Пошто су то
адресе унутар исте ниске, услов да су се показивачи срели или укрстили
проверава се неозначеним поређењем:

```asm
cmp x0, x1
b.hs jeste
```

Ако су крајњи карактери једнаки, показивачи се померају ка средини и
помоћна функција позива саму себе:

```asm
add x0, x0, #1
sub x1, x1, #1
bl palindrom_opseg
```

## Превођење

```sh
aarch64-linux-gnu-g++ main.cpp palindrom_rekurzivno.s -o palindrom_rekurzivno
```

## Покретање

```sh
qemu-aarch64 ./palindrom_rekurzivno
```

Пример интеракције:

```text
anavolimilovana
palindrom
```

## На шта треба обратити пажњу

- `palindrom_opseg` није `.global`, јер је помоћна функција у истом фајлу
- карактери се читају инструкцијом `ldrb`
- празна ниска се решава пре израчунавања адресе `kraj - 1`
- обе функције чувају `lr`, јер раде `bl`

## Навигација

- Претходно: [Брзи рекурзивни степен](../04-stepen_rekurzivno/README.md)
- Следеће: [Нађи први преко predicate функције](../06-nadji_prvi/README.md)
- Горе: [Недеља 10](../README.md)
