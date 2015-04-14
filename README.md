Lua testing
===========

Experimenting with making testing in Lua a bit nicer.

At the moment two assert functions are supported:

`assert_equal` and `assert_error`

To test all functions in a file use `run_tests` and pass in the module with the tests.

Output from running tests:

all passing
```
........
-----------------------
Ran 8 tests in 0.000s
```

failure
```
test_join_with_charExpected 2,2,3 but was 1,2,3
......f.
-----------------------
Ran 8 tests in 1.000s
```


