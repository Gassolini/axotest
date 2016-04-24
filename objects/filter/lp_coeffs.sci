// RBJ EQ Cookbook LPF

Fs = 48000;
f0 = 13290;
Q  = 1;

w0 = 2*%pi*f0/Fs;
//w0 = 8*f0/Fs;
//w0=(f0/Fs) * (2^31);


alpha = sin(w0)/(2*Q);

a0 =  (  1 + alpha      ) ;
a1 =  ( -2*cos(w0)      ) / a0;
a2 =  (  1 - alpha      ) / a0;
b0 =  ( (1 - cos(w0))/2 ) / a0;
b1 =  (  1 - cos(w0)    ) / a0;
b2 =  ( (1 - cos(w0))/2 ) / a0;

q31  = 2^31;
q30  = 2^30;
q29  = 2^29;
q28  = 2^28;

//a1 = int32(a1*fp);
printf( "w0      = %f,  0x%08x\n", w0    ,  w0      * q29  );
printf( "sin(w0) = %f,  0x%08x\n", sin(w0), sin(w0) * q31  );
printf( "cos(w0) = %f,  0x%08x\n", cos(w0), cos(w0) * q31  );
printf( "alpha   = %f,  0x%08x\n", alpha ,  alpha   * q31  );
printf( "\n" );
printf( "a0      = %f,  0x%08x\n", a0    , a0    * q30  );
printf( "a1      = %f,  0x%08x\n", a1    , int32(a1 * q29)  );
printf( "a2      = %f,  0x%08x\n", a2    , a2    * q29  );
printf( "b0      = %f,  0x%08x\n", b0    , b0    * q29  );
printf( "b1      = %f,  0x%08x\n", b1    , b1    * q29  );
printf( "b2      = %f,  0x%08x\n", b2    , b2    * q29  );

