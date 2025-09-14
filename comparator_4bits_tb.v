`timescale 1ns / 1ps

module comparator_4bits_tb;

   reg [3:0] a;
   reg [3:0] b;
   wire x,y,z;

comparator_4bits uut(
   .a(a),
   .b(b),
   .x(x),
   .y(y),
   .z(z)
);

initial begin   
   // A=0011, B=1000
   a=4'b0011;
   b=4'b1000;
   #10; //10ns 기다리기

   $display("A=%b, B=%b => x=%b (A>B), y%b (A==b), x=%b (A<B)", a,b,x,y,z);

   $stop; // 시뮬레이션 멈춤
   
end

endmodule
