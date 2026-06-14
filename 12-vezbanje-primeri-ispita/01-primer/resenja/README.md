# Решења — Пример испита 1

Овај директоријум садржи детаљна решења за све четири задатка из првог примера испита.

## Задатак 1: Више парних цифара (x86-64)

### C++ референтна имплементација

```cpp
int vise_parnih_cifara(long *a, int n) {
    int count = 0;
    for (int i = 0; i < n; i++) {
        long num = a[i];
        int even_count = 0, odd_count = 0;
        
        do {
            int digit = num % 10;
            if (digit % 2 == 0)
                even_count++;
            else
                odd_count++;
            num /= 10;
        } while (num != 0);
        
        if (even_count > odd_count)
            count++;
    }
    return count;
}
```

### Имплементациона објашљења

### C++ референтна имплементација

```cpp
int broj_unutrasnjih(long *a, int n) {
    long min, max;

    minmax(a, n, &min, &max);
    
    int count = 0;
    for (int i = 0; i < n; i++) {
        if (a[i] > min && a[i] < max)
            count++;
    }
    return count;
}
```


## Задатак 3: Очистити ниску (ARM64)

### C++ референтна имплементација

```cpp
int ocisti(char *s) {
    int count = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] >= '0' && s[i] <= '9') {
            s[i] = '#';
            count++;
        } else if (s[i] >= 'A' && s[i] <= 'Z') {
            s[i] = s[i] - 'A' + 'a'; 
            count++;
        }
    }
    return count;
}
```

## Задатак 4: Сабирање "шарених" бројева (ARM64)

### C++ референтна имплементација

```cpp
long saberi_sarene(long *a, int n) {
    long sum = 0;
    for (int i = 0; i < n; i++) {
        if (saren(a[i]) != 0)
            sum += a[i];
    }
    return sum;
}
```
