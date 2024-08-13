# 1 "E:/nasaCPU/Vitis2024_workspace/my_adder_ip/my_adder_ip.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/nasaCPU/Vitis2024_workspace/my_adder_ip/my_adder_ip.cpp" 2
void my_adder_ip(unsigned int a,
                 unsigned int b,
                 unsigned int *c){
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=c
#pragma HLS INTERFACE mode=s_axilite port=b
#pragma HLS INTERFACE mode=s_axilite port=a
  *c = a + b;
}
