# Function implementation

A function definition is compiled into the macjine code, which represented as assembly code shows that a function definition is outside the top-to-bottom flow of execution. It is "static", like static strings are in a program, having their own address in a program's text segment (the unix utility `strings` extracts the static strings given an executable).

If a function is defined but never called, it may get compiled (although some compilers will skip such useless definitions) but the flow of execution won't ever jump to it to execute it.

However, if the function is called,

The normal flow of execution executes statements from the top down, and when a call to a function is encountered, the control is transferred to the code block of that function.
