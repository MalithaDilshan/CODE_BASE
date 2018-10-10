//Implementation of the alu design
//Disign should support to perform sign and unsign arithmatics
//support to addition,substraction,multiplication,division,left and right shifting

//select the operation
typedef enum 
{
    ADD,
    SUB,
    MUL,
    DIV,
    LEFT_SHIFT,
    RIGHT_SHIFT

}alu_operation;

// select the mode
typedef enum 
{
    SIGN,
    UNSIGN

}operation_mode;

// define data
typedef union packed
{
    logic[7:0] unsigned_data;
    byte signed_data;

}data; 

//define all inputs
typedef struct 
{
    data value1;
    data value2;
    logic clock;
    alu_operation my_operation;
    operation_mode my_mode;

}input_to_alu;

module ALU(in,out,c_out,overflow,zero);

// define the ports
input input_to_alu in;

//result
output data out;

//flag values
output reg c_out;
output reg overflow;
output reg zero;

// find the overflow
reg [6:0] sign_addition_value1;
reg [6:0] sign_addition_value2;
reg [6:0] sign_addition_answer;
reg c_out_temp1;
reg c_out_temp2;
reg last_bit;

reg [7:0] temp_input;
reg [15:0] temp_for_mul;

always_ff @(posedge in.clock)
    case(in.my_operation)
    
    ADD:begin
        if(in.my_mode == UNSIGN)
            {c_out,out.unsigned_data} = in.value1.unsigned_data+in.value2.unsigned_data;
        else
            begin
                sign_addition_value1 = in.value1.signed_data[6:0];
                sign_addition_value2 = in.value2.signed_data[6:0];
                {c_out_temp1,sign_addition_answer} = sign_addition_value1 + sign_addition_value2;
                {c_out_temp2,last_bit} = c_out_temp1 + in.value1.signed_data[7] + in.value2.signed_data[7];

                overflow = c_out_temp1^c_out_temp2;     // use the xor logical operation to find the overflow
                out.signed_data = {last_bit,sign_addition_answer};   // concatenate to get the final signed result
                c_out = 1'bx;  // carry is indefined
               
            end

        end

    SUB:begin
        temp_input= (~in.value2.unsigned_data) + 1'b1;  // get the two's complement
        if(in.my_mode == UNSIGN)begin
             {c_out,out.unsigned_data} = in.value1.unsigned_data + temp_input;

        end
        else
            begin
                // same thing as above with the two's complement

                sign_addition_value1 = in.value1.signed_data[6:0];
                sign_addition_value2 = temp_input[6:0];
                {c_out_temp1,sign_addition_answer} = sign_addition_value1 + sign_addition_value2;
                {c_out_temp2,last_bit} = c_out_temp1 + in.value1.signed_data[7] + temp_input[7];

                overflow = c_out_temp1^c_out_temp2;     // use the xor logical operation to find the overflow
                out.signed_data = {last_bit,sign_addition_answer};   // concatenate to get the final signed result
                c_out = 1'bx;  // carry is indefined

            end
                
        end

    MUL:begin
        // here the result may be a 16 bit output. but this alu will only output 8 bit result ( first least significant bits)
        // hence we can not compair the output according to sign or unsign
        temp_for_mul = in.value1.unsigned_data * in.value2.unsigned_data;
        out.signed_data = temp_for_mul[7:0];

        // overflow and carry are undifine
        c_out = 1'bx;
        overflow = 1'bx;
        temp_for_mul = 16'b0;

        end

    DIV:begin
        // not consider about the decimal values
        // have to consider about the sign and unsign values
        
        c_out = 1'bx;
        overflow = 1'bx;

        temp_for_mul = in.value1.unsigned_data / in.value2.unsigned_data;
        if(in.my_mode == UNSIGN)begin
            out.unsigned_data = temp_for_mul[7:0];
        end

        else
            begin
                if(in.value1.signed_data[7] == in.value2.signed_data[7])
                    out.signed_data = {1'b0,temp_for_mul[6:0]};

                else
                    out.signed_data = {1'b1,temp_for_mul[6:0]};
            end
        
        temp_for_mul = 16'b0;

        
        end

    LEFT_SHIFT:begin
        // carry out and overflow is undefind
        c_out = 1'bx;
        overflow = 1'bx;

        temp_input = in.value1.unsigned_data;
        out.unsigned_data = temp_input << 1;

        end

    RIGHT_SHIFT:begin
        // carry out and overflow is undefind
        c_out = 1'bx;
        overflow = 1'bx;

        temp_input = in.value1.unsigned_data;
        out.unsigned_data = temp_input >> 1;

        end




    endcase


endmodule
    



