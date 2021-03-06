module _5bitadder (S,C,A,B,C0);
input [4:0] A,B;
input C0;
output C;
output [4:0] S;
wire C1,C2,C3,C4;  //intermediate carries

//Instantiate the full addder
full_adder FA0(S[0], C1, A[0], B[0], C0),
				FA1(S[1], C2, A[1], B[1], C1),
				FA2(S[2], C3, A[2], B[2], C2),
				FA3(S[3], C4, A[3], B[3], C3),
				FA4(S[4], C, A[4], B[4], C4);
				
endmodule
 