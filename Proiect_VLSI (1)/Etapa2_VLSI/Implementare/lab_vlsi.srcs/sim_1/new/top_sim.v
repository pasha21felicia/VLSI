`timescale 1ns / 1ps

module top_sim();

    reg clk, rst, start;
    reg [7:0] N, D;
    
    wire idle, done;
    wire [7:0] Q, R;
    
    top instTOP(.clk(clk), .rst(rst), .start(start), .N(N), .D(D), .idle(idle), .done(done),
                    .Q(Q), .R(R));

    initial begin
        #0 clk = 0; rst = 0; start = 0;        
    end
 
    always #10 clk = ~clk;
    
    initial begin
        // Facem reset la circuit
        @(negedge clk); #5 rst = 1; @(negedge clk); #5 rst = 0;
        
        // Pornire algoritm                       
        @(negedge clk); start = 1; N = 13; D = 2; @(negedge clk); start = 0;
        $display("Imparte N =%d la D =%d\n",N,D);
        
        // Terminare algoritm si STOP
        @(posedge done);
        #1 $display("Rezultat Q =%d si R =%d\n",Q,R);
        @(negedge clk);@(negedge clk);@(negedge clk);
        
        @(negedge clk); start = 1; N = 4; D = 2;@(negedge clk); start = 0;
        $display("Imparte N =%d la D =%d\n",N,D);
       
        @(posedge done);
        #1 $display("Rezultat Q =%d si R =%d\n",Q,R);
        @(negedge clk);@(negedge clk);@(negedge clk); 
        
        @(negedge clk); start = 1; N = 7; D = 4;@(negedge clk); start = 0;
        $display("Imparte N =%d la D =%d\n",N,D);
       
        @(posedge done);
        #1 $display("Rezultat Q =%d si R =%d\n",Q,R);
        @(negedge clk);@(negedge clk);@(negedge clk);
        $stop;
    
    end


endmodule
