# version-bumper
Simple Version Incrementor

##Quick Start
```./increment.sh [version number] [numeral to increment]```

```use -t to trim```

##Examples
```./increment.sh 2.1.2 patch```

Output: ```2.1.3```


```./increment.sh 2.1.2 minor```

Output: ```2.2.0```



```./increment.sh 2.1.2 major```

Output: ```3.0.0```


```./increment.sh 2.1.2 minor -t```

Output: ```2.2```
