#ifndef _fm6op_H_
#define _fm6op_H_

/*
 * An in-class initilized static const must be /constexpr/ to be able to use chars (or any non integral)
 * and that can't be referenced from member functions (with the axo supplied compiler?).
 * So we could use a member function local static const (initalized the first time the function gets called).
 * But yes... but no... but yes... but no...
 * Axoloti makes a unique C++ class for each instance of an axo object so we'd get multiple fm6op_algorithms.
 * Drat! Has to be a global it is then :-(
 */

#define FM6OP_DATA_SECTION
//#define FM6OP_DATA_SECTION __attribute__ ((section (".sdram")))
//#define FM6OP_DATA_SECTION __attribute__ ((section (".sram2")))

#define FM6OP_N_OPERATORS   6
#define FM6OP_N_MODULATORS  3
#define FM6OP_N_ALGORITHMS  32

enum
{
  no = -1,
  O1 =  0,
  O2 =  1,
  O3 =  2,
  O4 =  3,
  O5 =  4,
  O6 =  5
};

typedef struct
{
  signed char mod[FM6OP_N_OPERATORS][FM6OP_N_MODULATORS];
  signed char out[FM6OP_N_OPERATORS];
} Fm6OpAlgorithm;

//  Algorithms struct size = (6*3+6)*32 = 768 bytes
//  op_index = fm6op_algorithms[alg].mod[operator][modulator_index];
//  op_index = fm6op_algorithms[alg].out[output_index];

static const Fm6OpAlgorithm fm6op_algorithms[FM6OP_N_ALGORITHMS] FM6OP_DATA_SECTION =
{
  /*
   * DX7 algorithms:
   * (prefix f means that operator has self feedback, the only differentiating feature between some algorithms)
   * (number N with suffix . means feedback source from op N, the only differentiating feature between some algorithms)
   * (row of dashes means feed to all below covered by dashes)
   *
   * num  (1)         (2)       (3)       (4)      (5)          (6)             (7)           (8)
   *
   *          6f          6                  4.
   *          5           5     3   6f   3   6                             5.           6f           6
   *      2   4       2f  4     2   5    2   5     2   4   6f     2    4   6      2   4+5     2   4f+5
   * out  1 + 3       1 + 3     1 + 4    1 + 4     1 + 3 + 5      1  + 3 + 5      1 + 3       1 + 3
   *
   * num  (9)      (10)     (11)      (12)        (13)        (14)      (15)     (16)
   *
   *            6  3f       3                                     5+6f      5+6      4   6f
   *      2f  4+5  2   6+5  2   5+6f  2f  4+5+6   2   4+5+6f  2   4     2f  4    2 + 3 + 5
   * out  1 + 3    1 + 4    1 + 4     1 + 3       1 + 3       1 + 3     1 + 3        1
   *
   * num  (17)      (18)        (19)        (20)          (21)            (22)            (23)            (24)
   *
   *                       6
   *         4 6           5    3     6f      3f           3f       6             6f                6f                6f
   *      2f+3+5    2+ 3f +4    2   -----   -----   5+6   -----   -----   2   ---------       3   -----           ---------
   * out     1         1        1 + 4 + 5   1 + 2 + 4     1 + 2 + 4 + 5   1 + 3 + 4 + 5   1 + 2 + 4 + 5   1 + 2 + 3 + 4 + 5
   *
   * num  (25)        (26)          (27)          (28)         (29)       (30)        (31)         (32)
   *
   *             6f                                   5f                      5f
   *            ---       3   5+6f      3f  5+6   2   4            4 6f       4               6f
   * out  1+2+3+4+5   1 + 2 + 4     1 + 2 + 4     1 + 3 + 6    1+2+3+5    1+2+3+6     1+2+3+4+5    1+2+3+4+5+6f
   */

  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O5,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O5,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O5,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,no,O4,no,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O5,no,no }, { O6,no,no }, { O4,no,no } }, { O1,no,no,O4,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,O5,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O5,no,no } }, { O1,no,O3,no,O5,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,O5,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,O5,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },

  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O5,O6,no }, { O5,no,no }, { O6,no,no } }, { O1,no,no,O4,no,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O5,O6,no }, { O5,no,no }, { O6,no,no } }, { O1,no,no,O4,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,O5,O6 }, { O4,no,no }, { O5,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,O5,O6 }, { O4,no,no }, { O5,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O5,O5,no }, { O5,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O5,O5,no }, { O5,no,no }, { O6,no,no } }, { O1,no,O3,no,no,no } },
  { { { O2,O3,O5 }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,no,no,no,no } },

  { { { O2,O3,O5 }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,no,no,no,no } },
  { { { O2,O3,O4 }, { O2,no,no }, { O3,no,no }, { O5,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,no,no,no,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,no,O4,O5,no } },
  { { { O3,no,no }, { O3,no,no }, { O3,no,no }, { O5,O6,no }, { O5,no,no }, { O6,no,no } }, { O1,O2,no,O4,no,no } },
  { { { O3,no,no }, { O3,no,no }, { O3,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,no,O4,O5,no } },
  { { { O2,no,no }, { O2,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,no,O3,O4,O5,no } },
  { { { O2,no,no }, { O3,no,no }, { O3,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,no,O4,O5,no } },
  { { { O1,no,no }, { O2,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,O3,O4,O5,no } },

  { { { O1,no,no }, { O2,no,no }, { O3,no,no }, { O6,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,O3,O4,O5,no } },
  { { { O1,no,no }, { O3,no,no }, { O4,no,no }, { O5,O6,no }, { O5,no,no }, { O6,no,no } }, { O1,O2,no,O4,no,no } },
  { { { O1,no,no }, { O3,no,no }, { O3,no,no }, { O5,O6,no }, { O5,no,no }, { O6,no,no } }, { O1,O2,no,O4,no,no } },
  { { { O2,no,no }, { O2,no,no }, { O4,no,no }, { O5,no,no }, { O5,no,no }, { O6,no,no } }, { O1,no,O3,no,no,O6 } },
  { { { O1,no,no }, { O2,no,no }, { O4,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,O3,no,O5,no } },
  { { { O1,no,no }, { O2,no,no }, { O4,no,no }, { O5,no,no }, { O5,no,no }, { O6,no,no } }, { O1,O2,O3,no,no,O6 } },
  { { { O1,no,no }, { O2,no,no }, { O3,no,no }, { O4,no,no }, { O6,no,no }, { O6,no,no } }, { O1,O2,O3,O4,O5,no } },
  { { { O1,no,no }, { O2,no,no }, { O3,no,no }, { O4,no,no }, { O5,no,no }, { O6,no,no } }, { O1,O2,O3,O4,O5,O6 } }
};

//static const signed char fm6op_algorithmsX[FM6OP_N_ALGORITHMS][FM6OP_N_OPERATORS+1][FM6OP_N_OPERATORS] FM6OP_DATA_SECTION =
//{
//  //  Table size = 6*7*32 = 1344 bytes
//  //  Modulation sources lists, terminated by -1 or array bounds                                                                                Always in indexed place!
//  //  O1 inputs              O2 inputs              O3 inputs              O4 inputs              O5 inputs              O6 inputs              Output operators
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,O4,no,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O4,no,no,no,no,no }, { O1,no,no,O4,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,O5,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O5,no,no,no,no,no }, { O1,no,O3,no,O5,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,O5,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,O5,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,O6,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,O4,no,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,O6,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,O4,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,O5,O6,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,O5,O6,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,O5,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,O5,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,no } },
//  { { O2,O3,O5,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,no,no,no } },
//
//  { { O2,O3,O5,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,no,no,no } },
//  { { O2,O3,O4,no,no,no }, { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,no,no,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,no,O4,O5,no } },
//  { { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,O6,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,no,O4,no,no } },
//  { { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,no,O4,O5,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,O4,O5,no } },
//  { { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,no,O4,O5,no } },
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,O4,O5,no } },
//
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,O4,O5,no } },
//  { { O1,no,no,no,no,no }, { O3,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,O6,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,no,O4,no,no } },
//  { { O1,no,no,no,no,no }, { O3,no,no,no,no,no }, { O3,no,no,no,no,no }, { O5,O6,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,no,O4,no,no } },
//  { { O2,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,no,O3,no,no,O6 } },
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,no,O5,no } },
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,no,no,O6 } },
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O4,no,no,no,no,no }, { O6,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,O4,O5,no } },
//  { { O1,no,no,no,no,no }, { O2,no,no,no,no,no }, { O3,no,no,no,no,no }, { O4,no,no,no,no,no }, { O5,no,no,no,no,no }, { O6,no,no,no,no,no }, { O1,O2,O3,O4,O5,O6 } }
//};

// Volume scaling factors,
//  A  vol = 1/N_channels * (1<31)
//  B _vol = 1/sqrt(N_channels) * (1<31)

static const int32_t fm6op_volscaling_A[FM6OP_N_OPERATORS+1] FM6OP_DATA_SECTION =
{ 0, 0x7fffffff, 0x40000000, 0x2AAAAAAA, 0x20000000, 0x19999999, 0x15555555 };

static const int32_t fm6op_volscaling_B[FM6OP_N_OPERATORS+1] FM6OP_DATA_SECTION =
{ 0, 0x7fffffff, 0x5A827999, 0x49E69D16, 0x40000000, 0x393E4B8B, 0x34417AE0 };


#endif