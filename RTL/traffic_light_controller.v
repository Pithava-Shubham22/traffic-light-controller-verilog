module traffic_light_controller(
    input ena,clk,reset,
    output o_green_A,o_green_B,o_yellow_A,o_yellow_B,o_red_A,o_red_B
);
reg [5:0] timer;


reg [1:0]state,next_state;
localparam green_timer=30,yellow_timer=5;
localparam green_A=2'b00,yellow_A=2'b01,green_B=2'b10,yellow_B=2'b11;
always@(*)
begin
    next_state=state;
    case(state)
    green_A:
    begin
        if(timer==green_timer-1)
        begin
            next_state=yellow_A;
        end
    end
    yellow_A:
    begin
      if(timer==yellow_timer-1)
      begin
        next_state=green_B;
      end
    end
    green_B:
    begin
        if(timer==green_timer-1)
        begin
            next_state=yellow_B;
        end
    end
    yellow_B:
    begin
      if(timer==yellow_timer-1)
      begin
        next_state=green_A;
      end
    end
    default: next_state=green_A;
    endcase
end

always@(posedge clk)
begin
    if(reset)
    begin
        timer<=0;
    end
    else if(ena)
    begin
        if(state!=next_state)
        begin
        timer<=0;
        end
        else
        begin
            timer<=timer+1;
        end
    end
    else if(!ena)
    begin
        timer<=timer;
    end
end


always@(posedge clk)
begin
    if(reset)
    begin
        state<=green_A;
    end
    else if(ena)
    begin
        state<=next_state;
    end
end

assign o_red_A=(state==green_B || state==yellow_B);
assign o_red_B=(state==green_A || state==yellow_A);
assign o_yellow_A=(state==yellow_A);
assign o_yellow_B=(state==yellow_B);
assign o_green_A=(state==green_A);
assign o_green_B=(state==green_B);

endmodule 
