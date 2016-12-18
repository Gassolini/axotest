#ifndef _fm4op_H_
#define _fm4op_H_

/*
 * An in-class initilized static const must be /constexpr/ to be able to use chars (or any non integral)
 * and that can't be referenced from member functions (with the axo supplied compiler?).
 * So we could use a member function local static const (initalized the first time the function gets called).
 * But yes... but no... but yes... but no...
 * Axoloti makes a unique C++ class for each instance of an axo object so we'd get multiple fm4op_algorithms.
 * Drat! Has to be a global it is then :-(
 */

#define FM4OP_DATA_SECTION
//#define FM4OP_DATA_SECTION __attribute__ ((section (".sdram")))
//#define FM4OP_DATA_SECTION __attribute__ ((section (".sram2")))

#define FM4OP_N_OPERATORS  4
#define FM4OP_N_MODULATORS 2
#define FM4OP_N_ALGORITHMS 8

enum
{
  no = -1,
  O1 =  0,
  O2 =  1,
  O3 =  2,
  O4 =  3
};

typedef struct
{
  signed char mod[FM4OP_N_OPERATORS][FM4OP_N_MODULATORS]; // Modulation inputs to operators
  signed char out[FM4OP_N_OPERATORS];                    // Output operators
} Fm4OpAlgorithm;

//  Algorithms struct size = (4*2+4)*8 = 96 bytes
//  op_index = fm4op_algorithms[alg].mod[operator][modulator_index];
//  op_index = fm4op_algorithms[alg].out[output_index];

static const Fm4OpAlgorithm fm4op_algorithms[FM4OP_N_ALGORITHMS] FM4OP_DATA_SECTION =
{
  /*
   * TX81Z algorithms:
   * (prefix f means that operator has self feedback)
   * (row of dashes means feed to all below covered by dashes)
   *
   * num (1)    (2)    (3)    (4)    (5)    (6)    (7)    (8)
   *
   *      4f
   *      3    3+4f     3       4f            4f
   *      2      2      2+4f  2+3    2 4f   -----      4f
   * out  1      1      1     1      1+3    1+2+3  1+2+3  1+2+3+4f
   */

  //  Modulation sources lists,
  //  terminated by -1 or array bounds              Output operators
  //  O1 inputs  O2 inputs  O3 inputs  O4 inputs    always in indexed place!
  { { { O2,no }, { O3,no }, { O4,no }, { O4,no } }, { O1,no,no,no } },
  { { { O2,no }, { O3,O4 }, { O3,no }, { O4,no } }, { O1,no,no,no } },
  { { { O2,O4 }, { O3,no }, { O3,no }, { O4,no } }, { O1,no,no,no } },
  { { { O2,O3 }, { O2,no }, { O4,no }, { O4,no } }, { O1,no,no,no } },
  { { { O2,no }, { O2,no }, { O4,no }, { O4,no } }, { O1,no,O3,no } },
  { { { O4,no }, { O4,no }, { O4,no }, { O4,no } }, { O1,O2,O3,no } },
  { { { O1,no }, { O2,no }, { O4,no }, { O4,no } }, { O1,O2,O3,no } },
  { { { O1,no }, { O2,no }, { O3,no }, { O4,no } }, { O1,O2,O3,O4 } }
};

// Volume scaling factors,
//  A  vol = 1/N_channels * (1<31)
//  B _vol = 1/sqrt(N_channels) * (1<31)

static const int32_t fm4op_volscaling_A[FM4OP_N_OPERATORS+1] FM4OP_DATA_SECTION =
{ 0, 0x7fffffff, 0x40000000, 0x2AAAAAAA, 0x20000000 };

static const int32_t fm4op_volscaling_B[FM4OP_N_OPERATORS+1] FM4OP_DATA_SECTION =
{ 0, 0x7fffffff, 0x5A827999, 0x49E69D16, 0x40000000 };



#endif