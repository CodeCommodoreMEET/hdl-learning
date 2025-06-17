module testbench;
reg x,y;
wire sum_gate,carry_gate;
wire sum_behav,carry_behav;
integer i;
//and here why sum_gate and sum_behav is becoz in their own individal verilog codes those sum and carry were independent but here inorder to avoid the future conflict we give specificity. and in instansitation we connect them.
//Instantiating gate level half adder
half_adder_gatelevel gate (.x(x),
.y(y),
.sum(sum_gate),
.carry(carry_gate));  
  /*here the instanciating syntax is:: module_name instance_name (
    .port_name_in_module (signal_in_testbench)
);
*/
half_adder_behavioural behav(.x(x),
.y(y),
.sum(sum_behav),
.carry(carry_behav));


initial begin 
    $dumpfile("half_adder.vcd");
    $dumpvars(0,testbench);

    for(i=0;i<=3;i=i+1)
    begin
        {x,y}=i[1:0];
        #10;
    end
    $finish;
end
    initial begin
        $monitor($time," x=%b,y=%b,sum_gate=%b,carry_gate=%b,sum_behav=%b,carry_behav=%b", x,y,sum_gate,carry_gate,sum_behav,carry_behav);
    end

endmodule

