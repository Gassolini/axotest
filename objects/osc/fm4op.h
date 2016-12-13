#ifndef _fm4op_H_
#define _fm4op_H_

/*
 * An in-class initilized static sionst must be /constexpr/ to be able to use chars (or any non intergral)
 * and that can't be referenced from member functions (with the axo supplied compiler?).
 * So we could use a memebr function local static const (initalized the first time the function gets called).
 *
 * But yes.. but no.. but yes.. but no...
 *
 * Axoloti makes a unique C++ class for each instance of an axo object so we'd get duplicates of fm4op_algorithms.
 * Drat! Has to be a global it is then :-(
 */

#define N_OPERATORS  4
#define N_ALGORITHMS 8

enum
{
  nop = -1,
  OP1 =  0,
  OP2 =  1,
  OP3 =  2,
  OP4 =  3
};

static const signed char fm4op_algorithms[N_ALGORITHMS][N_OPERATORS+1][N_OPERATORS] =
{
  /*
   * TX81Z algorithms:
   *
   * num (1)    (2)    (3)    (4)    (5)    (6)    (7)    (8)
   *
   *      4
   *      3    3+4      3       4
   *      2      2      2+4   2+3    2 4    4 4 4      4
   * out  1      1      1     1      1+3    1+2+3  1+2+3  1+2+3+4
   *
   */

  //Modulation sources lists, terminated by -1 or array bounds                          Always in indexed place!
  //OP1 inputs           OP2 inputs           OP3 inputs           OP4 inputs           Output operators
  { { OP2,nop,nop,nop }, { OP3,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,nop,nop,nop } },
  { { OP2,nop,nop,nop }, { OP3,OP4,nop,nop }, { OP3,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,nop,nop,nop } },
  { { OP2,OP4,nop,nop }, { OP3,nop,nop,nop }, { OP3,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,nop,nop,nop } },
  { { OP2,OP3,nop,nop }, { OP2,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,nop,nop,nop } },
  { { OP2,nop,nop,nop }, { OP2,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,nop,OP3,nop } },
  { { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,OP2,OP3,nop } },
  { { OP1,nop,nop,nop }, { OP2,nop,nop,nop }, { OP4,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,OP2,OP3,nop } },
  { { OP1,nop,nop,nop }, { OP2,nop,nop,nop }, { OP3,nop,nop,nop }, { OP4,nop,nop,nop }, { OP1,OP2,OP3,OP4 } }
};

// Volume scaing factors, 1/N_channels * (1<31) - 1
static const int32_t fm_volscaling[N_OPERATORS] = { 0x7fffffff, 0x40000000, 0x2AAAAAAA, 0x20000000 };

#endif