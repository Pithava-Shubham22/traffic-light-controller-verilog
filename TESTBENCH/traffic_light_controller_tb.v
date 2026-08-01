module testbench();
reg clk,reset,ena;
wire o_green_A,o_green_B,o_yellow_A,o_yellow_B,o_red_A,o_red_B;
integer total_count,pass_count,fail_count;
reg [5:0]expected_out;

traffic_light_controller v1(.ena(ena),
.reset(reset),
.clk(clk),
.o_green_A(o_green_A),
.o_green_B(o_green_B),
.o_yellow_A(o_yellow_A),
.o_yellow_B(o_yellow_B),
.o_red_A(o_red_A),
.o_red_B(o_red_B)
);

//// clock 
initial
begin
    clk=0;
end
always #5 clk=~clk;

//// dumpfile and dumpvars

initial begin
    $dumpfile("traffic_light_controller.vcd");
    $dumpvars(0,testbench);
end

//// for monitoring values
initial begin
    $monitor(" time=%0t |  clk=%b |ena=%b | reset=%b |o_green_A=%b | o_green_B=%b | o_yellow_A=%b | o_yellow_B=%b | o_red_A=%b | o_red_B=%b",$time,clk,ena,reset,o_green_A,o_green_B,o_yellow_A,o_yellow_B,o_red_A,o_red_B);
end

/// self checking values intializing 
initial
begin
total_count=0;
pass_count=0;
fail_count=0;
end

//// self checking task
task result;
input [5:0]expected_out;
input integer c;
begin
    total_count=total_count+1;
    if(expected_out==={o_green_A,o_green_B,o_yellow_A,o_yellow_B,o_red_A,o_red_B})
    begin
        pass_count=pass_count+1;
    end
    else
    begin
        fail_count=fail_count+1;
        $display(" TEST CASE-%D ",c);
    end
end
endtask 

//// reset task 

task reset_out;
begin
    reset=1;
    ena=0;
    repeat(2)
    begin
        @(posedge clk);
    end

    reset=0;
    @(posedge clk);
end
endtask 

//// enable task 



//// VERIFY STATE
task verify_state;
input [50:0] state_name;
input [5:0]expected_out;
input integer  duration ;
input integer testcase;


integer i;
begin
    for(i=0;i<duration;i=i+1)
    begin
        @(posedge clk);
        
        result(expected_out,testcase);
    end
    $display("--------------------------------");
    $display("STATE    = %s", state_name);
    $display("CLOCK NO = %0d", i);
    $display("TIME     = %0t", $time);
    $display("EXPECTED = %b", expected_out);
    $display("ACTUAL   = %b",
        {o_green_A,o_green_B,o_yellow_A,o_yellow_B,o_red_A,o_red_B});
end
endtask 

//// MAIN STIMULUS
initial
begin
    reset_out();

    ena=1;

    verify_state("GREEN_A",6'b100001,30,1);

    verify_state(" YELLOW_A",6'b001001,4,2);

    @(posedge clk); // synchroniZATION STATe

    verify_state(" GREEN_B ",6'b010010,30,4);

    verify_state(" YELLOW_B ",6'b000110,4,5);

    

    reset_out();

    $display("\n*******************************");
    $display(" VERIFICATION SUMMARY ");
    $display("**********************************");
    $display(" TOTAL_COUNT=%d ",total_count);
    $display(" PASS_COUNT=%d ",pass_count);
    $display(" FAIL_COUNT=%d ",fail_count);

    if(fail_count==0)
    begin
        $display(" VERIFICATION SUMMARY ");
    end
    else
    begin
        $display(" FAILED ");
    end

    #20;
    $finish;
end

endmodule 