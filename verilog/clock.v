reg[1:0] flag_spur;
reg	scl_temp;
reg  is_spur;
reg spur;
reg[] spur_delay;
reg[] spur_cycle;
reg[3:0] count1;
always @ ( posedge Dut_clk)begin
	if(count==500) begin
		clk_temp<=~clk_temp;
		count<=8'h1;
		end
	else
		count<=count+1;
	end
end
//spur
always @ ( postdge clk_temp)begin
	if(count1%5)begin
		flag_spur<=flag_spur+1;
		is_spur<=1'b1;
			if(flag_spur==2)begin
				count1<=1;
				flag_spur<=0;end
			else
				flag_spur<=flag_spur+1;
			end
		end
	else begin
		count1<=count1+1;
		is_spur<=1'b0;
		end
	end
end
always @ (postdge Dut_clk)begin
	if(is_spur)begin
		case(flag_spur)
		2'b00:spur_cycle<=1us;//自己修改相应的数
		2'b01:spur_cycle<=2us;//自己修改相应的数
		2'b10:spur_cycle<=3us;//自己修改相应的数
		default:spur_cycle<=1us;;
		endcase
		if(spur_delay==spur_cycle)
			begin
				spur<=~spur;
				spur_delay<=1;
				end
			else
				begin
				spur<=spur;
				spur_delay<=spur_delay+1;
				end
			end
		end
	else
		spur<=1;
	end
end
///////////////////////////////////////
scl=scl_temp and spur;

	
		