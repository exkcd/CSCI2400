/* 
 * CS:APP Data Lab 
 * 
 * R Stone
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically and a negative shift value results in zero.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES, FOLLOW THE DIRECTIONS in README.md
 */


#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */

/*
 * bitOr - x|y using only ~ and &
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitOr(int x, int y)
{
  /*
  'x' and 'y' are both true if and only if 'x' and 'y' are not false (DeMorgan's Law)
  */

  return ~(~x & ~y);
}

/*
 * isZero - returns 1 if x == 0, and 0 otherwise
 *   Examples: isZero(5) = 0, isZero(0) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int isZero(int x)
{
  /*
  if x = 0 then it will return 1, if x = any other number, it will return 0
  */

  return !x;
}

/*
 * TMax - return maximum two's complement integer
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void)
{
  /*
  since it is assumed that we are using 2s complement 32-bit representations of integers,
  that means that the max integer value will be 2 to the 31st power.
  this code returns that number by shifting the binary value of 1 over 31 places
  and then making the negative positive.
  */

  return ~(1 << 31); // because (u << k ) == u * 2^k where u = 1 and k = 31

  // shifts the bit value of '1' over by 31 and then flips all the bits with 'not'
}

/*
 * anyOddBit - return 1 if any odd-numbered bit in word set to 1
 *   Examples anyOddBit(0x5) = 0, anyOddBit(0x7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyOddBit(int x)
{
  /*
  each (x >>) gate shifts the bits down. the mask '0xAA' (in binary is 10101010)
  x is ORd with each shift and then AND'd with the mas '0xAA' to confirm if it is even or odd
  since '!' is not, '!!' is not not, not not. :D
  meaning if !!0 then 1.
  */

  return !!((x | (x >> 8) | (x >> 16) | (x >> 24)) & 0xaa);
}

/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n)
{
  /*
  "x" is shifted over by 31 to check if the MSB is 1 or 0.
  the right shift is used to check if there was any loss of information.
  '!' is used to compare if the 'x' MSB is different from 'n' MSB
  */

  n = 33 + ~n; // same as 32 + ~n + 1

  return !(((x << n) >> n) ^ x);
}

/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int leastBitPos(int x)
{
  /*
  the negative value of "x" can be used to mask out all other positions except
  the LSB.
  */

  return (x & (~x + 1));
}

/*
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x)
{
  /*
  created the variables int y and int z for the range of ASCII '0' to '9' inclusive
  'compare_1' and 'compare_2' uses subtraction based on Two's complement
  the mask checks if the variable is negative or not. if it is, then it is out of range.  
  */
  
  int y = 0x30; // 48

  int compare_1 = x + ~y + 1; // two's complement subtraction

  int mask = 1 << 31; // checks if negative or not

  int z = 0x39; // 57

  int compare_2 = z + ~x + 1; // two's complement subtraction

  return !((compare_1 & mask) | (compare_2 & mask));
}

/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y)
{

  int x_sign = !!(x & (1 << 31)); // the '!!' makes all negatives 0

  int y_sign = !!(y & (1 << 31));

  int same_sign = !(x_sign ^ y_sign); // checks if the numbers have the same sign

  int less_equal = !((y + ~x + 1) & (1 << 31)); // using two's comp. for subtraction, checks if the difference is greater than 0.

  return (x_sign & !y_sign) | (same_sign & less_equal);

}

/*
 * reverseBytes - reverse the bytes of x
 *   Example: reverseBytes(0x01020304) = 0x04030201
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3
 */
int reverseBytes(int x)
{
  /*
  create a mask that will give you the number value of a specific byte
  move 'x' until all the numbers are successfully masked
  put them back but in reverse order.
  */
 
  int mask = 0xff;

  int byte_1 = x & mask;

  int byte_2 = (x >> 8) & mask;

  int byte_3 = (x >> 16) & mask;

  int byte_4 = (x >> 24) & mask;

  return (byte_4 | (byte_3 << 8)| (byte_2 << 16) | (byte_1 << 24));
}

/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x)
{
  int m4 = 0x1 | (0x1 << 8) | (0x1 << 16) | (0x1 << 24); // this is a mask of four bits for the number 0x1

  int m1 = 0xFF; // this mask is used to isolate only the first 8 bits

  int s4 = (x & m4) + ((x >> 1) & m4) + ((x >> 2) & m4) + ((x >> 3) & m4) + ((x >> 4) & m4) + ((x >> 5) & m4) + ((x >> 6) & m4) + ((x >> 7) & m4);
  // the sum of all the bits that were not masked by m4

  int s1 = ((s4 & m1) + ((s4 >> 8) & m1) + ((s4 >> 16) & m1) + ((s4 >> 24) & m1)); // shifts all the bits down and adds them together

  return s1;
    
  /* hehe. inefficient.
  int mask11 = 0x11;

  int group1 = ((x & mask1) + ((x >> 1) & mask1) + ((x >> 2) & mask1) + ((x >> 3) & mask1));

  int group2 = (((x >> 4) & mask1) + ((x >> 5) & mask1) + ((x >> 6) & mask1) + ((x >> 7) & mask1));

  int group3 = (((x >> 8) & mask1) + ((x >> 9) & mask1) + ((x >> 10) & mask1) + ((x >> 11) & mask1));

  int group4 = (((x >> 12) & mask1) + ((x >> 13) & mask1) + ((x >> 14) & mask1) + ((x >> 15) & mask1));

  int group5 = (((x >> 16) & mask1) + ((x >> 17) & mask1) + ((x >> 18) & mask1) + ((x >> 19) & mask1));

  int group6 = (((x >> 20) & mask1) + ((x >> 21) & mask1) + ((x >> 22) & mask1) + ((x >> 23) & mask1));
  
  int group7 = (((x >> 24) & mask1) + ((x >> 25) & mask1) + ((x >> 26) & mask1) + ((x >> 27) & mask1));

  int group8 = (((x >> 28) & mask1) + ((x >> 29) & mask1) + ((x >> 30) & mask1) + ((x >> 31) & mask1));

  return group1 + group2 + group3 + group4 + group5 + group6 + group7 + group8;
*/
}

/*
 * logicalNeg - implement the ! operator, using all of
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4
 */
int logicalNeg(int x)
{
  /*
  this compares the right shifted value of x and the negation of that (two's complement).
  if x is a number that is not zero, it will return -1 to which it will be added to 1 and thus equal 0.
  if x is zero, then it will return 1.
  */

  return (((x >> 31) | ((~x + 1) >> 31)) + 1);
}

/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples: trueFiveEighths(11) = 6
 *            trueFiveEighths(-9) = -5
 *            trueFiveEighths(0x30000000) = 0x1E000000 (no overflow)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 4
 */
int trueFiveEighths(int x)
{

  int div_eights = x >> 3; // divide x by 1/8.

  int rem = x & 7; // for all the bits that are shifted over because of division, this mask will retain those lost bits

  int div_eight_mul_five = (div_eights << 2) + div_eights; // multiply by five

  int negative_mask = (x >> 31); // checks if the sign is + or -
    
  int rem_five = (rem << 2) + rem; // multiplies the remainder bits by five

  int add_rem = ((rem_five + (negative_mask & 0x7)) >> 3); 
  // takes the remainder bits that were multiplied, adds the negative mask (if it is negative) and divides by 8.

  return div_eight_mul_five + add_rem;
}


/*
 * Extra credit
 */
/*
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf)
{
  return 2;
}
/*
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf)
{
  return 2;
}

