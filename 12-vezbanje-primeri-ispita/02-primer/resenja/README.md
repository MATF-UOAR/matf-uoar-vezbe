# Решења — Пример испита 2

Овај директоријум садржи детаљна решења за све четири задатка из другог примера испита.

## Задатак 1: Тежина броја (x86-64)


### C++ референтна имплементација

```cpp
unsigned long tezina(unsigned long x) {
    unsigned long sum = 0;
    while (x > 0) {
        unsigned long digit = x % 10;
        sum += digit * digit;
        x /= 10;
    }
    return sum;
}
```

## Задатак 2: Најтежи елемент (x86-64)


### C++ референтна имплементација

```cpp
unsigned long najtezi(unsigned long *a, int n) {
    unsigned long max_weight = 0;
    unsigned long result = 0;
    
    for (int i = 0; i < n; i++) {
        unsigned long w = tezina(a[i]);
        if (w > max_weight) {
            max_weight = w;
            result = a[i];
        }
    }
    return result;
}
```

## Задатак 3: Број елемената у опсегу (ARM64)

### C++ референтна имплементација

```cpp
int broj_u_opsegu(unsigned long *a, int n, unsigned long l, unsigned long d) {
    int count = 0;
    for (int i = 0; i < n; i++) {
        if (a[i] >= l && a[i] <= d)
            count++;
    }
    return count;
}
```

## Задатак 4: Типични елементи (ARM64)

### C++ референтна имплементација

```cpp
int broj_tipicnih(unsigned long *a, int n) {
    unsigned long mean, median;
    statistika(a, n, &mean, &median);
    
    unsigned long l = (mean < median) ? mean : median;
    unsigned long d = (mean > median) ? mean : median;
    
    return broj_u_opsegu(a, n, l, d);
}
```
