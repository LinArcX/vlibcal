##  vlibcal
Vala bindings for [libcalendars](https://github.com/soroush/libcalendars)

## Compile library
`valac --library=VLibCal -H SolarHijri.h SolarHijri.vala Math.vala -X -fPIC -X -shared -o SolarHijri.so --pkg posix`

It'll generate these files:
```
src/SolarHijri.h
src/SolarHijri.so
src/VLibCal.vapi
```

## Test it
Just compile `Test.vala` against shared library:

`valac VLibCal.vapi Test.vala -X SolarHijri.so -X -I. -o vlibtest`

## Sample output
This is the typical output when runngin `vlibtest`:

```
Julian Day for 2020/04/20 AP is: 2458960
Julian Day for 1399/02/01 AP is: 2458960
Julian Day for 1441/08/26 AP is: 2458960

************

2020/04/20 is: 1399/2/1
2020/04/20 is: 1441/8/26
1399/02/01 is: 2020/4/20
```

## Donate
- Bitcoin: `13T28Yd37qPtuxwTFPXeG9dWPahwDzWHjy`
<img src="donate/Bitcoin.png" width="200" align="center" />

- Monero: `48VdRG9BNePEcrUr6Vx6sJeVz6EefGq5e2F5S9YV2eJtd5uAwjJ7Afn6YeVTWsw6XGS6mXueLywEea3fBPztUbre2Lhia7e`
<img src="donate/Monero.png" align="center" />

## License
![License](https://img.shields.io/github/license/LinArcX/vlibcal.svg)
