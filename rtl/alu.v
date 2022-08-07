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

module ALU (alu_in1,alu_in2,opcode,zero,alu_out);

 input [7:0] alu_in1,alu_in2;
 input [3:0] opcode;
 
 output zero;
 output [7:0] alu_out;
 
 reg [7:0] alu_out;
 
 assign zero = ~|(alu_out);
 
 always @(*)
 begin
 case(opcode)
`NOP: alu_out = 0; //No operation
`ADD: alu_out = alu_in1 + alu_in2;
`SUB: alu_out = alu_in1 - alu_in2; 
`AND: alu_out = alu_in1 & alu_in2;
`NOT: alu_out = ~alu_in1;
 default: alu_out = 0;
 endcase
 end

endmodule
