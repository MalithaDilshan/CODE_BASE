//implementation of the alu test bench

`include "ALU.sv"

module ALU_tb;


input_to_alu in;
logic c_out;
logic overflow;
logic zero;
data out;

reg clk;


ALU my_alu(.in(in), .out(out), .c_out(c_out), .overflow(overflow), .zero(zero));

always
begin
    #5 clk = ~ clk;
    assign in.clock = clk;
end


initial 
begin
    clk = 0;
    // check the functionality of the addition
    #5 assign in.value1.unsigned_data = 8'b10001010;
    assign in.value2.unsigned_data = 8'b01001010;
    assign in.my_operation = ADD;
    assign in.my_mode = UNSIGN;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    #20  assign in.value1.signed_data = 8'b10001010;
    assign in.value2.signed_data = 8'b01001010;
    assign in.my_operation = ADD;
    assign in.my_mode = SIGN;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 
    
    // check the functionality of the substraction
    #10  assign in.value1.unsigned_data = 8'b10001010;
    assign in.value2.unsigned_data = 8'b01001010;
    assign in.my_operation = SUB;
    assign in.my_mode = UNSIGN;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    #10  assign in.value1.signed_data = 8'b10001010;
    assign in.value2.signed_data = 8'b01001010;
    assign in.my_operation = SUB;
    assign in.my_mode = SIGN;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    // check the functionality of the multiplication
    #10  assign in.value1.unsigned_data = 8'b10101011;
    assign in.value2.unsigned_data = 8'b01011010;
    assign in.my_operation = MUL;
    assign in.my_mode = SIGN;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out);

     // check the functionality of the multiplication
    #10  assign in.value1.unsigned_data = 8'b10111111;
    assign in.value2.unsigned_data = 8'b01000010;
    assign in.my_operation = MUL;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    // ckeck the functionality of the division
    #10  assign in.value1.unsigned_data = 8'b10111111;
    assign in.value2.unsigned_data = 8'b01010010;
    assign in.my_mode = UNSIGN;
    assign in.my_operation = DIV;
    
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    // ckeck the functionality of the left shift operation
    #10  assign in.value1.unsigned_data = 8'b10100111;
    assign in.my_operation = LEFT_SHIFT;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 

    // ckeck the functionality of the right shift operation
    #10  assign in.value1.unsigned_data = 8'b10100111;
    assign in.my_operation = RIGHT_SHIFT;
    #12 $display("overflow %b, cout %b, out %b", overflow,c_out,out); 




    #100 $finish;

end



endmodule
