This document serves as a walkthrough for all the phases for my unique bomb that was generated. Solutions will differ from other sources online.

### phase 1:

```
Dump of assembler code for function phase_1:
=> 0x00005555555555c7 <+0>:     endbr64 
   0x00005555555555cb <+4>:     sub    $0x8,%rsp
   0x00005555555555cf <+8>:     lea    0x1b7a(%rip),%rsi        # 0x555555557150 = the message needed to pass this phase
   0x00005555555555d6 <+15>:    call   0x555555555acc <strings_not_equal>
   0x00005555555555db <+20>:    test   %eax,%eax
   0x00005555555555dd <+22>:    jne    0x5555555555e4 <phase_1+29>
   0x00005555555555df <+24>:    add    $0x8,%rsp
   0x00005555555555e3 <+28>:    ret    
   0x00005555555555e4 <+29>:    call   0x555555555ce5 <explode_bomb>
   0x00005555555555e9 <+34>:    jmp    0x5555555555df <phase_1+24>
End of assembler dump.
```

This phase is kind of self explanatory. There is a string loaded in memory that is being compared to the input string that was typed in. If the strings are not equal, then it will call the `explode_bomb` function.

By checking the commented address on line `0x00005555555555cf <+8>` by using `(gdb) x/s 0x555555557150`, we get the string:
"Premature abstraction is an equally grevious sin as premature optimization."

This means that if we put in the string "Premature abstraction is an equally grevious sin as premature optimization.", the strings should be equal, thus passing the bomb.


**Answer: `Premature abstraction is an equally grevious sin as premature optimization.`**

---

### phase 2:

```
Dump of assembler code for function phase_2:
=> 0x00005555555555eb <+0>:     endbr64 
   0x00005555555555ef <+4>:     push   %rbp
   0x00005555555555f0 <+5>:     push   %rbx
   0x00005555555555f1 <+6>:     sub    $0x28,%rsp
   0x00005555555555f5 <+10>:    mov    %rsp,%rsi
   0x00005555555555f8 <+13>:    call   0x555555555d32 <read_six_numbers>
   0x00005555555555fd <+18>:    cmpl   $0x0,(%rsp)
   0x0000555555555601 <+22>:    jne    0x55555555560a <phase_2+31>
   0x0000555555555603 <+24>:    cmpl   $0x1,0x4(%rsp)
   0x0000555555555608 <+29>:    je     0x55555555560f <phase_2+36>
   0x000055555555560a <+31>:    call   0x555555555ce5 <explode_bomb>
   0x000055555555560f <+36>:    mov    %rsp,%rbx                    # functions like an interator (like a pointer that keep track of the address) (start: %rsp)
   0x0000555555555612 <+39>:    lea    0x10(%rsp),%rbp              # pointer of where to stop (end: %rsp + 10)
   0x0000555555555617 <+44>:    jmp    0x555555555622 <phase_2+55>  # jump without condition
   0x0000555555555619 <+46>:    add    $0x4,%rbx
   0x000055555555561d <+50>:    cmp    %rbp,%rbx
   0x0000555555555620 <+53>:    je     0x555555555633 <phase_2+72>
   0x0000555555555622 <+55>:    mov    0x4(%rbx),%eax               # moves current value of %rbx to %eax. (current value: 1)
   0x0000555555555625 <+58>:    add    (%rbx),%eax                  # adds to %rbx (1) to %eax (0)
   0x0000555555555627 <+60>:    cmp    %eax,0x8(%rbx)               # compare the third value to %eax (this means that the third value should be 1!)
   0x000055555555562a <+63>:    je     0x555555555619 <phase_2+46>
   0x000055555555562c <+65>:    call   0x555555555ce5 <explode_bomb>
   0x0000555555555631 <+70>:    jmp    0x555555555619 <phase_2+46>
   0x0000555555555633 <+72>:    add    $0x28,%rsp
   0x0000555555555637 <+76>:    pop    %rbx                         # since this is callee saved, the original value of %rbx is then restored, same with %rpb
   0x0000555555555638 <+77>:    pop    %rbp
   0x0000555555555639 <+78>:    ret    
End of assembler dump.
```

This phase requires us to input a string of "%d %d %d %d %d %d", 6 decimal numbers which can be found in the `read_six_numbers` function. We can see from the code that the first number in our string of numbers has to be 0 from the line `0x00005555555555fd <+18>:  cmpl  $0x0,(%rsp)` or else it will call the function `explode_bomb`.

The function `0x000055555555560f <+36>:  mov  %rsp,%rbx` is essentially an "iterator" that functions as a pointer to keep track of the address we are working with.

So, we should keep track of `%rbx` (the current value being worked on) and `%rbp` the value to stop at.

The line `0x0000555555555619 <+46>:  add  $0x4,%rbx` then shifts the sequence of six numbers to the second input, and we can see then from the second line `0x0000555555555603 <+24>: cmpl  $0x1,0x4(%rsp)` that the second number in the string is being compared to the value 1 or else it will call `explode_bomb`.

Moving down the code, it iterates by adding the previous sum e.g. 0 + 1 = 1 and adds them together to get the next number. It then takes that sum and does that until it reaches 6 numbers.

**Answer: `0 1 1 2 3 5`**

---

### phase 3:

```
Dump of assembler code for function phase_3:
=> 0x000055555555563a <+0>:     endbr64 
   0x000055555555563e <+4>:     sub    $0x18,%rsp
   0x0000555555555642 <+8>:     lea    0x7(%rsp),%rcx
   0x0000555555555647 <+13>:    lea    0xc(%rsp),%rdx
   0x000055555555564c <+18>:    lea    0x8(%rsp),%r8
   0x0000555555555651 <+23>:    lea    0x1b6e(%rip),%rsi        # 0x5555555571c6 "%d %c %d"
   0x0000555555555658 <+30>:    mov    $0x0,%eax
   0x000055555555565d <+35>:    call   0x5555555552e0 <__isoc99_sscanf@plt>
   0x0000555555555662 <+40>:    cmp    $0x2,%eax
   0x0000555555555665 <+43>:    jle    0x555555555687 <phase_3+77>
   0x0000555555555667 <+45>:    cmpl   $0x7,0xc(%rsp)           # compares if the number is greater than 7. If it is it will jump to the bomb!
   0x000055555555566c <+50>:    ja     0x55555555577f <phase_3+325>
   0x0000555555555672 <+56>:    mov    0xc(%rsp),%eax
   0x0000555555555676 <+60>:    lea    0x1b63(%rip),%rdx        # 0x5555555571e0
   0x000055555555567d <+67>:    movslq (%rdx,%rax,4),%rax
   0x0000555555555681 <+71>:    add    %rdx,%rax
   0x0000555555555684 <+74>:    notrack jmp *%rax               # this is the switch statement start!
   0x0000555555555687 <+77>:    call   0x555555555ce5 <explode_bomb>
   0x000055555555568c <+82>:    jmp    0x555555555667 <phase_3+45>
   0x000055555555568e <+84>:    mov    $0x66,%eax
   0x0000555555555693 <+89>:    cmpl   $0x3af,0x8(%rsp)
   0x000055555555569b <+97>:    je     0x555555555789 <phase_3+335>
   0x00005555555556a1 <+103>:   call   0x555555555ce5 <explode_bomb>
   0x00005555555556a6 <+108>:   mov    $0x66,%eax
   0x00005555555556ab <+113>:   jmp    0x555555555789 <phase_3+335>
   0x00005555555556b0 <+118>:   mov    $0x6d,%eax
   0x00005555555556b5 <+123>:   cmpl   $0x133,0x8(%rsp)
   0x00005555555556bd <+131>:   je     0x555555555789 <phase_3+335>
   0x00005555555556c3 <+137>:   call   0x555555555ce5 <explode_bomb>
   0x00005555555556c8 <+142>:   mov    $0x6d,%eax
   0x00005555555556cd <+147>:   jmp    0x555555555789 <phase_3+335>
   0x00005555555556d2 <+152>:   mov    $0x6a,%eax
   0x00005555555556d7 <+157>:   cmpl   $0x229,0x8(%rsp)
   0x00005555555556df <+165>:   je     0x555555555789 <phase_3+335>
   0x00005555555556e5 <+171>:   call   0x555555555ce5 <explode_bomb>
   0x00005555555556ea <+176>:   mov    $0x6a,%eax
   0x00005555555556ef <+181>:   jmp    0x555555555789 <phase_3+335>
   0x00005555555556f4 <+186>:   mov    $0x74,%eax
   0x00005555555556f9 <+191>:   cmpl   $0x347,0x8(%rsp)
   0x0000555555555701 <+199>:   je     0x555555555789 <phase_3+335>
   0x0000555555555707 <+205>:   call   0x555555555ce5 <explode_bomb>
   0x000055555555570c <+210>:   mov    $0x74,%eax
   0x0000555555555711 <+215>:   jmp    0x555555555789 <phase_3+335>
   0x0000555555555713 <+217>:   mov    $0x66,%eax
   0x0000555555555718 <+222>:   cmpl   $0xba,0x8(%rsp)
   0x0000555555555720 <+230>:   je     0x555555555789 <phase_3+335>
   0x0000555555555722 <+232>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555727 <+237>:   mov    $0x66,%eax
   0x000055555555572c <+242>:   jmp    0x555555555789 <phase_3+335>
   0x000055555555572e <+244>:   mov    $0x65,%eax
   0x0000555555555733 <+249>:   cmpl   $0x16a,0x8(%rsp)
   0x000055555555573b <+257>:   je     0x555555555789 <phase_3+335>
   0x000055555555573d <+259>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555742 <+264>:   mov    $0x65,%eax
   0x0000555555555747 <+269>:   jmp    0x555555555789 <phase_3+335>
   0x0000555555555749 <+271>:   mov    $0x61,%eax
   0x000055555555574e <+276>:   cmpl   $0x304,0x8(%rsp)
   0x0000555555555756 <+284>:   je     0x555555555789 <phase_3+335>
   0x0000555555555758 <+286>:   call   0x555555555ce5 <explode_bomb>
   0x000055555555575d <+291>:   mov    $0x61,%eax
   0x0000555555555762 <+296>:   jmp    0x555555555789 <phase_3+335>
   0x0000555555555764 <+298>:   mov    $0x71,%eax
   0x0000555555555769 <+303>:   cmpl   $0x1da,0x8(%rsp)
   0x0000555555555771 <+311>:   je     0x555555555789 <phase_3+335>
   0x0000555555555773 <+313>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555778 <+318>:   mov    $0x71,%eax
   0x000055555555577d <+323>:   jmp    0x555555555789 <phase_3+335>
   0x000055555555577f <+325>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555784 <+330>:   mov    $0x62,%eax
   0x0000555555555789 <+335>:   cmp    %al,0x7(%rsp)                # what's so special about this???
   0x000055555555578d <+339>:   jne    0x555555555794 <phase_3+346>
   0x000055555555578f <+341>:   add    $0x18,%rsp
   0x0000555555555793 <+345>:   ret    
   0x0000555555555794 <+346>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555799 <+351>:   jmp    0x55555555578f <phase_3+341>
End of assembler dump.
```

This is very long. But that doesn't matter, it will make sense eventually. The first thing we want to take a gander at is the first commented address. If you use `x/s [address]`, you will get this output:

```
(gdb) x/s 0x5555555571c6
0x5555555571c6: "%d %c %d"
```

This essentially tells us that our input should be a decimal integer, followed by a character followed by another decimal.

The instruction `0x0000555555555662 <+40>:  cmp  $0x2,%eax` is making sure that there is more than 2 objects returned by the scanf function. If there is less than two objects returned, it will jump to `explode_bomb`. It will also jump to `explode_bomb` if the first number is greater than 7 according to these two instructions:

```
0x0000555555555667 <+45>:    cmpl   $0x7,0xc(%rsp)
0x000055555555566c <+50>:    ja     0x55555555577f <phase_3+325>
```

To avoid this, we know that the first `%d` number needs to be from 0 to 7 inclusive. (negative numbers will just be very big positive numbers because it's doing unsigned comparison).

After getting past that first comparison, we have this little interesting pair of instructions:
```
0x0000555555555676 <+60>:    lea    0x1b63(%rip),%rdx        # 0x5555555571e0
0x000055555555567d <+67>:    movslq (%rdx,%rax,4),%rax
```


Peeking at this we get the following code:
```
(gdb) x/7xw 0x5555555571e0
0x5555555571e0: 0xffffe4ae      0xffffe4d0      0xffffe4f2      0xffffe514
0x5555555571f0: 0xffffe533      0xffffe54e      0xffffe569
```

Basically, we are looking at the memory of the address in the `lea` instruction + the first number put in + 4.

To calculate this value, you add the value of the address `0x5555555571e0` + (the value you put in (i'm going to use `1`) * 4)

So, this would yield the memory address: `0x5555555571e4`.

When we look at this address we get:
```
(gdb) x/1xw 0x5555555571e4
0x5555555571e4: 0xffffe4d0
```

We can take this value (it's saved in `%rax`) and add it to `0x5555555571e0` which is how we end up to the address we jump to. (`0x5555555556b0`)

If you look at where that address is pointing to, it is comparing a hexadecimal number with the value stored in `%eax`, which is our char character. Pulling up a handy ASCII table will give you the character needed to get past that comparison.

The next instruction is comparing the last decimal number to a hex number, which when converted will give you the decimal number needed to pass this phase.


In conclusion, the first decimal number is the switch case which determines what the chararacter and decimal is needed to pass this phase.


For reference, the high level code would look something like this:

```
#include <stdio.h>

int main()
{
  unsigned int d1, d2;
  unsigned char c;
  printf("Please enter some things: ");
  scanf("%d %c %d", &d1, &c, &d2);

  printf("your inputs are: %d %c %d\n", d1, c, d2);

  if (d1 > 7)
  {
    printf("Bad move.\n");

    return 0;
  }
  else
  {
    switch (d1)
    {
    case 0:
      // load char value
      // load decimal value
      break;

    case 1:
      // load char value
      // load decimal value
      break;

    case 2:
      // load char value
      // load decimal value
      break;

    case 3:
      // load char value
      // load decimal value
      break;

    case 4:
      // load char value
      // load decimal value
      break;

    case 5:
      // load char value
      // load decimal value
      break;

    case 6:
      // load char value
      // load decimal value
      break;

    case 7:
      // load char value
      // load decimal value
      break;
    }
  }
}
```

**Answer: Varies depending on the case (e.g. `1 m 307` or `2 j 553`)**

---

### phase 4

```
Dump of assembler code for function phase_4:
=> 0x00005555555557d6 <+0>:     endbr64 
   0x00005555555557da <+4>:     sub    $0x18,%rsp
   0x00005555555557de <+8>:     lea    0xc(%rsp),%rcx
   0x00005555555557e3 <+13>:    lea    0x8(%rsp),%rdx
   0x00005555555557e8 <+18>:    lea    0x1bf7(%rip),%rsi        # 0x5555555573e6
   0x00005555555557ef <+25>:    mov    $0x0,%eax
   0x00005555555557f4 <+30>:    call   0x5555555552e0 <__isoc99_sscanf@plt>
   0x00005555555557f9 <+35>:    cmp    $0x2,%eax
   0x00005555555557fc <+38>:    jne    0x55555555580a <phase_4+52>
   0x00005555555557fe <+40>:    mov    0xc(%rsp),%eax
   0x0000555555555802 <+44>:    sub    $0x2,%eax
   0x0000555555555805 <+47>:    cmp    $0x2,%eax
   0x0000555555555808 <+50>:    jbe    0x55555555580f <phase_4+57>
   0x000055555555580a <+52>:    call   0x555555555ce5 <explode_bomb>
   0x000055555555580f <+57>:    mov    0xc(%rsp),%esi
   0x0000555555555813 <+61>:    mov    $0x5,%edi
   0x0000555555555818 <+66>:    call   0x55555555579b <func4>
   0x000055555555581d <+71>:    cmp    %eax,0x8(%rsp)
   0x0000555555555821 <+75>:    jne    0x555555555828 <phase_4+82>
   0x0000555555555823 <+77>:    add    $0x18,%rsp
   0x0000555555555827 <+81>:    ret    
   0x0000555555555828 <+82>:    call   0x555555555ce5 <explode_bomb>
   0x000055555555582d <+87>:    jmp    0x555555555823 <phase_4+77>
End of assembler dump.
```


In this phase, we are comparing two decimal numbers in a `%d %d` format. Beefore the call to `func4`, the scanner takes the input and checks to see if the second input is less than or equal to the value minus 2. This means that the second input must be less than or equal to 4, starting from 2, because subtracting either 0 or 1 results in a negative number which means that it will be greater than 2 when comparing unsigned. Once it gets past that comparison, we jump into `func4`.

```
Dump of assembler code for function func4:
=> 0x000055555555579b <+0>:     endbr64 
   0x000055555555579f <+4>:     mov    $0x0,%eax
   0x00005555555557a4 <+9>:     test   %edi,%edi
   0x00005555555557a6 <+11>:    jle    0x5555555557d5 <func4+58>
   0x00005555555557a8 <+13>:    push   %r12
   0x00005555555557aa <+15>:    push   %rbp
   0x00005555555557ab <+16>:    push   %rbx
   0x00005555555557ac <+17>:    mov    %edi,%ebx
   0x00005555555557ae <+19>:    mov    %esi,%ebp
   0x00005555555557b0 <+21>:    mov    %esi,%eax
   0x00005555555557b2 <+23>:    cmp    $0x1,%edi
   0x00005555555557b5 <+26>:    je     0x5555555557d0 <func4+53>
   0x00005555555557b7 <+28>:    lea    -0x1(%rdi),%edi           # %edi <- %rdi - 1, basically like x--.
   0x00005555555557ba <+31>:    call   0x55555555579b <func4>
   0x00005555555557bf <+36>:    lea    (%rax,%rbp,1),%r12d       # %r12d  <- %esi * 1 + outcome
   0x00005555555557c3 <+40>:    lea    -0x2(%rbx),%edi           # %edi <- %rbx - 2
   0x00005555555557c6 <+43>:    mov    %ebp,%esi                 %esi <- %ebp
   0x00005555555557c8 <+45>:    call   0x55555555579b <func4>
   0x00005555555557cd <+50>:    add    %r12d,%eax
   0x00005555555557d0 <+53>:    pop    %rbx
   0x00005555555557d1 <+54>:    pop    %rbp
   0x00005555555557d2 <+55>:    pop    %r12
   0x00005555555557d4 <+57>:    ret    
   0x00005555555557d5 <+58>:    ret  
```

First let's establish some base cases.

```
0x000055555555579f <+4>:     mov    $0x0,%eax
0x00005555555557a4 <+9>:     test   %edi,%edi
0x00005555555557a6 <+11>:    jle    0x5555555557d5 <func4+58>
```

This is the first base case. the `test %edi, %edi` will return 0 if `%edi` is 0 or the values in `%edi` are the same. If not, it will go to the jmp less than or equal call. If `%edi` is a negative number, it will still return 0.

The next step is to look at the recursive calls.

```
0x00005555555557a8 <+13>:    push   %r12
0x00005555555557aa <+15>:    push   %rbp
0x00005555555557ab <+16>:    push   %rbx
```

These happen to be callee saved registers, and the next instructions...


```
0x00005555555557ac <+17>:    mov    %edi,%ebx
0x00005555555557ae <+19>:    mov    %esi,%ebp
```

...move the values of `%edi` and `%esi` into `%ebx` and `%ebp` respectively. (These are the 32-bit representations of `%rbx` and `%rbp`)


After we move some values into temporary callee registers, we can explore the recursive call here:
```
0x00005555555557b7 <+28>:    lea    -0x1(%rdi),%edi           # %edi <- %rdi - 1, basically like x--.
0x00005555555557ba <+31>:    call   0x55555555579b <func4>
0x00005555555557bf <+36>:    lea    (%rax,%rbp,1),%r12d       # %r12d  <- %esi * 1 + outcome
0x00005555555557c3 <+40>:    lea    -0x2(%rbx),%edi           # %edi <- %rbx - 2
0x00005555555557c6 <+43>:    mov    %ebp,%esi                 %esi <- %ebp
0x00005555555557c8 <+45>:    call   0x55555555579b <func4>
```

So, if we start with `%edi = 2` then it would be made to `1` by `0x00005555555557b7 <+28>:  lea  -0x1(%rdi),%edi`, before the first function call of `func4`, and `0` before the second function call of `func4`.


So if `%edi = 2` it would look something like this:

```
0x00005555555557b7 <+28>:    lea    -0x1(%rdi),%edi           # 2-1 = 1
0x00005555555557ba <+31>:    call   0x55555555579b <func4>    # call it again
0x00005555555557bf <+36>:    lea    (%rax,%rbp,1),%r12d       # 2 * (%esi)
0x00005555555557c3 <+40>:    lea    -0x2(%rbx),%edi           # 
0x00005555555557c6 <+43>:    mov    %ebp,%esi                 %esi <- %ebp
0x00005555555557c8 <+45>:    call   0x55555555579b <func4>
```


Running through the code with shit numbers, "4 31" we get:

```
0x0000555555555802 in phase_4 ()
(gdb) i r
rax            0x1f                31
rbx            0x0                 0
rcx            0x20                32
rdx            0x0                 0
rsi            0x1f                31
rdi            0x7fffffffd7f0      140737488345072
rbp            0x1                 0x1
rsp            0x7fffffffde40      0x7fffffffde40
r8             0x1999999999999999  1844674407370955161
r9             0x0                 0
r10            0x7ffff7f42ac0      140737353362112
r11            0x7ffff7f433c0      140737353364416
r12            0x7fffffffdf78      140737488347000
r13            0x555555555469      93824992236649
r14            0x555555558cf8      93824992251128
r15            0x7ffff7ffd040      140737354125376
rip            0x555555555802      0x555555555802 <phase_4+44>
eflags         0x246               [ PF ZF IF ]
cs             0x33                51
ss             0x2b                43
ds             0x0                 0
es             0x0                 0
fs             0x0                 0
gs             0x0                 0
k0             0xfffffff0          4294967280
k1             0x3                 3
k2             0x3                 3
k3             0x0                 0
k4             0x0                 0
k5             0x0                 0
k6             0x0                 0
k7             0x0                 0
```

This means that our inputs were switched, and instead of inputting "4 31" we should do "31 4"

```
0x0000555555555802 in phase_4 ()
(gdb) i r
rax            0x4                 4
rbx            0x0                 0
rcx            0x20                32
rdx            0x0                 0
rsi            0x4                 4
rdi            0x7fffffffd7f0      140737488345072
rbp            0x1                 0x1
rsp            0x7fffffffde40      0x7fffffffde40
r8             0x1999999999999999  1844674407370955161
r9             0x0                 0
r10            0x7ffff7f42ac0      140737353362112
r11            0x7ffff7f433c0      140737353364416
r12            0x7fffffffdf78      140737488347000
r13            0x555555555469      93824992236649
r14            0x555555558cf8      93824992251128
r15            0x7ffff7ffd040      140737354125376
rip            0x555555555802      0x555555555802 <phase_4+44>
eflags         0x246               [ PF ZF IF ]
cs             0x33                51
ss             0x2b                43
ds             0x0                 0
es             0x0                 0
fs             0x0                 0
gs             0x0                 0
k0             0xfffffff0          4294967280
k1             0x3                 3
k2             0x3                 3
k3             0x0                 0
k4             0x0                 0
k5             0x0                 0
k6             0x0                 0
k7             0x0                 0
```

Since we know that there's nothing inside of `func4` that will explode the bomb, we can simply set a breakpoint for right after `func4` is executed and see what comes out of the function:

```
Breakpoint 4, 0x000055555555581d in phase_4 ()
(gdb) i r
rax            0x30                48
rbx            0x0                 0
rcx            0x20                32
rdx            0x0                 0
rsi            0x4                 4
rdi            0x1                 1
rbp            0x1                 0x1
rsp            0x7fffffffde40      0x7fffffffde40
r8             0x1999999999999999  1844674407370955161
r9             0x0                 0
r10            0x7ffff7f42ac0      140737353362112
r11            0x7ffff7f433c0      140737353364416
r12            0x7fffffffdf78      140737488347000
r13            0x555555555469      93824992236649
r14            0x555555558cf8      93824992251128
r15            0x7ffff7ffd040      140737354125376
rip            0x55555555581d      0x55555555581d <phase_4+71>
eflags         0x206               [ PF IF ]
cs             0x33                51
ss             0x2b                43
ds             0x0                 0
es             0x0                 0
fs             0x0                 0
gs             0x0                 0
k0             0xfffffff0          4294967280
k1             0x3                 3
k2             0x3                 3
k3             0x0                 0
k4             0x0                 0
k5             0x0                 0
k6             0x0                 0
k7             0x0                 0
```


This is the number that should be the first `%d` in the string `%d %d`, at least when we have the number "4" as our second input. Since `func4` is a recursive funciton, there is no way that we can call the bomb, so we can `nexti` it and see what comes out before the last compare.

```
Breakpoint 4, 0x000055555555581d in phase_4 ()
(gdb) i r
rax            0x30                48
rbx            0x0                 0
rcx            0x20                32
rdx            0x0                 0
rsi            0x4                 4
rdi            0x1                 1
rbp            0x1                 0x1
rsp            0x7fffffffde40      0x7fffffffde40
r8             0x1999999999999999  1844674407370955161
r9             0x0                 0
r10            0x7ffff7f42ac0      140737353362112
r11            0x7ffff7f433c0      140737353364416
r12            0x7fffffffdf78      140737488347000
r13            0x555555555469      93824992236649
r14            0x555555558cf8      93824992251128
r15            0x7ffff7ffd040      140737354125376
rip            0x55555555581d      0x55555555581d <phase_4+71>
eflags         0x206               [ PF IF ]
cs             0x33                51
ss             0x2b                43
ds             0x0                 0
es             0x0                 0
fs             0x0                 0
gs             0x0                 0
k0             0xfffffff0          4294967280
k1             0x3                 3
k2             0x3                 3
k3             0x0                 0
k4             0x0                 0
k5             0x0                 0
k6             0x0                 0
k7             0x0                 0
```

The value that came out of `func4` is "48" which is our first input answer.

After testing it for the numbers "4" and "2", and getting the values "48" and "24" for each respective input, I can conclude that the second input is basically being multiplied by 12 to get the first input in `%d %d`.

**Answers: `24 2`, `36 3` or `48 4`**

---

### phase 5

```
Dump of assembler code for function phase_5:
=> 0x000055555555582f <+0>:     endbr64 
   0x0000555555555833 <+4>:     push   %rbx
   0x0000555555555834 <+5>:     mov    %rdi,%rbx
   0x0000555555555837 <+8>:     call   0x555555555aab <string_length>
   0x000055555555583c <+13>:    cmp    $0x6,%eax
   0x000055555555583f <+16>:    jne    0x55555555586d <phase_5+62>
   0x0000555555555841 <+18>:    mov    %rbx,%rax
   0x0000555555555844 <+21>:    lea    0x6(%rbx),%rdi
   0x0000555555555848 <+25>:    mov    $0x0,%ecx
   0x000055555555584d <+30>:    lea    0x19ac(%rip),%rsi        # 0x555555557200 <array.0>
   0x0000555555555854 <+37>:    movzbl (%rax),%edx
   0x0000555555555857 <+40>:    and    $0xf,%edx                # each character get's and'ed with 0xf to just grab the lower 4 bits.
   0x000055555555585a <+43>:    add    (%rsi,%rdx,4),%ecx
   0x000055555555585d <+46>:    add    $0x1,%rax
   0x0000555555555861 <+50>:    cmp    %rdi,%rax
   0x0000555555555864 <+53>:    jne    0x555555555854 <phase_5+37>
   0x0000555555555866 <+55>:    cmp    $0x21,%ecx
   0x0000555555555869 <+58>:    jne    0x555555555874 <phase_5+69>
   0x000055555555586b <+60>:    pop    %rbx
   0x000055555555586c <+61>:    ret    
   0x000055555555586d <+62>:    call   0x555555555ce5 <explode_bomb>
   0x0000555555555872 <+67>:    jmp    0x555555555841 <phase_5+18>
   0x0000555555555874 <+69>:    call   0x555555555ce5 <explode_bomb>
   0x0000555555555879 <+74>:    jmp    0x55555555586b <phase_5+60>
End of assembler dump.
```

For some reason, this phase took me the longest, yet it had the easiest solution. The first part of the assembly code is looking for a string of exactly six characters. Once we input six characters, we can see that there is an array that's being loaded which can be viewed by putting in `x/16dw 0x555555557200`.

My array looks like:

```
(gdb) x/16dw 0x555555557200
0x555555557200 <array.0>:       2       10      6       1
0x555555557210 <array.0+16>:    12      16      9       3
0x555555557220 <array.0+32>:    4       7       14      5
0x555555557230 <array.0+48>:    11      8       15      13
```

This is an array of 16 numbers that at each specific index. We can represent this in a table like so:

```
idx | 0 01 2 3 04 05 6 7 8 9 10 11 12 13 14 15

val | 2 10 6 1 12 16 9 3 4 7 14  5 11  8 15 13
```

We can see from later on in the code, it appears that the value of our letter (for reference I put in "kkkkkk") gets bitwise comapred to `&` extracting the lower four bits. Therefore we can assume that when we put char `k` in (value 107), we get the value (11).

Reaching the call `0x000055555555585a <+43>:  add  (%rsi,%rdx,4),%ecx` and looking inside the registers we get the following dump:

```
(gdb) i r
rax            0x555555559d20      93824992255264
rbx            0x555555559d20      93824992255264
rcx            0x5                 5
rdx            0xb                 11
rsi            0x555555557200      93824992244224
rdi            0x555555559d26      93824992255270
rbp            0x2                 0x2
rsp            0x7fffffffde70      0x7fffffffde70
r8             0x1                 1
r9             0x0                 0
r10            0xffffffffffffff80  -128
r11            0x246               582
r12            0x7fffffffdf98      140737488347032
r13            0x555555555469      93824992236649
r14            0x555555558cf8      93824992251128
r15            0x7ffff7ffd040      140737354125376
rip            0x55555555585d      0x55555555585d <phase_5+46>
eflags         0x206               [ PF IF ]
cs             0x33                51
ss             0x2b                43
ds             0x0                 0
es             0x0                 0
fs             0x0                 0
gs             0x0                 0
k0             0xffffff80          4294967168
k1             0x3                 3
k2             0x3                 3
k3             0x0                 0
k4             0x0                 0
k5             0x0                 0
k6             0x0                 0
k7             0x0                 0
```

So it seems that after extracting the lower 4 bits of `k`, the value that is being returned is `5` which is then added up to compare to the hex value `$0x21` which is `33` in decimal format. Thus, our input `kkkkkk` will yield us 30 (`5 + 5 + 5 + 5 + 5 + 5 = 30`).

Using our cipher from above we can conclude that to break past this phase, we must come up with a combination of characters that adds up to be a total of `33` in decimal value!

**Answer: It varies, but I got `kkkkkm` and `aaaccc` to work.**

---

### phase 6

```
Dump of assembler code for function phase_6:
=> 0x000055555555587b <+0>:     endbr64 
   0x000055555555587f <+4>:     push   %r14
   0x0000555555555881 <+6>:     push   %r13
   0x0000555555555883 <+8>:     push   %r12
   0x0000555555555885 <+10>:    push   %rbp
   0x0000555555555886 <+11>:    push   %rbx
   0x0000555555555887 <+12>:    sub    $0x50,%rsp
   0x000055555555588b <+16>:    lea    0x30(%rsp),%r13
   0x0000555555555890 <+21>:    mov    %r13,%rsi
   0x0000555555555893 <+24>:    call   0x555555555d32 <read_six_numbers>
   0x0000555555555898 <+29>:    mov    $0x1,%r14d
   0x000055555555589e <+35>:    mov    %r13,%r12
   0x00005555555558a1 <+38>:    jmp    0x5555555558cb <phase_6+80>
   0x00005555555558a3 <+40>:    call   0x555555555ce5 <explode_bomb>
   0x00005555555558a8 <+45>:    jmp    0x5555555558da <phase_6+95>
   0x00005555555558aa <+47>:    add    $0x1,%rbx
   0x00005555555558ae <+51>:    cmp    $0x5,%ebx
   0x00005555555558b1 <+54>:    jg     0x5555555558c3 <phase_6+72>
   0x00005555555558b3 <+56>:    mov    (%r12,%rbx,4),%eax
   0x00005555555558b7 <+60>:    cmp    %eax,0x0(%rbp)
   0x00005555555558ba <+63>:    jne    0x5555555558aa <phase_6+47>
   0x00005555555558bc <+65>:    call   0x555555555ce5 <explode_bomb>
   0x00005555555558c1 <+70>:    jmp    0x5555555558aa <phase_6+47>
   0x00005555555558c3 <+72>:    add    $0x1,%r14
   0x00005555555558c7 <+76>:    add    $0x4,%r13
   0x00005555555558cb <+80>:    mov    %r13,%rbp
   0x00005555555558ce <+83>:    mov    0x0(%r13),%eax
   0x00005555555558d2 <+87>:    sub    $0x1,%eax
   0x00005555555558d5 <+90>:    cmp    $0x5,%eax
   0x00005555555558d8 <+93>:    ja     0x5555555558a3 <phase_6+40>
   0x00005555555558da <+95>:    cmp    $0x5,%r14d
   0x00005555555558de <+99>:    jg     0x5555555558e5 <phase_6+106>
   0x00005555555558e0 <+101>:   mov    %r14,%rbx
   0x00005555555558e3 <+104>:   jmp    0x5555555558b3 <phase_6+56>
   0x00005555555558e5 <+106>:   mov    $0x0,%esi
   0x00005555555558ea <+111>:   mov    0x30(%rsp,%rsi,4),%ecx
   0x00005555555558ee <+115>:   mov    $0x1,%eax
   0x00005555555558f3 <+120>:   lea    0x3d36(%rip),%rdx        # 0x555555559630 <node1>
   0x00005555555558fa <+127>:   cmp    $0x1,%ecx
   0x00005555555558fd <+130>:   jle    0x55555555590a <phase_6+143>
   0x00005555555558ff <+132>:   mov    0x8(%rdx),%rdx
   0x0000555555555903 <+136>:   add    $0x1,%eax
   0x0000555555555906 <+139>:   cmp    %ecx,%eax
   0x0000555555555908 <+141>:   jne    0x5555555558ff <phase_6+132>
   0x000055555555590a <+143>:   mov    %rdx,(%rsp,%rsi,8)
   0x000055555555590e <+147>:   add    $0x1,%rsi
   0x0000555555555912 <+151>:   cmp    $0x6,%rsi
   0x0000555555555916 <+155>:   jne    0x5555555558ea <phase_6+111>
   0x0000555555555918 <+157>:   mov    (%rsp),%rbx
   0x000055555555591c <+161>:   mov    0x8(%rsp),%rax
   0x0000555555555921 <+166>:   mov    %rax,0x8(%rbx)
   0x0000555555555925 <+170>:   mov    0x10(%rsp),%rdx
   0x000055555555592a <+175>:   mov    %rdx,0x8(%rax)
   0x000055555555592e <+179>:   mov    0x18(%rsp),%rax
   0x0000555555555933 <+184>:   mov    %rax,0x8(%rdx)
   0x0000555555555937 <+188>:   mov    0x20(%rsp),%rdx
   0x000055555555593c <+193>:   mov    %rdx,0x8(%rax)
   0x0000555555555940 <+197>:   mov    0x28(%rsp),%rax
   0x0000555555555945 <+202>:   mov    %rax,0x8(%rdx)
   0x0000555555555949 <+206>:   movq   $0x0,0x8(%rax)
   0x0000555555555951 <+214>:   mov    $0x5,%ebp
   0x0000555555555956 <+219>:   jmp    0x555555555961 <phase_6+230>
   0x0000555555555958 <+221>:   mov    0x8(%rbx),%rbx
   0x000055555555595c <+225>:   sub    $0x1,%ebp
   0x000055555555595f <+228>:   je     0x555555555972 <phase_6+247>
   0x0000555555555961 <+230>:   mov    0x8(%rbx),%rax
   0x0000555555555965 <+234>:   mov    (%rax),%eax
   0x0000555555555967 <+236>:   cmp    %eax,(%rbx)
   0x0000555555555969 <+238>:   jge    0x555555555958 <phase_6+221>
   0x000055555555596b <+240>:   call   0x555555555ce5 <explode_bomb>
   0x0000555555555970 <+245>:   jmp    0x555555555958 <phase_6+221>
   0x0000555555555972 <+247>:   add    $0x50,%rsp
   0x0000555555555976 <+251>:   pop    %rbx
   0x0000555555555977 <+252>:   pop    %rbp
   0x0000555555555978 <+253>:   pop    %r12
   0x000055555555597a <+255>:   pop    %r13
   0x000055555555597c <+257>:   pop    %r14
   0x000055555555597e <+259>:   ret    
End of assembler dump.
```

In this code, we can see that we need to input six numbers in order to get past `0x0000555555555893 <+24>:  call 0x555555555d32 <read_six_numbers>` of the code.

We can also gather that the inputs of our list of numbers has to be `<= 6` based off of this code:

```
0x00005555555558d2 <+87>:    sub    $0x1,%eax
0x00005555555558d5 <+90>:    cmp    $0x5,%eax
0x00005555555558b1 <+54>:    jg     0x5555555558c3 <phase_6+72>
```

The code below is comparing all of our values that we put in and checking to see if there is any repeated numbers like "1 1 2 3 4 5". If there are any values repeated, it will jump to `explode_bomb`.

```
0x00005555555558b3 <+56>:    mov    (%r12,%rbx,4),%eax
0x00005555555558b7 <+60>:    cmp    %eax,0x0(%rbp)
0x00005555555558ba <+63>:    jne    0x5555555558aa <phase_6+47>
```


After moving past that comparison, we can find a LinkedList in ``# 0x555555559630 <node1>` whichi gives us the following output:

```
(gdb) x/12gx 0x555555559630
0x555555559630 <node1>: 0x00000001000003db      0x0000555555559640
0x555555559640 <node2>: 0x000000020000007b      0x0000555555559650
0x555555559650 <node3>: 0x000000030000018e      0x0000555555559660
0x555555559660 <node4>: 0x00000004000003b8      0x0000555555559670
0x555555559670 <node5>: 0x00000005000001a9      0x0000555555559120
0x555555559680 <host_table>:    0x0000555555557435      0x000055555555744f
```

Notice that we do not have node 6, but we can easily retrieve that by pointing to the address of `node5`.

```
(gdb) x/2gx 0x0000555555559120
0x555555559120 <node6>: 0x000000060000025f      0x0000000000000000
```

After finding this node tree, we can see what our input values do at the call `0x0000555555555969 <+238>: jge 0x555555555958 <phase_6+221>`. Essentially, we want the value of `%rax` to be greater than the value of `%rbx`

```
%rax | $rbx
1    | 3db
2    | 07b
3    | 18e
4    | 3b8
5    | 1a9
6    | 25f
```

Taking a look at the values of the nodes, we can order these from big to smol by comparing the address it's linked to.

**Answer: `1 4 6 5 3 2`**