### writeup

this file is to explain the program optimizations that have been utilized in the lab to improve performance.
(this was also used for my interview grading in my class)

#### what was the estimated total number of calls/pixel in the original?

Before
```
jovyan@jupyter-rast4675:~/lab4-perflab-rey-h$ ./filter hline.filter boats.bmp boats.bmp
Took 96286594.000000 cycles to process, or 1822.643182 cycles per pixel
Took 84106576.000000 cycles to process, or 1592.083289 cycles per pixel
Average cycles per sample is 1707.363235
```

After
```
jovyan@jupyter-rast4675:~/lab4-perflab-rey-h$ ./filter hline.filter boats.bmp boats.bmp
Took 8893498.000000 cycles to process, or 168.348187 cycles per pixel
Took 7627290.000000 cycles to process, or 144.379685 cycles per pixel
Average cycles per sample is 156.363936
```

### what are inline functions?

inline functions are a feature that make a program run faster by reducing the time it takes for repetitive function calls.

basically, a function is compiled into the calling program which eliminates the need to call the function repeatedly.


#### why does eliminating calls reduce CPE?

eliminating calls to functions reduces CPE because if the function is called every time the loop iterates, it makes unecessary memory references that can be eliminated if the call is made outside of the loop.


### why would `char` improve over `int` in an array?

char contains only 1 byte of memory and we are only using RGB color values which only go to 255 anyways. making the data types smaller would reduce the amount of memory used.


### why does loop order impact stride (step size)?

loop stride is essentially just the setp size used when iterating over a sequence of elements.

the step size is important because the more times you can step inside an iteration, the faster the program can compile.


### what is the stride for the inner loop?

```
  for(int col = 1; col < (input -> width) - 1; col = col + 1) {
    for(int row = 1; row < (input -> height) - 1 ; row = row + 1) {
      for(int plane = 0; plane < 3; plane++) {

	output -> color[plane][row][col] = 0;

	for (int j = 0; j < filter -> getSize(); j++) {
	  for (int i = 0; i < filter -> getSize(); i++) {	
	    output -> color[plane][row][col]
	      = output -> color[plane][row][col]
	      + (input -> color[plane][row + i - 1][col + j - 1] 
		 * filter -> get(i, j) );
	  }
	}
```

the stride for the inner loop is 1 because both `i` and `j` are being incremented by `row + i - 1` and `col + j -1` respectively.

if it were more than 1, the indexing expression would be different.


### why does unrolling help? how does it work for different unrolling amounts?

unrolling improves pipelining (improves overall efficiency), register calls (reduces need for memory accessees), and cache performance (reducing iterations imporves data access patterns).

there are different ways to unroll a loop. for example 2x1 loop unrolling would be when the loop index is incremented by `2`, and the loop body is executed for both `i` and `i + 1`.

```
for (int i = 0; i < N; i++)
{
  // iteration i
  // iteration i + 1
}
```

2x2 loop unrolling is when during each iteration, you unroll four consecutive iterations and increment it by 4.


```
for (int i = 0; i < N; i+=4)
{
  // iteration i
  // iteration i + 1
  // iteration i + 2
  // iteration i + 3
}
```

### why does optimization help?

program go quick = more time for coffee.


### how do multiple accumulators help?

multiple accumulators can help by storing "intermediate" values of a computation within a loop / iterative process.