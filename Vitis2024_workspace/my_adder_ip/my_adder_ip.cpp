void my_adder_ip(unsigned int  a,
                 unsigned int  b,
                 unsigned int *c){
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=c
#pragma HLS INTERFACE mode=s_axilite port=b
#pragma HLS INTERFACE mode=s_axilite port=a
  *c = a + b;
}