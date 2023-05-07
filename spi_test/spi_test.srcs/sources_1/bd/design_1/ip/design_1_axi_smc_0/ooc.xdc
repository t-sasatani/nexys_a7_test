# aclk {FREQ_HZ 200000000 CLK_DOMAIN design_1_mig_7series_0_1_ui_clk PHASE 0} aclk1 {FREQ_HZ 81247969 CLK_DOMAIN design_1_mig_7series_0_1_ui_clk PHASE 0}
# Clock Domain: design_1_mig_7series_0_1_ui_clk
create_clock -name aclk -period 5.000 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -multiply_by 81247969 -divide_by 200000000 [get_ports aclk1]
