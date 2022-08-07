/*
 *  Copyright (C) 2018  Siddharth J <www.siddharth.pro>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
`include "defines.v"

module gp_registers(clk,reset,in,load0,load1,load2,load3,out0,out1,out2,out3);
   
 input clk,reset;
 input [7:0] in;
 input load0,load1,load2,load3;
 
 output [7:0] out0,out1,out2,out3;
 
 reg [7:0] out0,out1,out2,out3;
 
 always @(posedge clk,posedge reset)
 begin
 if(reset) begin
 out0 <= 0;
 out1 <= 0;
 out2 <= 0;
 out3 <= 0;
 end
 else if(load0) begin
 out0 <= in;
 end
 else if(load1) begin
 out1 <= in;
 end
 else if(load2) begin
 out2 <= in;
 end
 else if(load3) begin
 out3 <= in;
 end
end

endmodule

