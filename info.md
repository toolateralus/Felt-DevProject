### some info about the langauge

- it only compiles to nasm x86, which is linux-only afaik.
- semicolons, whitespace, and new lines are all fully optional, much like javascript.
- on a function declaration, if you are parameterless, you can opt-out of using () after the id.
``` 
def main {
    ...
}
```
---
#### special function keywords

- `cout` is a way to print a string (only if it's been predefined in a macro like `#define mystring "my string content"`)

#### '#' preprocessors/ macros

- `#run` has a similar functionality to `exit()` in the C stl.
```
#run main()
def main {
    return 0
}
```
``` the program exited with code 0 ```

```
#run 100;
```
```the program has exited with code 100```

`note : the exit code is a signed byte, from 0-255`

- `#define` defines a constant piece of data. right now it can only be a string or an integer.
- `#load` loads a `.fh` felt header file, and all of its functions into this files context. much like including a C header,
except we have no overloading of anything.

#### data types
- right now we only support integers vars/ literals, and constant strings.

#### variable declaration, assignment

- you must use `ID : value` to declare a variable initially
- any re-assignment may take place with a normal `ID = value`


#### function definitions

- define a function by using the `def` keyword, followed by an identifier, `(params?)` and a body.
- a function may have 0 or many parameters.

```
def main() {
    return 0
}
#run main()
```

outputs
``` the program exited with code 0 ```