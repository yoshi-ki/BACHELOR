`timescale 1ns / 1ps
`default_nettype none

module test_divider_p2
  #( parameter K = 32,
     parameter NSTAGE = 2)
   ();
   logic [K+31:0] xi[NSTAGE:0];
   logic [K-1:0]  di[NSTAGE:0];
   logic          val[NSTAGE:0];
   wire [K+31:0]  x;
   wire [K-1:0]   d;
   logic [K-1:0]   r;
   logic [K-1:0]   q;

   logic          clk;
   logic          rstn;
   
   integer        i;
   integer        j;
   logic [K-1:0]  td;
   logic [K-1:0]  th;
   logic [31:0]   tl;

   assign x = xi[0];
   assign d = di[0];
  
   div32p2 udiv32p2(x,d,q,r,clk,rstn);

   initial begin
      $dumpfile("test_divider_p2.vcd");
      $dumpvars(0);

      #1;
      rstn = 0;
      clk = 1;
      val = {default: 1'b0};
      xi[0] = 0;
      di[0] = 0;

      #1;
      clk = 0;
      #1;
      clk = 1;
      rstn = 1;
      
      #1;
      clk = 0;
      #1;
      clk = 1;

      for (i=0;i<100;i++) begin
         td = 0;
         th = 0;
         tl = $urandom();
         /*
          ここはnon blocking代入でなければならない。
          こうすることで、このpositive clock edgeで同時に活性化する
          udiv32p2は、このxiとdiの変化をこの時点で見ずに、
          次のpositive clock edgeで見るようになる。
          */
         xi[0] <= {th,tl};
         di[0] <= td;
         val[0] <= 1;

         #1;
         clk = 0;
         #1;
         clk = 1;
      end

      for (i=0;i<1000;i++) begin
         for (j=1;j<K-7;j++) begin
            td = $urandom()>>j;
            th = (td==0)?('0):($urandom()%td);
            tl = $urandom();
            /*
             ここはnon blocking代入でなければならない。
             こうすることで、このpositive clock edgeで同時に活性化する
             udiv32p2は、このxiとdiの変化をこの時点で見ずに、
             次のpositive clock edgeで見るようになる。
             */
            xi[0] <= {th,tl};
            di[0] <= td;
            val[0] <= 1;

            #1;
            clk = 0;
            #1;
            clk = 1;
         end
      end

      $finish;
   end // initial begin

   always @(posedge clk) begin
      xi[NSTAGE:1] <= xi[NSTAGE-1:0];
      di[NSTAGE:1] <= di[NSTAGE-1:0];
      val[NSTAGE:1] <= val[NSTAGE-1:0];
      if (val[NSTAGE]) begin
         if (di[NSTAGE] != 0) begin
            if (q !== xi[NSTAGE]/di[NSTAGE])
              $display("q %d %d %d %d", xi[NSTAGE],di[NSTAGE],
                       q,xi[NSTAGE]/di[NSTAGE]);
            if (r !== xi[NSTAGE]%di[NSTAGE])
              $display("r %d %d %d %d", xi[NSTAGE],di[NSTAGE],
                       r,xi[NSTAGE]%di[NSTAGE]);
         end else begin
            if (q !== '1)
              $display("q %d %d %d %d", xi[NSTAGE],di[NSTAGE],
                       q,xi[NSTAGE]/di[NSTAGE]);
            if (r !== xi[NSTAGE])
              $display("r %d %d %d %d", xi[NSTAGE],di[NSTAGE],
                       r,xi[NSTAGE]%di[NSTAGE]);
         end
      end
   end
endmodule

`default_nettype wire
