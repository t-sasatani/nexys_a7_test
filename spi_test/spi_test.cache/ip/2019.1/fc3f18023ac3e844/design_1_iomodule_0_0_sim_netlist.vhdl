-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May  6 02:33:24 2023
-- Host        : DESKTOP-1P4LGSG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iomodule_0_0_sim_netlist.vhdl
-- Design      : design_1_iomodule_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE is
  port (
    tx_Data_Enable : out STD_LOGIC;
    p_3_out : out STD_LOGIC;
    p_7_out : out STD_LOGIC;
    \TMR_No.tx_DataBits_reg\ : out STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    div16 : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_Start : in STD_LOGIC;
    tx_DataBits : in STD_LOGIC;
    tx_data_transmitted : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE is
  signal \^tx_data_enable\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TMR_No.tx_DataBits_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \TMR_No.tx_Start_i_1\ : label is "soft_lutpair7";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  tx_Data_Enable <= \^tx_data_enable\;
\TMR_No.data_is_sent_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Q(0),
      I1 => \^tx_data_enable\,
      I2 => Q(2),
      I3 => Q(1),
      O => p_3_out
    );
\TMR_No.tx_DataBits_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \^tx_data_enable\,
      I1 => tx_Start,
      I2 => tx_DataBits,
      I3 => tx_data_transmitted,
      O => p_7_out
    );
\TMR_No.tx_Start_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => tx_DataBits,
      I1 => \^tx_data_enable\,
      I2 => \out\,
      I3 => tx_Start,
      O => \TMR_No.tx_DataBits_reg\
    );
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => div16,
      Q => \^tx_data_enable\,
      R => \^tx_data_enable\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9 is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\,
      Q => in0(0),
      R => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mid_Start_Bit : in STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => Clk,
      CE => en_16x_baud,
      D => D_0,
      Q => in0(0),
      S => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY is
  port (
    cnt_cy_2 : out STD_LOGIC;
    LI : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_cy_1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY is
  signal \^cnt_cy_2\ : STD_LOGIC;
begin
  \^cnt_cy_2\ <= lopt;
  cnt_cy_2 <= \^cnt_cy_2\;
\Using_FPGA.Native_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1 is
  port (
    cnt_cy_1 : out STD_LOGIC;
    \TMR_No.Counter[2].h_Cnt_reg\ : out STD_LOGIC;
    CI : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_DataBits : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1 : entity is "MB_MUXCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1 is
  signal \^ci\ : STD_LOGIC;
  signal \^tmr_no.counter[2].h_cnt_reg\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_FPGA.Native_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native_CARRY4\ : label is "LO:O";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native_CARRY4\ : label is "PRIMITIVE";
begin
  CI <= \^ci\;
  \TMR_No.Counter[2].h_Cnt_reg\ <= \^tmr_no.counter[2].h_cnt_reg\;
  \^lopt_2\ <= lopt_1;
  \^lopt_3\ <= lopt_2;
  lopt <= \^lopt_1\;
  lopt_3 <= \^lopt_4\;
  lopt_5 <= lopt_4;
\Using_FPGA.Native_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^lopt_1\,
      CO(0) => cnt_cy_1,
      CYINIT => \^ci\,
      DI(3 downto 2) => \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \^lopt_2\,
      DI(0) => Q(0),
      O(3) => \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\(3),
      O(2) => \^lopt_4\,
      O(1 downto 0) => \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\(3),
      S(2) => lopt_5,
      S(1) => \^lopt_3\,
      S(0) => \^tmr_no.counter[2].h_cnt_reg\
    );
\Using_FPGA.Native_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \^tmr_no.counter[2].h_cnt_reg\
    );
\Using_FPGA.Native_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_DataBits,
      O => \^ci\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5 is
  port (
    mux_0123 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5 is
  signal I0 : STD_LOGIC;
  signal I1 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native\ : label is "S:I2";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_2\ : label is "soft_lutpair8";
begin
\Using_FPGA.Native\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => Q(1),
      O => mux_0123
    );
\Using_FPGA.Native_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Using_FPGA.Native_0\(2),
      I1 => Q(0),
      I2 => \Using_FPGA.Native_0\(3),
      O => I0
    );
\Using_FPGA.Native_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Using_FPGA.Native_0\(0),
      I1 => Q(0),
      I2 => \Using_FPGA.Native_0\(1),
      O => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3 is
  port (
    mux_4567 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3 : entity is "MB_MUXF5";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3 is
  signal \Using_FPGA.Native_i_1__2_n_0\ : STD_LOGIC;
  signal \Using_FPGA.Native_i_2__0_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native\ : label is "S:I2";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_2__0\ : label is "soft_lutpair9";
begin
\Using_FPGA.Native\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \Using_FPGA.Native_i_1__2_n_0\,
      I1 => \Using_FPGA.Native_i_2__0_n_0\,
      I2 => Q(1),
      O => mux_4567
    );
\Using_FPGA.Native_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Using_FPGA.Native_0\(2),
      I1 => Q(0),
      I2 => \Using_FPGA.Native_0\(3),
      O => \Using_FPGA.Native_i_1__2_n_0\
    );
\Using_FPGA.Native_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Using_FPGA.Native_0\(0),
      I1 => Q(0),
      I2 => \Using_FPGA.Native_0\(1),
      O => \Using_FPGA.Native_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6 is
  port (
    mux_Out : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux_0123 : in STD_LOGIC;
    mux_4567 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6 is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native\ : label is "MUXF6";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native\ : label is "S:I2";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => mux_0123,
      I1 => mux_4567,
      I2 => Q(0),
      O => mux_Out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_cy_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TMR_No.Counter[0].h_Cnt_reg\ : STD_LOGIC;
begin
  D(0) <= \^d\(0);
  \^d\(0) <= lopt;
  lopt_1 <= \TMR_No.Counter[0].h_Cnt_reg\;
\Using_FPGA.Native_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \TMR_No.Counter[0].h_Cnt_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    LI : in STD_LOGIC;
    cnt_cy_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0 : entity is "MB_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0 is
  signal \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_FPGA.Native_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native_CARRY4\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => cnt_cy_1,
      DI(3 downto 0) => \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => D(0),
      S(3 downto 1) => \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \TMR_No.Counter[2].h_Cnt_reg\ : in STD_LOGIC;
    CI : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2 : entity is "MB_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2 is
  signal \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_FPGA.Native_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native_CARRY4\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => \NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => CI,
      DI(3 downto 0) => \NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => D(0),
      S(3 downto 1) => \NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \TMR_No.Counter[2].h_Cnt_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART_Interrupt : out STD_LOGIC;
    \UART_Status_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Rst : in STD_LOGIC;
    \TMR_No.overrun_error_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    \TMR_No.frame_error_reg_0\ : in STD_LOGIC;
    \UART_Status_reg[6]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    tx_data_transmitted : in STD_LOGIC;
    \UART_Status_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \TMR_No.error_interrupt_reg_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TMR_No.error_interrupt_i_1_n_0\ : STD_LOGIC;
  signal UART_Error_Interrupt : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TMR_No.error_interrupt_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of UART_Interrupt_INST_0 : label is "soft_lutpair0";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  SR(0) <= \^sr\(0);
\TMR_No.error_interrupt_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \TMR_No.error_interrupt_reg_0\,
      I1 => \out\,
      I2 => \UART_Status_reg[3]_0\(0),
      O => \TMR_No.error_interrupt_i_1_n_0\
    );
\TMR_No.error_interrupt_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.error_interrupt_i_1_n_0\,
      Q => UART_Error_Interrupt,
      R => Rst
    );
\TMR_No.frame_error_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.frame_error_reg_0\,
      Q => \^d\(1),
      R => Rst
    );
\TMR_No.overrun_error_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.overrun_error_reg_0\,
      Q => \^d\(0),
      R => Rst
    );
UART_Interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => UART_Error_Interrupt,
      I1 => \out\,
      I2 => tx_data_transmitted,
      O => UART_Interrupt
    );
\UART_Status[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \UART_Status_reg[6]_1\,
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => \^sr\(0)
    );
\UART_Status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \UART_Status_reg[3]_0\(0),
      Q => \UART_Status_reg[6]_0\(0),
      R => \^sr\(0)
    );
\UART_Status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \UART_Status_reg[3]_0\(1),
      Q => \UART_Status_reg[6]_0\(1),
      R => \^sr\(0)
    );
\UART_Status_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^d\(0),
      Q => \UART_Status_reg[6]_0\(2),
      R => \^sr\(0)
    );
\UART_Status_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^d\(1),
      Q => \UART_Status_reg[6]_0\(3),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E is
  port (
    div16 : out STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E is
  signal \^div16\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART_TX.UART_TX_I1/TMR_No.DIV16_SRL16E/Use_unisim.XIL_SRL16E_I1 ";
begin
  div16 <= \^div16\;
\Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => en_16x_baud,
      CLK => Clk,
      D => \^div16\,
      Q => \^div16\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13 is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_2 : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13 : entity is "XIL_SRL16E";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13 is
  signal \^loop_bit\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[2].Divide_I/One_SRL16.SRL16E_I/Use_unisim.XIL_SRL16E_I1 ";
begin
  loop_Bit <= \^loop_bit\;
\Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => Clk_En_I_2,
      CLK => Clk,
      D => \^loop_bit\,
      Q => \^loop_bit\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14 is
  port (
    Clk_En_I_2 : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14 : entity is "XIL_SRL16E";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14 is
  signal \^clk_en_i_2\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[1].Divide_I/One_SRL16.SRL16E_I/Use_unisim.XIL_SRL16E_I1 ";
begin
  Clk_En_I_2 <= \^clk_en_i_2\;
\Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => Clk,
      D => \^clk_en_i_2\,
      Q => \^clk_en_i_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1\ is
  port (
    sample_Point : out STD_LOGIC;
    \Using_FPGA.Native\ : out STD_LOGIC;
    \TMR_No.stop_Bit_Position_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\ : out STD_LOGIC;
    \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    Clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \TMR_No.stop_Bit_Position_reg_0\ : in STD_LOGIC;
    \TMR_No.running_reg\ : in STD_LOGIC;
    \TMR_No.running_reg_0\ : in STD_LOGIC;
    mid_Start_Bit : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1\ : entity is "XIL_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1\ is
  signal \Use_unisim.XIL_SRL16E_I1_i_1_n_0\ : STD_LOGIC;
  signal \^sample_point\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TMR_No.stop_Bit_Position_i_1\ : label is "soft_lutpair1";
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART_RX.UART_RX_I1/TMR_No.Delay_16/Use_unisim.XIL_SRL16E_I1 ";
  attribute SOFT_HLUTNM of \Use_unisim.XIL_SRL16E_I1_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__9\ : label is "soft_lutpair4";
begin
  sample_Point <= \^sample_point\;
\TMR_No.running_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFF000"
    )
        port map (
      I0 => \^sample_point\,
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \TMR_No.running_reg\,
      I3 => en_16x_baud,
      I4 => \TMR_No.running_reg_0\,
      O => \TMR_No.stop_Bit_Position_reg\
    );
\TMR_No.stop_Bit_Position_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CCC"
    )
        port map (
      I0 => \out\(0),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => en_16x_baud,
      O => \Using_FPGA.Native\
    );
\Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => en_16x_baud,
      CLK => Clk,
      D => \Use_unisim.XIL_SRL16E_I1_i_1_n_0\,
      Q => \^sample_point\
    );
\Use_unisim.XIL_SRL16E_I1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^sample_point\,
      I1 => mid_Start_Bit,
      I2 => \TMR_No.stop_Bit_Position_reg_0\,
      O => \Use_unisim.XIL_SRL16E_I1_i_1_n_0\
    );
\Using_FPGA.Native_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(6),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(7),
      O => \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(7),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(8),
      O => D_0
    );
\Using_FPGA.Native_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(0),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(1),
      O => \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(1),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(2),
      O => \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(2),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(3),
      O => \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(3),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(4),
      O => \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(4),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(5),
      O => \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\
    );
\Using_FPGA.Native_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(5),
      I1 => \TMR_No.stop_Bit_Position_reg_0\,
      I2 => \^sample_point\,
      I3 => \out\(6),
      O => \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11\ is
  port (
    mid_Start_Bit : out STD_LOGIC;
    en_16x_baud : in STD_LOGIC;
    \Using_FPGA.Native\ : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11\ : entity is "XIL_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART_RX.UART_RX_I1/TMR_No.Mid_Start_Bit_SRL16/Use_unisim.XIL_SRL16E_I1 ";
begin
\Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => en_16x_baud,
      CLK => Clk,
      D => \Using_FPGA.Native\,
      Q => mid_Start_Bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12\ is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    Clk : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12\ : entity is "XIL_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12\ is
  signal \NLW_Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1\ : label is "MLO";
  attribute box_type : string;
  attribute box_type of \Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1\ : label is "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[3].Divide_I/Two_SRL16.SRL16E_2/Use_unisim.XIL_SRL16E_I1 ";
begin
\Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => Clk_En_I_1,
      CLK => Clk,
      D => lopt,
      Q => loop_Bit,
      Q31 => \NLW_Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E is
  port (
    shift : out STD_LOGIC;
    Clk_En_I_1 : in STD_LOGIC;
    loop_Bit : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E is
begin
  shift <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part is
  port (
    Clk_En_I_2 : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part is
begin
\One_SRL16.SRL16E_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14
     port map (
      Clk => Clk,
      Clk_En_I_2 => Clk_En_I_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0\ is
  port (
    Clk_En_I_1 : out STD_LOGIC;
    Clk_En_I_2 : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0\ : entity is "Divide_part";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0\ is
  signal Out1 : STD_LOGIC;
  signal loop_Bit : STD_LOGIC;
begin
\One_SRL16.SRL16E_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13
     port map (
      Clk => Clk,
      Clk_En_I_2 => Clk_En_I_2,
      loop_Bit => loop_Bit
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Out1,
      D => Clk_En_I_2,
      Q => Clk_En_I_1,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => loop_Bit,
      Q => Out1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1\ is
  port (
    en_16x_baud : out STD_LOGIC;
    Clk_En_I_1 : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1\ : entity is "Divide_part";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1\ is
  signal \^en_16x_baud\ : STD_LOGIC;
  signal loop_Bit : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1_n_0\ : STD_LOGIC;
  signal \not_First.Out1_reg_n_0\ : STD_LOGIC;
  signal shift : STD_LOGIC;
begin
  en_16x_baud <= \^en_16x_baud\;
\Two_SRL16.SRL16E_2\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12\
     port map (
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      loop_Bit => loop_Bit,
      lopt => loop_Bit,
      shift => shift
    );
\Two_SRL16.SRLC16E_1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E
     port map (
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      loop_Bit => loop_Bit,
      shift => shift
    );
\not_First.Clk_En_Out_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Clk_En_I_1,
      I1 => \not_First.Out1_reg_n_0\,
      I2 => \^en_16x_baud\,
      O => \not_First.Clk_En_Out_i_i_1_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1_n_0\,
      Q => \^en_16x_baud\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => loop_Bit,
      Q => \not_First.Out1_reg_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive is
  port (
    \out\ : out STD_LOGIC;
    \not_First.Clk_En_Out_i_reg\ : out STD_LOGIC;
    \TMR_No.rx_data_exists_i_reg_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \TMR_No.new_rx_data_write_reg_0\ : out STD_LOGIC;
    \TMR_No.frame_error_reg\ : out STD_LOGIC;
    \TMR_No.RX_Data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    en_16x_baud : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    \TMR_No.RX_Data_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive is
  signal D_0 : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\ : STD_LOGIC;
  signal \TMR_No.Delay_16_n_1\ : STD_LOGIC;
  signal \TMR_No.Delay_16_n_2\ : STD_LOGIC;
  signal \TMR_No.previous_RX_i_1_n_0\ : STD_LOGIC;
  signal \TMR_No.running_reg_n_0\ : STD_LOGIC;
  signal \TMR_No.rx_data_exists_i_i_1_n_0\ : STD_LOGIC;
  signal \^tmr_no.rx_data_exists_i_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TMR_No.start_Edge_Detected_i_1_n_0\ : STD_LOGIC;
  signal \TMR_No.start_Edge_Detected_reg_n_0\ : STD_LOGIC;
  signal \TMR_No.stop_Bit_Position_reg_n_0\ : STD_LOGIC;
  signal mid_Start_Bit : STD_LOGIC;
  signal new_rx_data : STD_LOGIC_VECTOR ( 0 to 8 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of new_rx_data : signal is "true";
  signal new_rx_data_write : STD_LOGIC;
  attribute RTL_KEEP of new_rx_data_write : signal is "true";
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_4_out__0\ : STD_LOGIC;
  signal previous_RX : STD_LOGIC;
  signal rx_1 : STD_LOGIC;
  signal rx_data_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_frame_error_i : STD_LOGIC;
  attribute RTL_KEEP of rx_frame_error_i : signal is "true";
  signal rx_parity_error_i : STD_LOGIC;
  attribute RTL_KEEP of rx_parity_error_i : signal is "true";
  signal sample_Point : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \TMR_No.new_rx_data_write_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \TMR_No.new_rx_data_write_reg\ : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TMR_No.previous_RX_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \TMR_No.start_Edge_Detected_i_1\ : label is "soft_lutpair6";
begin
  \TMR_No.rx_data_exists_i_reg_0\(0) <= \^tmr_no.rx_data_exists_i_reg_0\(0);
  \not_First.Clk_En_Out_i_reg\ <= rx_frame_error_i;
  \out\ <= new_rx_data_write;
\TMR_No.Convert_Serial_To_Parallel[1].First_Bit.First_Bit_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE
     port map (
      Clk => Clk,
      D_0 => D_0,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(1),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[2].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(2),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[3].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(3),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[4].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(4),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[5].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(5),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[6].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(6),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[7].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(7),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Convert_Serial_To_Parallel[8].Rest_Bits.Others_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10
     port map (
      Clk => Clk,
      \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\,
      en_16x_baud => en_16x_baud,
      in0(0) => new_rx_data(8),
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.Delay_16\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1\
     port map (
      Clk => Clk,
      D_0 => D_0,
      \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg\,
      \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\ => \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg\,
      \TMR_No.running_reg\ => \TMR_No.start_Edge_Detected_reg_n_0\,
      \TMR_No.running_reg_0\ => \TMR_No.running_reg_n_0\,
      \TMR_No.stop_Bit_Position_reg\ => \TMR_No.Delay_16_n_2\,
      \TMR_No.stop_Bit_Position_reg_0\ => \TMR_No.stop_Bit_Position_reg_n_0\,
      \Using_FPGA.Native\ => \TMR_No.Delay_16_n_1\,
      en_16x_baud => en_16x_baud,
      mid_Start_Bit => mid_Start_Bit,
      \out\(8) => new_rx_data(0),
      \out\(7) => new_rx_data(1),
      \out\(6) => new_rx_data(2),
      \out\(5) => new_rx_data(3),
      \out\(4) => new_rx_data(4),
      \out\(3) => new_rx_data(5),
      \out\(2) => new_rx_data(6),
      \out\(1) => new_rx_data(7),
      \out\(0) => new_rx_data(8),
      sample_Point => sample_Point
    );
\TMR_No.Mid_Start_Bit_SRL16\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11\
     port map (
      Clk => Clk,
      \Using_FPGA.Native\ => \TMR_No.start_Edge_Detected_reg_n_0\,
      en_16x_baud => en_16x_baud,
      mid_Start_Bit => mid_Start_Bit
    );
\TMR_No.RX_Data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \TMR_No.RX_Data_reg[0]_0\,
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(0),
      Q => \TMR_No.RX_Data_reg[7]_0\(0),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(1),
      Q => \TMR_No.RX_Data_reg[7]_0\(1),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(2),
      Q => \TMR_No.RX_Data_reg[7]_0\(2),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(3),
      Q => \TMR_No.RX_Data_reg[7]_0\(3),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(4),
      Q => \TMR_No.RX_Data_reg[7]_0\(4),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(5),
      Q => \TMR_No.RX_Data_reg[7]_0\(5),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(6),
      Q => \TMR_No.RX_Data_reg[7]_0\(6),
      R => \p_0_in__0\
    );
\TMR_No.RX_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_data_i(7),
      Q => \TMR_No.RX_Data_reg[7]_0\(7),
      R => \p_0_in__0\
    );
\TMR_No.frame_error_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rx_frame_error_i,
      I1 => SR(0),
      I2 => D(1),
      O => \TMR_No.frame_error_reg\
    );
\TMR_No.new_rx_data_write_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \p_4_out__0\,
      Q => new_rx_data_write,
      R => Rst
    );
\TMR_No.overrun_error_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => new_rx_data_write,
      I1 => \^tmr_no.rx_data_exists_i_reg_0\(0),
      I2 => SR(0),
      I3 => D(0),
      O => \TMR_No.new_rx_data_write_reg_0\
    );
\TMR_No.previous_RX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => new_rx_data(0),
      I1 => en_16x_baud,
      I2 => previous_RX,
      O => \TMR_No.previous_RX_i_1_n_0\
    );
\TMR_No.previous_RX_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.previous_RX_i_1_n_0\,
      Q => previous_RX,
      R => Rst
    );
\TMR_No.running_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.Delay_16_n_2\,
      Q => \TMR_No.running_reg_n_0\,
      R => Rst
    );
\TMR_No.rx_1_reg\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => '1',
      D => UART_Rx,
      Q => rx_1,
      S => Rst
    );
\TMR_No.rx_2_reg\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => '1',
      D => rx_1,
      Q => new_rx_data(0),
      S => Rst
    );
\TMR_No.rx_data_exists_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => new_rx_data_write,
      I2 => \^tmr_no.rx_data_exists_i_reg_0\(0),
      I3 => Rst,
      O => \TMR_No.rx_data_exists_i_i_1_n_0\
    );
\TMR_No.rx_data_exists_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.rx_data_exists_i_i_1_n_0\,
      Q => \^tmr_no.rx_data_exists_i_reg_0\(0),
      R => '0'
    );
\TMR_No.rx_data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(8),
      Q => rx_data_i(0),
      R => Rst
    );
\TMR_No.rx_data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(7),
      Q => rx_data_i(1),
      R => Rst
    );
\TMR_No.rx_data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(6),
      Q => rx_data_i(2),
      R => Rst
    );
\TMR_No.rx_data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(5),
      Q => rx_data_i(3),
      R => Rst
    );
\TMR_No.rx_data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(4),
      Q => rx_data_i(4),
      R => Rst
    );
\TMR_No.rx_data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(3),
      Q => rx_data_i(5),
      R => Rst
    );
\TMR_No.rx_data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(2),
      Q => rx_data_i(6),
      R => Rst
    );
\TMR_No.rx_data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => new_rx_data_write,
      D => new_rx_data(1),
      Q => rx_data_i(7),
      R => Rst
    );
\TMR_No.start_Edge_Detected_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => previous_RX,
      I1 => new_rx_data(0),
      I2 => \TMR_No.running_reg_n_0\,
      I3 => en_16x_baud,
      I4 => \TMR_No.start_Edge_Detected_reg_n_0\,
      O => \TMR_No.start_Edge_Detected_i_1_n_0\
    );
\TMR_No.start_Edge_Detected_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.start_Edge_Detected_i_1_n_0\,
      Q => \TMR_No.start_Edge_Detected_reg_n_0\,
      R => Rst
    );
\TMR_No.stop_Bit_Position_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.Delay_16_n_1\,
      Q => \TMR_No.stop_Bit_Position_reg_n_0\,
      R => Rst
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rx_parity_error_i
    );
in00: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => en_16x_baud,
      I1 => sample_Point,
      I2 => \TMR_No.stop_Bit_Position_reg_n_0\,
      I3 => new_rx_data(0),
      O => rx_frame_error_i
    );
p_4_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \TMR_No.stop_Bit_Position_reg_n_0\,
      I1 => sample_Point,
      I2 => new_rx_data(0),
      I3 => en_16x_baud,
      O => \p_4_out__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit is
  port (
    UART_Tx : out STD_LOGIC;
    tx_data_transmitted : out STD_LOGIC;
    \TMR_No.tx_buffer_empty_i_reg_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_16x_baud : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \TMR_No.Counter[2].h_Cnt_reg\ : STD_LOGIC;
  signal \TMR_No.FDRE_I_n_3\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[1]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[2]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[3]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[4]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[5]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[6]\ : STD_LOGIC;
  signal \TMR_No.fifo_DOut_reg_n_0_[7]\ : STD_LOGIC;
  signal \TMR_No.mux_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \TMR_No.mux_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal \TMR_No.tx_buffer_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \TMR_No.tx_i_i_1_n_0\ : STD_LOGIC;
  signal cnt_cy_1 : STD_LOGIC;
  signal cnt_cy_2 : STD_LOGIC;
  signal div16 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal mux_0123 : STD_LOGIC;
  signal mux_4567 : STD_LOGIC;
  signal mux_Out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal serial_Data : STD_LOGIC;
  signal sum_cnt : STD_LOGIC_VECTOR ( 0 to 2 );
  signal tx_DataBits : STD_LOGIC;
  signal tx_Data_Enable : STD_LOGIC;
  signal tx_Start : STD_LOGIC;
  signal tx_buffer_empty_i : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of tx_buffer_empty_i : signal is "true";
  signal \^tx_data_transmitted\ : STD_LOGIC;
  signal tx_i : STD_LOGIC;
  attribute RTL_KEEP of tx_i : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \TMR_No.tx_buffer_empty_i_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \TMR_No.tx_buffer_empty_i_reg\ : label is "no";
  attribute KEEP of \TMR_No.tx_i_reg\ : label is "yes";
  attribute equivalent_register_removal of \TMR_No.tx_i_reg\ : label is "no";
begin
  UART_Tx <= tx_i;
  tx_data_transmitted <= \^tx_data_transmitted\;
\TMR_No.Counter[0].XORCY_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY
     port map (
      D(0) => sum_cnt(0),
      Q(0) => \TMR_No.mux_sel_reg_n_0_[0]\,
      cnt_cy_2 => cnt_cy_2,
      lopt => lopt_1,
      lopt_1 => lopt_2
    );
\TMR_No.Counter[1].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY
     port map (
      LI => LI,
      Q(0) => S,
      cnt_cy_1 => cnt_cy_1,
      cnt_cy_2 => cnt_cy_2,
      lopt => lopt
    );
\TMR_No.Counter[1].XORCY_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0
     port map (
      D(0) => sum_cnt(1),
      LI => LI,
      cnt_cy_1 => cnt_cy_1
    );
\TMR_No.Counter[2].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1
     port map (
      CI => CI,
      Q(0) => \TMR_No.mux_sel_reg_n_0_[2]\,
      \TMR_No.Counter[2].h_Cnt_reg\ => \TMR_No.Counter[2].h_Cnt_reg\,
      cnt_cy_1 => cnt_cy_1,
      lopt => lopt,
      lopt_1 => S,
      lopt_2 => LI,
      lopt_3 => lopt_1,
      lopt_4 => lopt_2,
      tx_DataBits => tx_DataBits
    );
\TMR_No.Counter[2].XORCY_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2
     port map (
      CI => CI,
      D(0) => sum_cnt(2),
      \TMR_No.Counter[2].h_Cnt_reg\ => \TMR_No.Counter[2].h_Cnt_reg\
    );
\TMR_No.DIV16_SRL16E\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E
     port map (
      Clk => Clk,
      div16 => div16,
      en_16x_baud => en_16x_baud
    );
\TMR_No.FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE
     port map (
      Clk => Clk,
      Q(2) => \TMR_No.mux_sel_reg_n_0_[0]\,
      Q(1) => S,
      Q(0) => \TMR_No.mux_sel_reg_n_0_[2]\,
      \TMR_No.tx_DataBits_reg\ => \TMR_No.FDRE_I_n_3\,
      div16 => div16,
      en_16x_baud => en_16x_baud,
      \out\ => tx_buffer_empty_i,
      p_3_out => p_3_out,
      p_7_out => p_7_out,
      tx_DataBits => tx_DataBits,
      tx_Data_Enable => tx_Data_Enable,
      tx_Start => tx_Start,
      tx_data_transmitted => \^tx_data_transmitted\
    );
\TMR_No.MUXF6_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6
     port map (
      Q(0) => \TMR_No.mux_sel_reg_n_0_[0]\,
      mux_0123 => mux_0123,
      mux_4567 => mux_4567,
      mux_Out => mux_Out
    );
\TMR_No.MUX_F5_1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5
     port map (
      Q(1) => S,
      Q(0) => \TMR_No.mux_sel_reg_n_0_[2]\,
      \Using_FPGA.Native_0\(3) => p_0_in,
      \Using_FPGA.Native_0\(2) => \TMR_No.fifo_DOut_reg_n_0_[1]\,
      \Using_FPGA.Native_0\(1) => \TMR_No.fifo_DOut_reg_n_0_[2]\,
      \Using_FPGA.Native_0\(0) => \TMR_No.fifo_DOut_reg_n_0_[3]\,
      mux_0123 => mux_0123
    );
\TMR_No.MUX_F5_2\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3
     port map (
      Q(1) => S,
      Q(0) => \TMR_No.mux_sel_reg_n_0_[2]\,
      \Using_FPGA.Native_0\(3) => \TMR_No.fifo_DOut_reg_n_0_[4]\,
      \Using_FPGA.Native_0\(2) => \TMR_No.fifo_DOut_reg_n_0_[5]\,
      \Using_FPGA.Native_0\(1) => \TMR_No.fifo_DOut_reg_n_0_[6]\,
      \Using_FPGA.Native_0\(0) => \TMR_No.fifo_DOut_reg_n_0_[7]\,
      mux_4567 => mux_4567
    );
\TMR_No.data_is_sent_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => p_3_out,
      Q => \^tx_data_transmitted\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(7),
      Q => p_0_in,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(6),
      Q => \TMR_No.fifo_DOut_reg_n_0_[1]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(5),
      Q => \TMR_No.fifo_DOut_reg_n_0_[2]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(4),
      Q => \TMR_No.fifo_DOut_reg_n_0_[3]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(3),
      Q => \TMR_No.fifo_DOut_reg_n_0_[4]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(2),
      Q => \TMR_No.fifo_DOut_reg_n_0_[5]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(1),
      Q => \TMR_No.fifo_DOut_reg_n_0_[6]\,
      R => Rst
    );
\TMR_No.fifo_DOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => E(0),
      D => D(0),
      Q => \TMR_No.fifo_DOut_reg_n_0_[7]\,
      R => Rst
    );
\TMR_No.mux_sel_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => tx_Data_Enable,
      D => sum_cnt(0),
      Q => \TMR_No.mux_sel_reg_n_0_[0]\,
      S => Rst
    );
\TMR_No.mux_sel_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => tx_Data_Enable,
      D => sum_cnt(1),
      Q => S,
      S => Rst
    );
\TMR_No.mux_sel_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => tx_Data_Enable,
      D => sum_cnt(2),
      Q => \TMR_No.mux_sel_reg_n_0_[2]\,
      S => Rst
    );
\TMR_No.serial_Data_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => mux_Out,
      Q => serial_Data,
      R => Rst
    );
\TMR_No.tx_DataBits_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => p_7_out,
      Q => tx_DataBits,
      R => Rst
    );
\TMR_No.tx_Start_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.FDRE_I_n_3\,
      Q => tx_Start,
      R => Rst
    );
\TMR_No.tx_buffer_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => E(0),
      I1 => tx_buffer_empty_i,
      I2 => Rst,
      I3 => \^tx_data_transmitted\,
      O => \TMR_No.tx_buffer_empty_i_i_1_n_0\
    );
\TMR_No.tx_buffer_empty_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.tx_buffer_empty_i_i_1_n_0\,
      Q => tx_buffer_empty_i,
      R => '0'
    );
\TMR_No.tx_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => tx_Start,
      I1 => serial_Data,
      I2 => tx_DataBits,
      O => \TMR_No.tx_i_i_1_n_0\
    );
\TMR_No.tx_i_reg\: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => '1',
      D => \TMR_No.tx_i_i_1_n_0\,
      Q => tx_i,
      S => Rst
    );
\UART_Status[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_buffer_empty_i,
      O => \TMR_No.tx_buffer_empty_i_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module is
  port (
    en_16x_baud : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module is
  signal Clk_En_I_1 : STD_LOGIC;
  signal Clk_En_I_2 : STD_LOGIC;
begin
\Implement_FIT.Using_SRL16s.SRL16s[1].Divide_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part
     port map (
      Clk => Clk,
      Clk_En_I_2 => Clk_En_I_2
    );
\Implement_FIT.Using_SRL16s.SRL16s[2].Divide_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0\
     port map (
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      Clk_En_I_2 => Clk_En_I_2
    );
\Implement_FIT.Using_SRL16s.SRL16s[3].Divide_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1\
     port map (
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      en_16x_baud => en_16x_baud
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core is
  port (
    UART_Tx : out STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    Sl_DBus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    \TMR_No.RX_Data_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core is
  signal RX_Data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal UART_Status : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Using_UART.Uart_Control_Status_I1_n_2\ : STD_LOGIC;
  signal \Using_UART_RX.UART_RX_I1_n_3\ : STD_LOGIC;
  signal \Using_UART_RX.UART_RX_I1_n_4\ : STD_LOGIC;
  signal en_16x_baud : STD_LOGIC;
  signal frame_error : STD_LOGIC;
  signal overrun_error : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rx_data_exists : STD_LOGIC;
  signal rx_data_received : STD_LOGIC;
  signal rx_frame_error : STD_LOGIC;
  signal tx_data_transmitted : STD_LOGIC;
begin
\Sl_DBus[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_Data(6),
      I1 => UART_Status(6),
      O => Sl_DBus(6)
    );
\Sl_DBus[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_Data(5),
      I1 => UART_Status(5),
      O => Sl_DBus(5)
    );
\Sl_DBus[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_Data(3),
      I1 => UART_Status(3),
      O => Sl_DBus(3)
    );
\Sl_DBus[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_Data(0),
      I1 => UART_Status(0),
      O => Sl_DBus(0)
    );
\Using_UART.No_Dynamic_BaudRate.UART_FIT_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module
     port map (
      Clk => Clk,
      en_16x_baud => en_16x_baud
    );
\Using_UART.Uart_Control_Status_I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status
     port map (
      Clk => Clk,
      D(1) => frame_error,
      D(0) => overrun_error,
      Q(4 downto 0) => Q(4 downto 0),
      Rst => Rst,
      SR(0) => \Using_UART.Uart_Control_Status_I1_n_2\,
      \TMR_No.error_interrupt_reg_0\ => rx_frame_error,
      \TMR_No.frame_error_reg_0\ => \Using_UART_RX.UART_RX_I1_n_4\,
      \TMR_No.overrun_error_reg_0\ => \Using_UART_RX.UART_RX_I1_n_3\,
      UART_Interrupt => UART_Interrupt,
      \UART_Status_reg[3]_0\(1) => p_0_out(3),
      \UART_Status_reg[3]_0\(0) => rx_data_exists,
      \UART_Status_reg[6]_0\(3 downto 2) => UART_Status(6 downto 5),
      \UART_Status_reg[6]_0\(1) => UART_Status(3),
      \UART_Status_reg[6]_0\(0) => UART_Status(0),
      \UART_Status_reg[6]_1\ => \TMR_No.RX_Data_reg[0]\,
      \out\ => rx_data_received,
      tx_data_transmitted => tx_data_transmitted
    );
\Using_UART_RX.UART_RX_I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive
     port map (
      Clk => Clk,
      D(1) => frame_error,
      D(0) => overrun_error,
      Q(4 downto 0) => Q(4 downto 0),
      Rst => Rst,
      SR(0) => \Using_UART.Uart_Control_Status_I1_n_2\,
      \TMR_No.RX_Data_reg[0]_0\ => \TMR_No.RX_Data_reg[0]\,
      \TMR_No.RX_Data_reg[7]_0\(7) => Sl_DBus(7),
      \TMR_No.RX_Data_reg[7]_0\(6 downto 5) => RX_Data(6 downto 5),
      \TMR_No.RX_Data_reg[7]_0\(4) => Sl_DBus(4),
      \TMR_No.RX_Data_reg[7]_0\(3) => RX_Data(3),
      \TMR_No.RX_Data_reg[7]_0\(2 downto 1) => Sl_DBus(2 downto 1),
      \TMR_No.RX_Data_reg[7]_0\(0) => RX_Data(0),
      \TMR_No.frame_error_reg\ => \Using_UART_RX.UART_RX_I1_n_4\,
      \TMR_No.new_rx_data_write_reg_0\ => \Using_UART_RX.UART_RX_I1_n_3\,
      \TMR_No.rx_data_exists_i_reg_0\(0) => rx_data_exists,
      UART_Rx => UART_Rx,
      en_16x_baud => en_16x_baud,
      \not_First.Clk_En_Out_i_reg\ => rx_frame_error,
      \out\ => rx_data_received
    );
\Using_UART_TX.UART_TX_I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit
     port map (
      Clk => Clk,
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      Rst => Rst,
      \TMR_No.tx_buffer_empty_i_reg_0\(0) => p_0_out(3),
      UART_Tx => UART_Tx,
      en_16x_baud => en_16x_baud,
      tx_data_transmitted => tx_data_transmitted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Config_Reset : in STD_LOGIC;
    TMR_Rst : in STD_LOGIC;
    TMR_Disable : in STD_LOGIC;
    ToVote : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    FromAVote : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    FromBVote : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    IO_Addr_Strobe : out STD_LOGIC;
    IO_Read_Strobe : out STD_LOGIC;
    IO_Write_Strobe : out STD_LOGIC;
    IO_Address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Byte_Enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_Write_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Read_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Ready : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    UART_Tx : out STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    FIT1_Interrupt : out STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    FIT2_Interrupt : out STD_LOGIC;
    FIT2_Toggle : out STD_LOGIC;
    FIT3_Interrupt : out STD_LOGIC;
    FIT3_Toggle : out STD_LOGIC;
    FIT4_Interrupt : out STD_LOGIC;
    FIT4_Toggle : out STD_LOGIC;
    PIT1_Enable : in STD_LOGIC;
    PIT1_Interrupt : out STD_LOGIC;
    PIT1_Toggle : out STD_LOGIC;
    PIT2_Enable : in STD_LOGIC;
    PIT2_Interrupt : out STD_LOGIC;
    PIT2_Toggle : out STD_LOGIC;
    PIT3_Enable : in STD_LOGIC;
    PIT3_Interrupt : out STD_LOGIC;
    PIT3_Toggle : out STD_LOGIC;
    PIT4_Enable : in STD_LOGIC;
    PIT4_Interrupt : out STD_LOGIC;
    PIT4_Toggle : out STD_LOGIC;
    GPO1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI1_Interrupt : out STD_LOGIC;
    GPI2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI2_Interrupt : out STD_LOGIC;
    GPI3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI3_Interrupt : out STD_LOGIC;
    GPI4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI4_Interrupt : out STD_LOGIC;
    INTC_Interrupt : in STD_LOGIC_VECTOR ( 0 to 0 );
    INTC_IRQ : out STD_LOGIC;
    INTC_Processor_Ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    INTC_Interrupt_Address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    INTC_IRQ_OUT : out STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC
  );
  attribute C_AVOID_PRIMITIVES : integer;
  attribute C_AVOID_PRIMITIVES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_BASEADDR : string;
  attribute C_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "artix7";
  attribute C_FIT1_INTERRUPT : integer;
  attribute C_FIT1_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_FIT1_No_CLOCKS : integer;
  attribute C_FIT1_No_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 6216;
  attribute C_FIT2_INTERRUPT : integer;
  attribute C_FIT2_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_FIT2_No_CLOCKS : integer;
  attribute C_FIT2_No_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 6216;
  attribute C_FIT3_INTERRUPT : integer;
  attribute C_FIT3_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_FIT3_No_CLOCKS : integer;
  attribute C_FIT3_No_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 6216;
  attribute C_FIT4_INTERRUPT : integer;
  attribute C_FIT4_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_FIT4_No_CLOCKS : integer;
  attribute C_FIT4_No_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 6216;
  attribute C_FREQ : integer;
  attribute C_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 100000000;
  attribute C_GPI1_INTERRUPT : integer;
  attribute C_GPI1_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPI1_SIZE : integer;
  attribute C_GPI1_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPI2_INTERRUPT : integer;
  attribute C_GPI2_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPI2_SIZE : integer;
  attribute C_GPI2_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPI3_INTERRUPT : integer;
  attribute C_GPI3_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPI3_SIZE : integer;
  attribute C_GPI3_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPI4_INTERRUPT : integer;
  attribute C_GPI4_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPI4_SIZE : integer;
  attribute C_GPI4_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPO1_INIT : integer;
  attribute C_GPO1_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPO1_SIZE : integer;
  attribute C_GPO1_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPO2_INIT : integer;
  attribute C_GPO2_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPO2_SIZE : integer;
  attribute C_GPO2_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPO3_INIT : integer;
  attribute C_GPO3_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPO3_SIZE : integer;
  attribute C_GPO3_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_GPO4_INIT : integer;
  attribute C_GPO4_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_GPO4_SIZE : integer;
  attribute C_GPO4_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_HIGHADDR : string;
  attribute C_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "iomodule_0";
  attribute C_INTC_ADDR_WIDTH : integer;
  attribute C_INTC_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_INTC_ASYNC_INTR : string;
  attribute C_INTC_ASYNC_INTR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "16'b1111111111111111";
  attribute C_INTC_BASE_VECTORS : string;
  attribute C_INTC_BASE_VECTORS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_INTC_HAS_FAST : integer;
  attribute C_INTC_HAS_FAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_INTC_INTR_SIZE : integer;
  attribute C_INTC_INTR_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_INTC_LEVEL_EDGE : string;
  attribute C_INTC_LEVEL_EDGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "16'b0000000000000000";
  attribute C_INTC_NUM_SYNC_FF : integer;
  attribute C_INTC_NUM_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 2;
  attribute C_INTC_POSITIVE : string;
  attribute C_INTC_POSITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "16'b1111111111111111";
  attribute C_INTC_USE_EXT_INTR : integer;
  attribute C_INTC_USE_EXT_INTR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_IO_BASEADDR : string;
  attribute C_IO_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_IO_HIGHADDR : string;
  attribute C_IO_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_IO_MASK : string;
  attribute C_IO_MASK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b0000000000000000000000000000000000000000100000000000000000000000";
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_MASK : string;
  attribute C_MASK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_PIT1_INTERRUPT : integer;
  attribute C_PIT1_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT1_PRESCALER : integer;
  attribute C_PIT1_PRESCALER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT1_READABLE : integer;
  attribute C_PIT1_READABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_PIT1_SIZE : integer;
  attribute C_PIT1_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_PIT2_INTERRUPT : integer;
  attribute C_PIT2_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT2_PRESCALER : integer;
  attribute C_PIT2_PRESCALER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT2_READABLE : integer;
  attribute C_PIT2_READABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_PIT2_SIZE : integer;
  attribute C_PIT2_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_PIT3_INTERRUPT : integer;
  attribute C_PIT3_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT3_PRESCALER : integer;
  attribute C_PIT3_PRESCALER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT3_READABLE : integer;
  attribute C_PIT3_READABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_PIT3_SIZE : integer;
  attribute C_PIT3_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_PIT4_INTERRUPT : integer;
  attribute C_PIT4_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT4_PRESCALER : integer;
  attribute C_PIT4_PRESCALER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_PIT4_READABLE : integer;
  attribute C_PIT4_READABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_PIT4_SIZE : integer;
  attribute C_PIT4_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 32;
  attribute C_TMR : integer;
  attribute C_TMR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_BAUDRATE : integer;
  attribute C_UART_BAUDRATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 9600;
  attribute C_UART_DATA_BITS : integer;
  attribute C_UART_DATA_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 8;
  attribute C_UART_ERROR_INTERRUPT : integer;
  attribute C_UART_ERROR_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_ODD_PARITY : integer;
  attribute C_UART_ODD_PARITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_PROG_BAUDRATE : integer;
  attribute C_UART_PROG_BAUDRATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_RX_INTERRUPT : integer;
  attribute C_UART_RX_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_TX_INTERRUPT : integer;
  attribute C_UART_TX_INTERRUPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_UART_USE_PARITY : integer;
  attribute C_UART_USE_PARITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_CONFIG_RESET : integer;
  attribute C_USE_CONFIG_RESET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_FIT1 : integer;
  attribute C_USE_FIT1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_FIT2 : integer;
  attribute C_USE_FIT2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_FIT3 : integer;
  attribute C_USE_FIT3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_FIT4 : integer;
  attribute C_USE_FIT4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPI1 : integer;
  attribute C_USE_GPI1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPI2 : integer;
  attribute C_USE_GPI2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPI3 : integer;
  attribute C_USE_GPI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPI4 : integer;
  attribute C_USE_GPI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPO1 : integer;
  attribute C_USE_GPO1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPO2 : integer;
  attribute C_USE_GPO2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPO3 : integer;
  attribute C_USE_GPO3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_GPO4 : integer;
  attribute C_USE_GPO4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_IO_BUS : integer;
  attribute C_USE_IO_BUS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_PIT1 : integer;
  attribute C_USE_PIT1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_PIT2 : integer;
  attribute C_USE_PIT2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_PIT3 : integer;
  attribute C_USE_PIT3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_PIT4 : integer;
  attribute C_USE_PIT4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_TMR_DISABLE : integer;
  attribute C_USE_TMR_DISABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 0;
  attribute C_USE_UART_RX : integer;
  attribute C_USE_UART_RX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
  attribute C_USE_UART_TX : integer;
  attribute C_USE_UART_TX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^sl_dbus\ : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \^sl_wait\ : STD_LOGIC;
  signal lmb_abus_Q : STD_LOGIC_VECTOR ( 2 to 6 );
  signal lmb_reg_read0 : STD_LOGIC;
  signal lmb_reg_read_Q : STD_LOGIC;
  signal lmb_reg_write : STD_LOGIC;
  signal lmb_reg_write0 : STD_LOGIC;
  signal uart_tx_write : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of uart_tx_write : signal is "true";
  signal write_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of write_data : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of lmb_reg_read_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of lmb_reg_write_i_1 : label is "soft_lutpair10";
  attribute KEEP : string;
  attribute KEEP of \write_data_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \write_data_reg[0]\ : label is "no";
  attribute KEEP of \write_data_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[10]\ : label is "no";
  attribute KEEP of \write_data_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[11]\ : label is "no";
  attribute KEEP of \write_data_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[12]\ : label is "no";
  attribute KEEP of \write_data_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[13]\ : label is "no";
  attribute KEEP of \write_data_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[14]\ : label is "no";
  attribute KEEP of \write_data_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[15]\ : label is "no";
  attribute KEEP of \write_data_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[16]\ : label is "no";
  attribute KEEP of \write_data_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[17]\ : label is "no";
  attribute KEEP of \write_data_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[18]\ : label is "no";
  attribute KEEP of \write_data_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[19]\ : label is "no";
  attribute KEEP of \write_data_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[1]\ : label is "no";
  attribute KEEP of \write_data_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[20]\ : label is "no";
  attribute KEEP of \write_data_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[21]\ : label is "no";
  attribute KEEP of \write_data_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[22]\ : label is "no";
  attribute KEEP of \write_data_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[23]\ : label is "no";
  attribute KEEP of \write_data_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[24]\ : label is "no";
  attribute KEEP of \write_data_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[25]\ : label is "no";
  attribute KEEP of \write_data_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[26]\ : label is "no";
  attribute KEEP of \write_data_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[27]\ : label is "no";
  attribute KEEP of \write_data_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[28]\ : label is "no";
  attribute KEEP of \write_data_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[29]\ : label is "no";
  attribute KEEP of \write_data_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[2]\ : label is "no";
  attribute KEEP of \write_data_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[30]\ : label is "no";
  attribute KEEP of \write_data_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[31]\ : label is "no";
  attribute KEEP of \write_data_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[3]\ : label is "no";
  attribute KEEP of \write_data_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[4]\ : label is "no";
  attribute KEEP of \write_data_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[5]\ : label is "no";
  attribute KEEP of \write_data_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[6]\ : label is "no";
  attribute KEEP of \write_data_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[7]\ : label is "no";
  attribute KEEP of \write_data_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[8]\ : label is "no";
  attribute KEEP of \write_data_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \write_data_reg[9]\ : label is "no";
begin
  FIT1_Interrupt <= \<const0>\;
  FIT1_Toggle <= \<const0>\;
  FIT2_Interrupt <= \<const0>\;
  FIT2_Toggle <= \<const0>\;
  FIT3_Interrupt <= \<const0>\;
  FIT3_Toggle <= \<const0>\;
  FIT4_Interrupt <= \<const0>\;
  FIT4_Toggle <= \<const0>\;
  GPI1_Interrupt <= \<const0>\;
  GPI2_Interrupt <= \<const0>\;
  GPI3_Interrupt <= \<const0>\;
  GPI4_Interrupt <= \<const0>\;
  GPO1(31) <= \<const0>\;
  GPO1(30) <= \<const0>\;
  GPO1(29) <= \<const0>\;
  GPO1(28) <= \<const0>\;
  GPO1(27) <= \<const0>\;
  GPO1(26) <= \<const0>\;
  GPO1(25) <= \<const0>\;
  GPO1(24) <= \<const0>\;
  GPO1(23) <= \<const0>\;
  GPO1(22) <= \<const0>\;
  GPO1(21) <= \<const0>\;
  GPO1(20) <= \<const0>\;
  GPO1(19) <= \<const0>\;
  GPO1(18) <= \<const0>\;
  GPO1(17) <= \<const0>\;
  GPO1(16) <= \<const0>\;
  GPO1(15) <= \<const0>\;
  GPO1(14) <= \<const0>\;
  GPO1(13) <= \<const0>\;
  GPO1(12) <= \<const0>\;
  GPO1(11) <= \<const0>\;
  GPO1(10) <= \<const0>\;
  GPO1(9) <= \<const0>\;
  GPO1(8) <= \<const0>\;
  GPO1(7) <= \<const0>\;
  GPO1(6) <= \<const0>\;
  GPO1(5) <= \<const0>\;
  GPO1(4) <= \<const0>\;
  GPO1(3) <= \<const0>\;
  GPO1(2) <= \<const0>\;
  GPO1(1) <= \<const0>\;
  GPO1(0) <= \<const0>\;
  GPO2(31) <= \<const0>\;
  GPO2(30) <= \<const0>\;
  GPO2(29) <= \<const0>\;
  GPO2(28) <= \<const0>\;
  GPO2(27) <= \<const0>\;
  GPO2(26) <= \<const0>\;
  GPO2(25) <= \<const0>\;
  GPO2(24) <= \<const0>\;
  GPO2(23) <= \<const0>\;
  GPO2(22) <= \<const0>\;
  GPO2(21) <= \<const0>\;
  GPO2(20) <= \<const0>\;
  GPO2(19) <= \<const0>\;
  GPO2(18) <= \<const0>\;
  GPO2(17) <= \<const0>\;
  GPO2(16) <= \<const0>\;
  GPO2(15) <= \<const0>\;
  GPO2(14) <= \<const0>\;
  GPO2(13) <= \<const0>\;
  GPO2(12) <= \<const0>\;
  GPO2(11) <= \<const0>\;
  GPO2(10) <= \<const0>\;
  GPO2(9) <= \<const0>\;
  GPO2(8) <= \<const0>\;
  GPO2(7) <= \<const0>\;
  GPO2(6) <= \<const0>\;
  GPO2(5) <= \<const0>\;
  GPO2(4) <= \<const0>\;
  GPO2(3) <= \<const0>\;
  GPO2(2) <= \<const0>\;
  GPO2(1) <= \<const0>\;
  GPO2(0) <= \<const0>\;
  GPO3(31) <= \<const0>\;
  GPO3(30) <= \<const0>\;
  GPO3(29) <= \<const0>\;
  GPO3(28) <= \<const0>\;
  GPO3(27) <= \<const0>\;
  GPO3(26) <= \<const0>\;
  GPO3(25) <= \<const0>\;
  GPO3(24) <= \<const0>\;
  GPO3(23) <= \<const0>\;
  GPO3(22) <= \<const0>\;
  GPO3(21) <= \<const0>\;
  GPO3(20) <= \<const0>\;
  GPO3(19) <= \<const0>\;
  GPO3(18) <= \<const0>\;
  GPO3(17) <= \<const0>\;
  GPO3(16) <= \<const0>\;
  GPO3(15) <= \<const0>\;
  GPO3(14) <= \<const0>\;
  GPO3(13) <= \<const0>\;
  GPO3(12) <= \<const0>\;
  GPO3(11) <= \<const0>\;
  GPO3(10) <= \<const0>\;
  GPO3(9) <= \<const0>\;
  GPO3(8) <= \<const0>\;
  GPO3(7) <= \<const0>\;
  GPO3(6) <= \<const0>\;
  GPO3(5) <= \<const0>\;
  GPO3(4) <= \<const0>\;
  GPO3(3) <= \<const0>\;
  GPO3(2) <= \<const0>\;
  GPO3(1) <= \<const0>\;
  GPO3(0) <= \<const0>\;
  GPO4(31) <= \<const0>\;
  GPO4(30) <= \<const0>\;
  GPO4(29) <= \<const0>\;
  GPO4(28) <= \<const0>\;
  GPO4(27) <= \<const0>\;
  GPO4(26) <= \<const0>\;
  GPO4(25) <= \<const0>\;
  GPO4(24) <= \<const0>\;
  GPO4(23) <= \<const0>\;
  GPO4(22) <= \<const0>\;
  GPO4(21) <= \<const0>\;
  GPO4(20) <= \<const0>\;
  GPO4(19) <= \<const0>\;
  GPO4(18) <= \<const0>\;
  GPO4(17) <= \<const0>\;
  GPO4(16) <= \<const0>\;
  GPO4(15) <= \<const0>\;
  GPO4(14) <= \<const0>\;
  GPO4(13) <= \<const0>\;
  GPO4(12) <= \<const0>\;
  GPO4(11) <= \<const0>\;
  GPO4(10) <= \<const0>\;
  GPO4(9) <= \<const0>\;
  GPO4(8) <= \<const0>\;
  GPO4(7) <= \<const0>\;
  GPO4(6) <= \<const0>\;
  GPO4(5) <= \<const0>\;
  GPO4(4) <= \<const0>\;
  GPO4(3) <= \<const0>\;
  GPO4(2) <= \<const0>\;
  GPO4(1) <= \<const0>\;
  GPO4(0) <= \<const0>\;
  INTC_IRQ <= \<const0>\;
  INTC_IRQ_OUT <= \<const0>\;
  INTC_Interrupt_Address(31) <= \<const0>\;
  INTC_Interrupt_Address(30) <= \<const0>\;
  INTC_Interrupt_Address(29) <= \<const0>\;
  INTC_Interrupt_Address(28) <= \<const0>\;
  INTC_Interrupt_Address(27) <= \<const0>\;
  INTC_Interrupt_Address(26) <= \<const0>\;
  INTC_Interrupt_Address(25) <= \<const0>\;
  INTC_Interrupt_Address(24) <= \<const0>\;
  INTC_Interrupt_Address(23) <= \<const0>\;
  INTC_Interrupt_Address(22) <= \<const0>\;
  INTC_Interrupt_Address(21) <= \<const0>\;
  INTC_Interrupt_Address(20) <= \<const0>\;
  INTC_Interrupt_Address(19) <= \<const0>\;
  INTC_Interrupt_Address(18) <= \<const0>\;
  INTC_Interrupt_Address(17) <= \<const0>\;
  INTC_Interrupt_Address(16) <= \<const0>\;
  INTC_Interrupt_Address(15) <= \<const0>\;
  INTC_Interrupt_Address(14) <= \<const0>\;
  INTC_Interrupt_Address(13) <= \<const0>\;
  INTC_Interrupt_Address(12) <= \<const0>\;
  INTC_Interrupt_Address(11) <= \<const0>\;
  INTC_Interrupt_Address(10) <= \<const0>\;
  INTC_Interrupt_Address(9) <= \<const0>\;
  INTC_Interrupt_Address(8) <= \<const0>\;
  INTC_Interrupt_Address(7) <= \<const0>\;
  INTC_Interrupt_Address(6) <= \<const0>\;
  INTC_Interrupt_Address(5) <= \<const0>\;
  INTC_Interrupt_Address(4) <= \<const1>\;
  INTC_Interrupt_Address(3) <= \<const0>\;
  INTC_Interrupt_Address(2) <= \<const0>\;
  INTC_Interrupt_Address(1) <= \<const0>\;
  INTC_Interrupt_Address(0) <= \<const0>\;
  IO_Addr_Strobe <= \<const0>\;
  IO_Address(31) <= \<const0>\;
  IO_Address(30) <= \<const0>\;
  IO_Address(29) <= \<const0>\;
  IO_Address(28) <= \<const0>\;
  IO_Address(27) <= \<const0>\;
  IO_Address(26) <= \<const0>\;
  IO_Address(25) <= \<const0>\;
  IO_Address(24) <= \<const0>\;
  IO_Address(23) <= \<const0>\;
  IO_Address(22) <= \<const0>\;
  IO_Address(21) <= \<const0>\;
  IO_Address(20) <= \<const0>\;
  IO_Address(19) <= \<const0>\;
  IO_Address(18) <= \<const0>\;
  IO_Address(17) <= \<const0>\;
  IO_Address(16) <= \<const0>\;
  IO_Address(15) <= \<const0>\;
  IO_Address(14) <= \<const0>\;
  IO_Address(13) <= \<const0>\;
  IO_Address(12) <= \<const0>\;
  IO_Address(11) <= \<const0>\;
  IO_Address(10) <= \<const0>\;
  IO_Address(9) <= \<const0>\;
  IO_Address(8) <= \<const0>\;
  IO_Address(7) <= \<const0>\;
  IO_Address(6) <= \<const0>\;
  IO_Address(5) <= \<const0>\;
  IO_Address(4) <= \<const0>\;
  IO_Address(3) <= \<const0>\;
  IO_Address(2) <= \<const0>\;
  IO_Address(1) <= \<const0>\;
  IO_Address(0) <= \<const0>\;
  IO_Byte_Enable(3) <= \<const0>\;
  IO_Byte_Enable(2) <= \<const0>\;
  IO_Byte_Enable(1) <= \<const0>\;
  IO_Byte_Enable(0) <= \<const0>\;
  IO_Read_Strobe <= \<const0>\;
  IO_Write_Data(31) <= \<const0>\;
  IO_Write_Data(30) <= \<const0>\;
  IO_Write_Data(29) <= \<const0>\;
  IO_Write_Data(28) <= \<const0>\;
  IO_Write_Data(27) <= \<const0>\;
  IO_Write_Data(26) <= \<const0>\;
  IO_Write_Data(25) <= \<const0>\;
  IO_Write_Data(24) <= \<const0>\;
  IO_Write_Data(23) <= \<const0>\;
  IO_Write_Data(22) <= \<const0>\;
  IO_Write_Data(21) <= \<const0>\;
  IO_Write_Data(20) <= \<const0>\;
  IO_Write_Data(19) <= \<const0>\;
  IO_Write_Data(18) <= \<const0>\;
  IO_Write_Data(17) <= \<const0>\;
  IO_Write_Data(16) <= \<const0>\;
  IO_Write_Data(15) <= \<const0>\;
  IO_Write_Data(14) <= \<const0>\;
  IO_Write_Data(13) <= \<const0>\;
  IO_Write_Data(12) <= \<const0>\;
  IO_Write_Data(11) <= \<const0>\;
  IO_Write_Data(10) <= \<const0>\;
  IO_Write_Data(9) <= \<const0>\;
  IO_Write_Data(8) <= \<const0>\;
  IO_Write_Data(7) <= \<const0>\;
  IO_Write_Data(6) <= \<const0>\;
  IO_Write_Data(5) <= \<const0>\;
  IO_Write_Data(4) <= \<const0>\;
  IO_Write_Data(3) <= \<const0>\;
  IO_Write_Data(2) <= \<const0>\;
  IO_Write_Data(1) <= \<const0>\;
  IO_Write_Data(0) <= \<const0>\;
  IO_Write_Strobe <= \<const0>\;
  PIT1_Interrupt <= \<const0>\;
  PIT1_Toggle <= \<const0>\;
  PIT2_Interrupt <= \<const0>\;
  PIT2_Toggle <= \<const0>\;
  PIT3_Interrupt <= \<const0>\;
  PIT3_Toggle <= \<const0>\;
  PIT4_Interrupt <= \<const0>\;
  PIT4_Toggle <= \<const0>\;
  Sl_CE <= \<const0>\;
  Sl_DBus(0) <= \<const0>\;
  Sl_DBus(1) <= \<const0>\;
  Sl_DBus(2) <= \<const0>\;
  Sl_DBus(3) <= \<const0>\;
  Sl_DBus(4) <= \<const0>\;
  Sl_DBus(5) <= \<const0>\;
  Sl_DBus(6) <= \<const0>\;
  Sl_DBus(7) <= \<const0>\;
  Sl_DBus(8) <= \<const0>\;
  Sl_DBus(9) <= \<const0>\;
  Sl_DBus(10) <= \<const0>\;
  Sl_DBus(11) <= \<const0>\;
  Sl_DBus(12) <= \<const0>\;
  Sl_DBus(13) <= \<const0>\;
  Sl_DBus(14) <= \<const0>\;
  Sl_DBus(15) <= \<const0>\;
  Sl_DBus(16) <= \<const0>\;
  Sl_DBus(17) <= \<const0>\;
  Sl_DBus(18) <= \<const0>\;
  Sl_DBus(19) <= \<const0>\;
  Sl_DBus(20) <= \<const0>\;
  Sl_DBus(21) <= \<const0>\;
  Sl_DBus(22) <= \<const0>\;
  Sl_DBus(23) <= \<const0>\;
  Sl_DBus(24 to 31) <= \^sl_dbus\(24 to 31);
  Sl_UE <= \<const0>\;
  Sl_Wait <= \^sl_wait\;
  ToVote(1023) <= \<const0>\;
  ToVote(1022) <= \<const0>\;
  ToVote(1021) <= \<const0>\;
  ToVote(1020) <= \<const0>\;
  ToVote(1019) <= \<const0>\;
  ToVote(1018) <= \<const0>\;
  ToVote(1017) <= \<const0>\;
  ToVote(1016) <= \<const0>\;
  ToVote(1015) <= \<const0>\;
  ToVote(1014) <= \<const0>\;
  ToVote(1013) <= \<const0>\;
  ToVote(1012) <= \<const0>\;
  ToVote(1011) <= \<const0>\;
  ToVote(1010) <= \<const0>\;
  ToVote(1009) <= \<const0>\;
  ToVote(1008) <= \<const0>\;
  ToVote(1007) <= \<const0>\;
  ToVote(1006) <= \<const0>\;
  ToVote(1005) <= \<const0>\;
  ToVote(1004) <= \<const0>\;
  ToVote(1003) <= \<const0>\;
  ToVote(1002) <= \<const0>\;
  ToVote(1001) <= \<const0>\;
  ToVote(1000) <= \<const0>\;
  ToVote(999) <= \<const0>\;
  ToVote(998) <= \<const0>\;
  ToVote(997) <= \<const0>\;
  ToVote(996) <= \<const0>\;
  ToVote(995) <= \<const0>\;
  ToVote(994) <= \<const0>\;
  ToVote(993) <= \<const0>\;
  ToVote(992) <= \<const0>\;
  ToVote(991) <= \<const0>\;
  ToVote(990) <= \<const0>\;
  ToVote(989) <= \<const0>\;
  ToVote(988) <= \<const0>\;
  ToVote(987) <= \<const0>\;
  ToVote(986) <= \<const0>\;
  ToVote(985) <= \<const0>\;
  ToVote(984) <= \<const0>\;
  ToVote(983) <= \<const0>\;
  ToVote(982) <= \<const0>\;
  ToVote(981) <= \<const0>\;
  ToVote(980) <= \<const0>\;
  ToVote(979) <= \<const0>\;
  ToVote(978) <= \<const0>\;
  ToVote(977) <= \<const0>\;
  ToVote(976) <= \<const0>\;
  ToVote(975) <= \<const0>\;
  ToVote(974) <= \<const0>\;
  ToVote(973) <= \<const0>\;
  ToVote(972) <= \<const0>\;
  ToVote(971) <= \<const0>\;
  ToVote(970) <= \<const0>\;
  ToVote(969) <= \<const0>\;
  ToVote(968) <= \<const0>\;
  ToVote(967) <= \<const0>\;
  ToVote(966) <= \<const0>\;
  ToVote(965) <= \<const0>\;
  ToVote(964) <= \<const0>\;
  ToVote(963) <= \<const0>\;
  ToVote(962) <= \<const0>\;
  ToVote(961) <= \<const0>\;
  ToVote(960) <= \<const0>\;
  ToVote(959) <= \<const0>\;
  ToVote(958) <= \<const0>\;
  ToVote(957) <= \<const0>\;
  ToVote(956) <= \<const0>\;
  ToVote(955) <= \<const0>\;
  ToVote(954) <= \<const0>\;
  ToVote(953) <= \<const0>\;
  ToVote(952) <= \<const0>\;
  ToVote(951) <= \<const0>\;
  ToVote(950) <= \<const0>\;
  ToVote(949) <= \<const0>\;
  ToVote(948) <= \<const0>\;
  ToVote(947) <= \<const0>\;
  ToVote(946) <= \<const0>\;
  ToVote(945) <= \<const0>\;
  ToVote(944) <= \<const0>\;
  ToVote(943) <= \<const0>\;
  ToVote(942) <= \<const0>\;
  ToVote(941) <= \<const0>\;
  ToVote(940) <= \<const0>\;
  ToVote(939) <= \<const0>\;
  ToVote(938) <= \<const0>\;
  ToVote(937) <= \<const0>\;
  ToVote(936) <= \<const0>\;
  ToVote(935) <= \<const0>\;
  ToVote(934) <= \<const0>\;
  ToVote(933) <= \<const0>\;
  ToVote(932) <= \<const0>\;
  ToVote(931) <= \<const0>\;
  ToVote(930) <= \<const0>\;
  ToVote(929) <= \<const0>\;
  ToVote(928) <= \<const0>\;
  ToVote(927) <= \<const0>\;
  ToVote(926) <= \<const0>\;
  ToVote(925) <= \<const0>\;
  ToVote(924) <= \<const0>\;
  ToVote(923) <= \<const0>\;
  ToVote(922) <= \<const0>\;
  ToVote(921) <= \<const0>\;
  ToVote(920) <= \<const0>\;
  ToVote(919) <= \<const0>\;
  ToVote(918) <= \<const0>\;
  ToVote(917) <= \<const0>\;
  ToVote(916) <= \<const0>\;
  ToVote(915) <= \<const0>\;
  ToVote(914) <= \<const0>\;
  ToVote(913) <= \<const0>\;
  ToVote(912) <= \<const0>\;
  ToVote(911) <= \<const0>\;
  ToVote(910) <= \<const0>\;
  ToVote(909) <= \<const0>\;
  ToVote(908) <= \<const0>\;
  ToVote(907) <= \<const0>\;
  ToVote(906) <= \<const0>\;
  ToVote(905) <= \<const0>\;
  ToVote(904) <= \<const0>\;
  ToVote(903) <= \<const0>\;
  ToVote(902) <= \<const0>\;
  ToVote(901) <= \<const0>\;
  ToVote(900) <= \<const0>\;
  ToVote(899) <= \<const0>\;
  ToVote(898) <= \<const0>\;
  ToVote(897) <= \<const0>\;
  ToVote(896) <= \<const0>\;
  ToVote(895) <= \<const0>\;
  ToVote(894) <= \<const0>\;
  ToVote(893) <= \<const0>\;
  ToVote(892) <= \<const0>\;
  ToVote(891) <= \<const0>\;
  ToVote(890) <= \<const0>\;
  ToVote(889) <= \<const0>\;
  ToVote(888) <= \<const0>\;
  ToVote(887) <= \<const0>\;
  ToVote(886) <= \<const0>\;
  ToVote(885) <= \<const0>\;
  ToVote(884) <= \<const0>\;
  ToVote(883) <= \<const0>\;
  ToVote(882) <= \<const0>\;
  ToVote(881) <= \<const0>\;
  ToVote(880) <= \<const0>\;
  ToVote(879) <= \<const0>\;
  ToVote(878) <= \<const0>\;
  ToVote(877) <= \<const0>\;
  ToVote(876) <= \<const0>\;
  ToVote(875) <= \<const0>\;
  ToVote(874) <= \<const0>\;
  ToVote(873) <= \<const0>\;
  ToVote(872) <= \<const0>\;
  ToVote(871) <= \<const0>\;
  ToVote(870) <= \<const0>\;
  ToVote(869) <= \<const0>\;
  ToVote(868) <= \<const0>\;
  ToVote(867) <= \<const0>\;
  ToVote(866) <= \<const0>\;
  ToVote(865) <= \<const0>\;
  ToVote(864) <= \<const0>\;
  ToVote(863) <= \<const0>\;
  ToVote(862) <= \<const0>\;
  ToVote(861) <= \<const0>\;
  ToVote(860) <= \<const0>\;
  ToVote(859) <= \<const0>\;
  ToVote(858) <= \<const0>\;
  ToVote(857) <= \<const0>\;
  ToVote(856) <= \<const0>\;
  ToVote(855) <= \<const0>\;
  ToVote(854) <= \<const0>\;
  ToVote(853) <= \<const0>\;
  ToVote(852) <= \<const0>\;
  ToVote(851) <= \<const0>\;
  ToVote(850) <= \<const0>\;
  ToVote(849) <= \<const0>\;
  ToVote(848) <= \<const0>\;
  ToVote(847) <= \<const0>\;
  ToVote(846) <= \<const0>\;
  ToVote(845) <= \<const0>\;
  ToVote(844) <= \<const0>\;
  ToVote(843) <= \<const0>\;
  ToVote(842) <= \<const0>\;
  ToVote(841) <= \<const0>\;
  ToVote(840) <= \<const0>\;
  ToVote(839) <= \<const0>\;
  ToVote(838) <= \<const0>\;
  ToVote(837) <= \<const0>\;
  ToVote(836) <= \<const0>\;
  ToVote(835) <= \<const0>\;
  ToVote(834) <= \<const0>\;
  ToVote(833) <= \<const0>\;
  ToVote(832) <= \<const0>\;
  ToVote(831) <= \<const0>\;
  ToVote(830) <= \<const0>\;
  ToVote(829) <= \<const0>\;
  ToVote(828) <= \<const0>\;
  ToVote(827) <= \<const0>\;
  ToVote(826) <= \<const0>\;
  ToVote(825) <= \<const0>\;
  ToVote(824) <= \<const0>\;
  ToVote(823) <= \<const0>\;
  ToVote(822) <= \<const0>\;
  ToVote(821) <= \<const0>\;
  ToVote(820) <= \<const0>\;
  ToVote(819) <= \<const0>\;
  ToVote(818) <= \<const0>\;
  ToVote(817) <= \<const0>\;
  ToVote(816) <= \<const0>\;
  ToVote(815) <= \<const0>\;
  ToVote(814) <= \<const0>\;
  ToVote(813) <= \<const0>\;
  ToVote(812) <= \<const0>\;
  ToVote(811) <= \<const0>\;
  ToVote(810) <= \<const0>\;
  ToVote(809) <= \<const0>\;
  ToVote(808) <= \<const0>\;
  ToVote(807) <= \<const0>\;
  ToVote(806) <= \<const0>\;
  ToVote(805) <= \<const0>\;
  ToVote(804) <= \<const0>\;
  ToVote(803) <= \<const0>\;
  ToVote(802) <= \<const0>\;
  ToVote(801) <= \<const0>\;
  ToVote(800) <= \<const0>\;
  ToVote(799) <= \<const0>\;
  ToVote(798) <= \<const0>\;
  ToVote(797) <= \<const0>\;
  ToVote(796) <= \<const0>\;
  ToVote(795) <= \<const0>\;
  ToVote(794) <= \<const0>\;
  ToVote(793) <= \<const0>\;
  ToVote(792) <= \<const0>\;
  ToVote(791) <= \<const0>\;
  ToVote(790) <= \<const0>\;
  ToVote(789) <= \<const0>\;
  ToVote(788) <= \<const0>\;
  ToVote(787) <= \<const0>\;
  ToVote(786) <= \<const0>\;
  ToVote(785) <= \<const0>\;
  ToVote(784) <= \<const0>\;
  ToVote(783) <= \<const0>\;
  ToVote(782) <= \<const0>\;
  ToVote(781) <= \<const0>\;
  ToVote(780) <= \<const0>\;
  ToVote(779) <= \<const0>\;
  ToVote(778) <= \<const0>\;
  ToVote(777) <= \<const0>\;
  ToVote(776) <= \<const0>\;
  ToVote(775) <= \<const0>\;
  ToVote(774) <= \<const0>\;
  ToVote(773) <= \<const0>\;
  ToVote(772) <= \<const0>\;
  ToVote(771) <= \<const0>\;
  ToVote(770) <= \<const0>\;
  ToVote(769) <= \<const0>\;
  ToVote(768) <= \<const0>\;
  ToVote(767) <= \<const0>\;
  ToVote(766) <= \<const0>\;
  ToVote(765) <= \<const0>\;
  ToVote(764) <= \<const0>\;
  ToVote(763) <= \<const0>\;
  ToVote(762) <= \<const0>\;
  ToVote(761) <= \<const0>\;
  ToVote(760) <= \<const0>\;
  ToVote(759) <= \<const0>\;
  ToVote(758) <= \<const0>\;
  ToVote(757) <= \<const0>\;
  ToVote(756) <= \<const0>\;
  ToVote(755) <= \<const0>\;
  ToVote(754) <= \<const0>\;
  ToVote(753) <= \<const0>\;
  ToVote(752) <= \<const0>\;
  ToVote(751) <= \<const0>\;
  ToVote(750) <= \<const0>\;
  ToVote(749) <= \<const0>\;
  ToVote(748) <= \<const0>\;
  ToVote(747) <= \<const0>\;
  ToVote(746) <= \<const0>\;
  ToVote(745) <= \<const0>\;
  ToVote(744) <= \<const0>\;
  ToVote(743) <= \<const0>\;
  ToVote(742) <= \<const0>\;
  ToVote(741) <= \<const0>\;
  ToVote(740) <= \<const0>\;
  ToVote(739) <= \<const0>\;
  ToVote(738) <= \<const0>\;
  ToVote(737) <= \<const0>\;
  ToVote(736) <= \<const0>\;
  ToVote(735) <= \<const0>\;
  ToVote(734) <= \<const0>\;
  ToVote(733) <= \<const0>\;
  ToVote(732) <= \<const0>\;
  ToVote(731) <= \<const0>\;
  ToVote(730) <= \<const0>\;
  ToVote(729) <= \<const0>\;
  ToVote(728) <= \<const0>\;
  ToVote(727) <= \<const0>\;
  ToVote(726) <= \<const0>\;
  ToVote(725) <= \<const0>\;
  ToVote(724) <= \<const0>\;
  ToVote(723) <= \<const0>\;
  ToVote(722) <= \<const0>\;
  ToVote(721) <= \<const0>\;
  ToVote(720) <= \<const0>\;
  ToVote(719) <= \<const0>\;
  ToVote(718) <= \<const0>\;
  ToVote(717) <= \<const0>\;
  ToVote(716) <= \<const0>\;
  ToVote(715) <= \<const0>\;
  ToVote(714) <= \<const0>\;
  ToVote(713) <= \<const0>\;
  ToVote(712) <= \<const0>\;
  ToVote(711) <= \<const0>\;
  ToVote(710) <= \<const0>\;
  ToVote(709) <= \<const0>\;
  ToVote(708) <= \<const0>\;
  ToVote(707) <= \<const0>\;
  ToVote(706) <= \<const0>\;
  ToVote(705) <= \<const0>\;
  ToVote(704) <= \<const0>\;
  ToVote(703) <= \<const0>\;
  ToVote(702) <= \<const0>\;
  ToVote(701) <= \<const0>\;
  ToVote(700) <= \<const0>\;
  ToVote(699) <= \<const0>\;
  ToVote(698) <= \<const0>\;
  ToVote(697) <= \<const0>\;
  ToVote(696) <= \<const0>\;
  ToVote(695) <= \<const0>\;
  ToVote(694) <= \<const0>\;
  ToVote(693) <= \<const0>\;
  ToVote(692) <= \<const0>\;
  ToVote(691) <= \<const0>\;
  ToVote(690) <= \<const0>\;
  ToVote(689) <= \<const0>\;
  ToVote(688) <= \<const0>\;
  ToVote(687) <= \<const0>\;
  ToVote(686) <= \<const0>\;
  ToVote(685) <= \<const0>\;
  ToVote(684) <= \<const0>\;
  ToVote(683) <= \<const0>\;
  ToVote(682) <= \<const0>\;
  ToVote(681) <= \<const0>\;
  ToVote(680) <= \<const0>\;
  ToVote(679) <= \<const0>\;
  ToVote(678) <= \<const0>\;
  ToVote(677) <= \<const0>\;
  ToVote(676) <= \<const0>\;
  ToVote(675) <= \<const0>\;
  ToVote(674) <= \<const0>\;
  ToVote(673) <= \<const0>\;
  ToVote(672) <= \<const0>\;
  ToVote(671) <= \<const0>\;
  ToVote(670) <= \<const0>\;
  ToVote(669) <= \<const0>\;
  ToVote(668) <= \<const0>\;
  ToVote(667) <= \<const0>\;
  ToVote(666) <= \<const0>\;
  ToVote(665) <= \<const0>\;
  ToVote(664) <= \<const0>\;
  ToVote(663) <= \<const0>\;
  ToVote(662) <= \<const0>\;
  ToVote(661) <= \<const0>\;
  ToVote(660) <= \<const0>\;
  ToVote(659) <= \<const0>\;
  ToVote(658) <= \<const0>\;
  ToVote(657) <= \<const0>\;
  ToVote(656) <= \<const0>\;
  ToVote(655) <= \<const0>\;
  ToVote(654) <= \<const0>\;
  ToVote(653) <= \<const0>\;
  ToVote(652) <= \<const0>\;
  ToVote(651) <= \<const0>\;
  ToVote(650) <= \<const0>\;
  ToVote(649) <= \<const0>\;
  ToVote(648) <= \<const0>\;
  ToVote(647) <= \<const0>\;
  ToVote(646) <= \<const0>\;
  ToVote(645) <= \<const0>\;
  ToVote(644) <= \<const0>\;
  ToVote(643) <= \<const0>\;
  ToVote(642) <= \<const0>\;
  ToVote(641) <= \<const0>\;
  ToVote(640) <= \<const0>\;
  ToVote(639) <= \<const0>\;
  ToVote(638) <= \<const0>\;
  ToVote(637) <= \<const0>\;
  ToVote(636) <= \<const0>\;
  ToVote(635) <= \<const0>\;
  ToVote(634) <= \<const0>\;
  ToVote(633) <= \<const0>\;
  ToVote(632) <= \<const0>\;
  ToVote(631) <= \<const0>\;
  ToVote(630) <= \<const0>\;
  ToVote(629) <= \<const0>\;
  ToVote(628) <= \<const0>\;
  ToVote(627) <= \<const0>\;
  ToVote(626) <= \<const0>\;
  ToVote(625) <= \<const0>\;
  ToVote(624) <= \<const0>\;
  ToVote(623) <= \<const0>\;
  ToVote(622) <= \<const0>\;
  ToVote(621) <= \<const0>\;
  ToVote(620) <= \<const0>\;
  ToVote(619) <= \<const0>\;
  ToVote(618) <= \<const0>\;
  ToVote(617) <= \<const0>\;
  ToVote(616) <= \<const0>\;
  ToVote(615) <= \<const0>\;
  ToVote(614) <= \<const0>\;
  ToVote(613) <= \<const0>\;
  ToVote(612) <= \<const0>\;
  ToVote(611) <= \<const0>\;
  ToVote(610) <= \<const0>\;
  ToVote(609) <= \<const0>\;
  ToVote(608) <= \<const0>\;
  ToVote(607) <= \<const0>\;
  ToVote(606) <= \<const0>\;
  ToVote(605) <= \<const0>\;
  ToVote(604) <= \<const0>\;
  ToVote(603) <= \<const0>\;
  ToVote(602) <= \<const0>\;
  ToVote(601) <= \<const0>\;
  ToVote(600) <= \<const0>\;
  ToVote(599) <= \<const0>\;
  ToVote(598) <= \<const0>\;
  ToVote(597) <= \<const0>\;
  ToVote(596) <= \<const0>\;
  ToVote(595) <= \<const0>\;
  ToVote(594) <= \<const0>\;
  ToVote(593) <= \<const0>\;
  ToVote(592) <= \<const0>\;
  ToVote(591) <= \<const0>\;
  ToVote(590) <= \<const0>\;
  ToVote(589) <= \<const0>\;
  ToVote(588) <= \<const0>\;
  ToVote(587) <= \<const0>\;
  ToVote(586) <= \<const0>\;
  ToVote(585) <= \<const0>\;
  ToVote(584) <= \<const0>\;
  ToVote(583) <= \<const0>\;
  ToVote(582) <= \<const0>\;
  ToVote(581) <= \<const0>\;
  ToVote(580) <= \<const0>\;
  ToVote(579) <= \<const0>\;
  ToVote(578) <= \<const0>\;
  ToVote(577) <= \<const0>\;
  ToVote(576) <= \<const0>\;
  ToVote(575) <= \<const0>\;
  ToVote(574) <= \<const0>\;
  ToVote(573) <= \<const0>\;
  ToVote(572) <= \<const0>\;
  ToVote(571) <= \<const0>\;
  ToVote(570) <= \<const0>\;
  ToVote(569) <= \<const0>\;
  ToVote(568) <= \<const0>\;
  ToVote(567) <= \<const0>\;
  ToVote(566) <= \<const0>\;
  ToVote(565) <= \<const0>\;
  ToVote(564) <= \<const0>\;
  ToVote(563) <= \<const0>\;
  ToVote(562) <= \<const0>\;
  ToVote(561) <= \<const0>\;
  ToVote(560) <= \<const0>\;
  ToVote(559) <= \<const0>\;
  ToVote(558) <= \<const0>\;
  ToVote(557) <= \<const0>\;
  ToVote(556) <= \<const0>\;
  ToVote(555) <= \<const0>\;
  ToVote(554) <= \<const0>\;
  ToVote(553) <= \<const0>\;
  ToVote(552) <= \<const0>\;
  ToVote(551) <= \<const0>\;
  ToVote(550) <= \<const0>\;
  ToVote(549) <= \<const0>\;
  ToVote(548) <= \<const0>\;
  ToVote(547) <= \<const0>\;
  ToVote(546) <= \<const0>\;
  ToVote(545) <= \<const0>\;
  ToVote(544) <= \<const0>\;
  ToVote(543) <= \<const0>\;
  ToVote(542) <= \<const0>\;
  ToVote(541) <= \<const0>\;
  ToVote(540) <= \<const0>\;
  ToVote(539) <= \<const0>\;
  ToVote(538) <= \<const0>\;
  ToVote(537) <= \<const0>\;
  ToVote(536) <= \<const0>\;
  ToVote(535) <= \<const0>\;
  ToVote(534) <= \<const0>\;
  ToVote(533) <= \<const0>\;
  ToVote(532) <= \<const0>\;
  ToVote(531) <= \<const0>\;
  ToVote(530) <= \<const0>\;
  ToVote(529) <= \<const0>\;
  ToVote(528) <= \<const0>\;
  ToVote(527) <= \<const0>\;
  ToVote(526) <= \<const0>\;
  ToVote(525) <= \<const0>\;
  ToVote(524) <= \<const0>\;
  ToVote(523) <= \<const0>\;
  ToVote(522) <= \<const0>\;
  ToVote(521) <= \<const0>\;
  ToVote(520) <= \<const0>\;
  ToVote(519) <= \<const0>\;
  ToVote(518) <= \<const0>\;
  ToVote(517) <= \<const0>\;
  ToVote(516) <= \<const0>\;
  ToVote(515) <= \<const0>\;
  ToVote(514) <= \<const0>\;
  ToVote(513) <= \<const0>\;
  ToVote(512) <= \<const0>\;
  ToVote(511) <= \<const0>\;
  ToVote(510) <= \<const0>\;
  ToVote(509) <= \<const0>\;
  ToVote(508) <= \<const0>\;
  ToVote(507) <= \<const0>\;
  ToVote(506) <= \<const0>\;
  ToVote(505) <= \<const0>\;
  ToVote(504) <= \<const0>\;
  ToVote(503) <= \<const0>\;
  ToVote(502) <= \<const0>\;
  ToVote(501) <= \<const0>\;
  ToVote(500) <= \<const0>\;
  ToVote(499) <= \<const0>\;
  ToVote(498) <= \<const0>\;
  ToVote(497) <= \<const0>\;
  ToVote(496) <= \<const0>\;
  ToVote(495) <= \<const0>\;
  ToVote(494) <= \<const0>\;
  ToVote(493) <= \<const0>\;
  ToVote(492) <= \<const0>\;
  ToVote(491) <= \<const0>\;
  ToVote(490) <= \<const0>\;
  ToVote(489) <= \<const0>\;
  ToVote(488) <= \<const0>\;
  ToVote(487) <= \<const0>\;
  ToVote(486) <= \<const0>\;
  ToVote(485) <= \<const0>\;
  ToVote(484) <= \<const0>\;
  ToVote(483) <= \<const0>\;
  ToVote(482) <= \<const0>\;
  ToVote(481) <= \<const0>\;
  ToVote(480) <= \<const0>\;
  ToVote(479) <= \<const0>\;
  ToVote(478) <= \<const0>\;
  ToVote(477) <= \<const0>\;
  ToVote(476) <= \<const0>\;
  ToVote(475) <= \<const0>\;
  ToVote(474) <= \<const0>\;
  ToVote(473) <= \<const0>\;
  ToVote(472) <= \<const0>\;
  ToVote(471) <= \<const0>\;
  ToVote(470) <= \<const0>\;
  ToVote(469) <= \<const0>\;
  ToVote(468) <= \<const0>\;
  ToVote(467) <= \<const0>\;
  ToVote(466) <= \<const0>\;
  ToVote(465) <= \<const0>\;
  ToVote(464) <= \<const0>\;
  ToVote(463) <= \<const0>\;
  ToVote(462) <= \<const0>\;
  ToVote(461) <= \<const0>\;
  ToVote(460) <= \<const0>\;
  ToVote(459) <= \<const0>\;
  ToVote(458) <= \<const0>\;
  ToVote(457) <= \<const0>\;
  ToVote(456) <= \<const0>\;
  ToVote(455) <= \<const0>\;
  ToVote(454) <= \<const0>\;
  ToVote(453) <= \<const0>\;
  ToVote(452) <= \<const0>\;
  ToVote(451) <= \<const0>\;
  ToVote(450) <= \<const0>\;
  ToVote(449) <= \<const0>\;
  ToVote(448) <= \<const0>\;
  ToVote(447) <= \<const0>\;
  ToVote(446) <= \<const0>\;
  ToVote(445) <= \<const0>\;
  ToVote(444) <= \<const0>\;
  ToVote(443) <= \<const0>\;
  ToVote(442) <= \<const0>\;
  ToVote(441) <= \<const0>\;
  ToVote(440) <= \<const0>\;
  ToVote(439) <= \<const0>\;
  ToVote(438) <= \<const0>\;
  ToVote(437) <= \<const0>\;
  ToVote(436) <= \<const0>\;
  ToVote(435) <= \<const0>\;
  ToVote(434) <= \<const0>\;
  ToVote(433) <= \<const0>\;
  ToVote(432) <= \<const0>\;
  ToVote(431) <= \<const0>\;
  ToVote(430) <= \<const0>\;
  ToVote(429) <= \<const0>\;
  ToVote(428) <= \<const0>\;
  ToVote(427) <= \<const0>\;
  ToVote(426) <= \<const0>\;
  ToVote(425) <= \<const0>\;
  ToVote(424) <= \<const0>\;
  ToVote(423) <= \<const0>\;
  ToVote(422) <= \<const0>\;
  ToVote(421) <= \<const0>\;
  ToVote(420) <= \<const0>\;
  ToVote(419) <= \<const0>\;
  ToVote(418) <= \<const0>\;
  ToVote(417) <= \<const0>\;
  ToVote(416) <= \<const0>\;
  ToVote(415) <= \<const0>\;
  ToVote(414) <= \<const0>\;
  ToVote(413) <= \<const0>\;
  ToVote(412) <= \<const0>\;
  ToVote(411) <= \<const0>\;
  ToVote(410) <= \<const0>\;
  ToVote(409) <= \<const0>\;
  ToVote(408) <= \<const0>\;
  ToVote(407) <= \<const0>\;
  ToVote(406) <= \<const0>\;
  ToVote(405) <= \<const0>\;
  ToVote(404) <= \<const0>\;
  ToVote(403) <= \<const0>\;
  ToVote(402) <= \<const0>\;
  ToVote(401) <= \<const0>\;
  ToVote(400) <= \<const0>\;
  ToVote(399) <= \<const0>\;
  ToVote(398) <= \<const0>\;
  ToVote(397) <= \<const0>\;
  ToVote(396) <= \<const0>\;
  ToVote(395) <= \<const0>\;
  ToVote(394) <= \<const0>\;
  ToVote(393) <= \<const0>\;
  ToVote(392) <= \<const0>\;
  ToVote(391) <= \<const0>\;
  ToVote(390) <= \<const0>\;
  ToVote(389) <= \<const0>\;
  ToVote(388) <= \<const0>\;
  ToVote(387) <= \<const0>\;
  ToVote(386) <= \<const0>\;
  ToVote(385) <= \<const0>\;
  ToVote(384) <= \<const0>\;
  ToVote(383) <= \<const0>\;
  ToVote(382) <= \<const0>\;
  ToVote(381) <= \<const0>\;
  ToVote(380) <= \<const0>\;
  ToVote(379) <= \<const0>\;
  ToVote(378) <= \<const0>\;
  ToVote(377) <= \<const0>\;
  ToVote(376) <= \<const0>\;
  ToVote(375) <= \<const0>\;
  ToVote(374) <= \<const0>\;
  ToVote(373) <= \<const0>\;
  ToVote(372) <= \<const0>\;
  ToVote(371) <= \<const0>\;
  ToVote(370) <= \<const0>\;
  ToVote(369) <= \<const0>\;
  ToVote(368) <= \<const0>\;
  ToVote(367) <= \<const0>\;
  ToVote(366) <= \<const0>\;
  ToVote(365) <= \<const0>\;
  ToVote(364) <= \<const0>\;
  ToVote(363) <= \<const0>\;
  ToVote(362) <= \<const0>\;
  ToVote(361) <= \<const0>\;
  ToVote(360) <= \<const0>\;
  ToVote(359) <= \<const0>\;
  ToVote(358) <= \<const0>\;
  ToVote(357) <= \<const0>\;
  ToVote(356) <= \<const0>\;
  ToVote(355) <= \<const0>\;
  ToVote(354) <= \<const0>\;
  ToVote(353) <= \<const0>\;
  ToVote(352) <= \<const0>\;
  ToVote(351) <= \<const0>\;
  ToVote(350) <= \<const0>\;
  ToVote(349) <= \<const0>\;
  ToVote(348) <= \<const0>\;
  ToVote(347) <= \<const0>\;
  ToVote(346) <= \<const0>\;
  ToVote(345) <= \<const0>\;
  ToVote(344) <= \<const0>\;
  ToVote(343) <= \<const0>\;
  ToVote(342) <= \<const0>\;
  ToVote(341) <= \<const0>\;
  ToVote(340) <= \<const0>\;
  ToVote(339) <= \<const0>\;
  ToVote(338) <= \<const0>\;
  ToVote(337) <= \<const0>\;
  ToVote(336) <= \<const0>\;
  ToVote(335) <= \<const0>\;
  ToVote(334) <= \<const0>\;
  ToVote(333) <= \<const0>\;
  ToVote(332) <= \<const0>\;
  ToVote(331) <= \<const0>\;
  ToVote(330) <= \<const0>\;
  ToVote(329) <= \<const0>\;
  ToVote(328) <= \<const0>\;
  ToVote(327) <= \<const0>\;
  ToVote(326) <= \<const0>\;
  ToVote(325) <= \<const0>\;
  ToVote(324) <= \<const0>\;
  ToVote(323) <= \<const0>\;
  ToVote(322) <= \<const0>\;
  ToVote(321) <= \<const0>\;
  ToVote(320) <= \<const0>\;
  ToVote(319) <= \<const0>\;
  ToVote(318) <= \<const0>\;
  ToVote(317) <= \<const0>\;
  ToVote(316) <= \<const0>\;
  ToVote(315) <= \<const0>\;
  ToVote(314) <= \<const0>\;
  ToVote(313) <= \<const0>\;
  ToVote(312) <= \<const0>\;
  ToVote(311) <= \<const0>\;
  ToVote(310) <= \<const0>\;
  ToVote(309) <= \<const0>\;
  ToVote(308) <= \<const0>\;
  ToVote(307) <= \<const0>\;
  ToVote(306) <= \<const0>\;
  ToVote(305) <= \<const0>\;
  ToVote(304) <= \<const0>\;
  ToVote(303) <= \<const0>\;
  ToVote(302) <= \<const0>\;
  ToVote(301) <= \<const0>\;
  ToVote(300) <= \<const0>\;
  ToVote(299) <= \<const0>\;
  ToVote(298) <= \<const0>\;
  ToVote(297) <= \<const0>\;
  ToVote(296) <= \<const0>\;
  ToVote(295) <= \<const0>\;
  ToVote(294) <= \<const0>\;
  ToVote(293) <= \<const0>\;
  ToVote(292) <= \<const0>\;
  ToVote(291) <= \<const0>\;
  ToVote(290) <= \<const0>\;
  ToVote(289) <= \<const0>\;
  ToVote(288) <= \<const0>\;
  ToVote(287) <= \<const0>\;
  ToVote(286) <= \<const0>\;
  ToVote(285) <= \<const0>\;
  ToVote(284) <= \<const0>\;
  ToVote(283) <= \<const0>\;
  ToVote(282) <= \<const0>\;
  ToVote(281) <= \<const0>\;
  ToVote(280) <= \<const0>\;
  ToVote(279) <= \<const0>\;
  ToVote(278) <= \<const0>\;
  ToVote(277) <= \<const0>\;
  ToVote(276) <= \<const0>\;
  ToVote(275) <= \<const0>\;
  ToVote(274) <= \<const0>\;
  ToVote(273) <= \<const0>\;
  ToVote(272) <= \<const0>\;
  ToVote(271) <= \<const0>\;
  ToVote(270) <= \<const0>\;
  ToVote(269) <= \<const0>\;
  ToVote(268) <= \<const0>\;
  ToVote(267) <= \<const0>\;
  ToVote(266) <= \<const0>\;
  ToVote(265) <= \<const0>\;
  ToVote(264) <= \<const0>\;
  ToVote(263) <= \<const0>\;
  ToVote(262) <= \<const0>\;
  ToVote(261) <= \<const0>\;
  ToVote(260) <= \<const0>\;
  ToVote(259) <= \<const0>\;
  ToVote(258) <= \<const0>\;
  ToVote(257) <= \<const0>\;
  ToVote(256) <= \<const0>\;
  ToVote(255) <= \<const0>\;
  ToVote(254) <= \<const0>\;
  ToVote(253) <= \<const0>\;
  ToVote(252) <= \<const0>\;
  ToVote(251) <= \<const0>\;
  ToVote(250) <= \<const0>\;
  ToVote(249) <= \<const0>\;
  ToVote(248) <= \<const0>\;
  ToVote(247) <= \<const0>\;
  ToVote(246) <= \<const0>\;
  ToVote(245) <= \<const0>\;
  ToVote(244) <= \<const0>\;
  ToVote(243) <= \<const0>\;
  ToVote(242) <= \<const0>\;
  ToVote(241) <= \<const0>\;
  ToVote(240) <= \<const0>\;
  ToVote(239) <= \<const0>\;
  ToVote(238) <= \<const0>\;
  ToVote(237) <= \<const0>\;
  ToVote(236) <= \<const0>\;
  ToVote(235) <= \<const0>\;
  ToVote(234) <= \<const0>\;
  ToVote(233) <= \<const0>\;
  ToVote(232) <= \<const0>\;
  ToVote(231) <= \<const0>\;
  ToVote(230) <= \<const0>\;
  ToVote(229) <= \<const0>\;
  ToVote(228) <= \<const0>\;
  ToVote(227) <= \<const0>\;
  ToVote(226) <= \<const0>\;
  ToVote(225) <= \<const0>\;
  ToVote(224) <= \<const0>\;
  ToVote(223) <= \<const0>\;
  ToVote(222) <= \<const0>\;
  ToVote(221) <= \<const0>\;
  ToVote(220) <= \<const0>\;
  ToVote(219) <= \<const0>\;
  ToVote(218) <= \<const0>\;
  ToVote(217) <= \<const0>\;
  ToVote(216) <= \<const0>\;
  ToVote(215) <= \<const0>\;
  ToVote(214) <= \<const0>\;
  ToVote(213) <= \<const0>\;
  ToVote(212) <= \<const0>\;
  ToVote(211) <= \<const0>\;
  ToVote(210) <= \<const0>\;
  ToVote(209) <= \<const0>\;
  ToVote(208) <= \<const0>\;
  ToVote(207) <= \<const0>\;
  ToVote(206) <= \<const0>\;
  ToVote(205) <= \<const0>\;
  ToVote(204) <= \<const0>\;
  ToVote(203) <= \<const0>\;
  ToVote(202) <= \<const0>\;
  ToVote(201) <= \<const0>\;
  ToVote(200) <= \<const0>\;
  ToVote(199) <= \<const0>\;
  ToVote(198) <= \<const0>\;
  ToVote(197) <= \<const0>\;
  ToVote(196) <= \<const0>\;
  ToVote(195) <= \<const0>\;
  ToVote(194) <= \<const0>\;
  ToVote(193) <= \<const0>\;
  ToVote(192) <= \<const0>\;
  ToVote(191) <= \<const0>\;
  ToVote(190) <= \<const0>\;
  ToVote(189) <= \<const0>\;
  ToVote(188) <= \<const0>\;
  ToVote(187) <= \<const0>\;
  ToVote(186) <= \<const0>\;
  ToVote(185) <= \<const0>\;
  ToVote(184) <= \<const0>\;
  ToVote(183) <= \<const0>\;
  ToVote(182) <= \<const0>\;
  ToVote(181) <= \<const0>\;
  ToVote(180) <= \<const0>\;
  ToVote(179) <= \<const0>\;
  ToVote(178) <= \<const0>\;
  ToVote(177) <= \<const0>\;
  ToVote(176) <= \<const0>\;
  ToVote(175) <= \<const0>\;
  ToVote(174) <= \<const0>\;
  ToVote(173) <= \<const0>\;
  ToVote(172) <= \<const0>\;
  ToVote(171) <= \<const0>\;
  ToVote(170) <= \<const0>\;
  ToVote(169) <= \<const0>\;
  ToVote(168) <= \<const0>\;
  ToVote(167) <= \<const0>\;
  ToVote(166) <= \<const0>\;
  ToVote(165) <= \<const0>\;
  ToVote(164) <= \<const0>\;
  ToVote(163) <= \<const0>\;
  ToVote(162) <= \<const0>\;
  ToVote(161) <= \<const0>\;
  ToVote(160) <= \<const0>\;
  ToVote(159) <= \<const0>\;
  ToVote(158) <= \<const0>\;
  ToVote(157) <= \<const0>\;
  ToVote(156) <= \<const0>\;
  ToVote(155) <= \<const0>\;
  ToVote(154) <= \<const0>\;
  ToVote(153) <= \<const0>\;
  ToVote(152) <= \<const0>\;
  ToVote(151) <= \<const0>\;
  ToVote(150) <= \<const0>\;
  ToVote(149) <= \<const0>\;
  ToVote(148) <= \<const0>\;
  ToVote(147) <= \<const0>\;
  ToVote(146) <= \<const0>\;
  ToVote(145) <= \<const0>\;
  ToVote(144) <= \<const0>\;
  ToVote(143) <= \<const0>\;
  ToVote(142) <= \<const0>\;
  ToVote(141) <= \<const0>\;
  ToVote(140) <= \<const0>\;
  ToVote(139) <= \<const0>\;
  ToVote(138) <= \<const0>\;
  ToVote(137) <= \<const0>\;
  ToVote(136) <= \<const0>\;
  ToVote(135) <= \<const0>\;
  ToVote(134) <= \<const0>\;
  ToVote(133) <= \<const0>\;
  ToVote(132) <= \<const0>\;
  ToVote(131) <= \<const0>\;
  ToVote(130) <= \<const0>\;
  ToVote(129) <= \<const0>\;
  ToVote(128) <= \<const0>\;
  ToVote(127) <= \<const0>\;
  ToVote(126) <= \<const0>\;
  ToVote(125) <= \<const0>\;
  ToVote(124) <= \<const0>\;
  ToVote(123) <= \<const0>\;
  ToVote(122) <= \<const0>\;
  ToVote(121) <= \<const0>\;
  ToVote(120) <= \<const0>\;
  ToVote(119) <= \<const0>\;
  ToVote(118) <= \<const0>\;
  ToVote(117) <= \<const0>\;
  ToVote(116) <= \<const0>\;
  ToVote(115) <= \<const0>\;
  ToVote(114) <= \<const0>\;
  ToVote(113) <= \<const0>\;
  ToVote(112) <= \<const0>\;
  ToVote(111) <= \<const0>\;
  ToVote(110) <= \<const0>\;
  ToVote(109) <= \<const0>\;
  ToVote(108) <= \<const0>\;
  ToVote(107) <= \<const0>\;
  ToVote(106) <= \<const0>\;
  ToVote(105) <= \<const0>\;
  ToVote(104) <= \<const0>\;
  ToVote(103) <= \<const0>\;
  ToVote(102) <= \<const0>\;
  ToVote(101) <= \<const0>\;
  ToVote(100) <= \<const0>\;
  ToVote(99) <= \<const0>\;
  ToVote(98) <= \<const0>\;
  ToVote(97) <= \<const0>\;
  ToVote(96) <= \<const0>\;
  ToVote(95) <= \<const0>\;
  ToVote(94) <= \<const0>\;
  ToVote(93) <= \<const0>\;
  ToVote(92) <= \<const0>\;
  ToVote(91) <= \<const0>\;
  ToVote(90) <= \<const0>\;
  ToVote(89) <= \<const0>\;
  ToVote(88) <= \<const0>\;
  ToVote(87) <= \<const0>\;
  ToVote(86) <= \<const0>\;
  ToVote(85) <= \<const0>\;
  ToVote(84) <= \<const0>\;
  ToVote(83) <= \<const0>\;
  ToVote(82) <= \<const0>\;
  ToVote(81) <= \<const0>\;
  ToVote(80) <= \<const0>\;
  ToVote(79) <= \<const0>\;
  ToVote(78) <= \<const0>\;
  ToVote(77) <= \<const0>\;
  ToVote(76) <= \<const0>\;
  ToVote(75) <= \<const0>\;
  ToVote(74) <= \<const0>\;
  ToVote(73) <= \<const0>\;
  ToVote(72) <= \<const0>\;
  ToVote(71) <= \<const0>\;
  ToVote(70) <= \<const0>\;
  ToVote(69) <= \<const0>\;
  ToVote(68) <= \<const0>\;
  ToVote(67) <= \<const0>\;
  ToVote(66) <= \<const0>\;
  ToVote(65) <= \<const0>\;
  ToVote(64) <= \<const0>\;
  ToVote(63) <= \<const0>\;
  ToVote(62) <= \<const0>\;
  ToVote(61) <= \<const0>\;
  ToVote(60) <= \<const0>\;
  ToVote(59) <= \<const0>\;
  ToVote(58) <= \<const0>\;
  ToVote(57) <= \<const0>\;
  ToVote(56) <= \<const0>\;
  ToVote(55) <= \<const0>\;
  ToVote(54) <= \<const0>\;
  ToVote(53) <= \<const0>\;
  ToVote(52) <= \<const0>\;
  ToVote(51) <= \<const0>\;
  ToVote(50) <= \<const0>\;
  ToVote(49) <= \<const0>\;
  ToVote(48) <= \<const0>\;
  ToVote(47) <= \<const0>\;
  ToVote(46) <= \<const0>\;
  ToVote(45) <= \<const0>\;
  ToVote(44) <= \<const0>\;
  ToVote(43) <= \<const0>\;
  ToVote(42) <= \<const0>\;
  ToVote(41) <= \<const0>\;
  ToVote(40) <= \<const0>\;
  ToVote(39) <= \<const0>\;
  ToVote(38) <= \<const0>\;
  ToVote(37) <= \<const0>\;
  ToVote(36) <= \<const0>\;
  ToVote(35) <= \<const0>\;
  ToVote(34) <= \<const0>\;
  ToVote(33) <= \<const0>\;
  ToVote(32) <= \<const0>\;
  ToVote(31) <= \<const0>\;
  ToVote(30) <= \<const0>\;
  ToVote(29) <= \<const0>\;
  ToVote(28) <= \<const0>\;
  ToVote(27) <= \<const0>\;
  ToVote(26) <= \<const0>\;
  ToVote(25) <= \<const0>\;
  ToVote(24) <= \<const0>\;
  ToVote(23) <= \<const0>\;
  ToVote(22) <= \<const0>\;
  ToVote(21) <= \<const0>\;
  ToVote(20) <= \<const0>\;
  ToVote(19) <= \<const0>\;
  ToVote(18) <= \<const0>\;
  ToVote(17) <= \<const0>\;
  ToVote(16) <= \<const0>\;
  ToVote(15) <= \<const0>\;
  ToVote(14) <= \<const0>\;
  ToVote(13) <= \<const0>\;
  ToVote(12) <= \<const0>\;
  ToVote(11) <= \<const0>\;
  ToVote(10) <= \<const0>\;
  ToVote(9) <= \<const0>\;
  ToVote(8) <= \<const0>\;
  ToVote(7) <= \<const0>\;
  ToVote(6) <= \<const0>\;
  ToVote(5) <= \<const0>\;
  ToVote(4) <= \<const0>\;
  ToVote(3) <= \<const0>\;
  ToVote(2) <= \<const0>\;
  ToVote(1) <= \<const0>\;
  ToVote(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
IOModule_Core_I1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core
     port map (
      Clk => Clk,
      D(7 downto 0) => write_data(7 downto 0),
      E(0) => uart_tx_write,
      Q(4) => lmb_abus_Q(2),
      Q(3) => lmb_abus_Q(3),
      Q(2) => lmb_abus_Q(4),
      Q(1) => lmb_abus_Q(5),
      Q(0) => lmb_abus_Q(6),
      Rst => Rst,
      Sl_DBus(7) => \^sl_dbus\(24),
      Sl_DBus(6) => \^sl_dbus\(25),
      Sl_DBus(5) => \^sl_dbus\(26),
      Sl_DBus(4) => \^sl_dbus\(27),
      Sl_DBus(3) => \^sl_dbus\(28),
      Sl_DBus(2) => \^sl_dbus\(29),
      Sl_DBus(1) => \^sl_dbus\(30),
      Sl_DBus(0) => \^sl_dbus\(31),
      \TMR_No.RX_Data_reg[0]\ => \^sl_wait\,
      UART_Interrupt => UART_Interrupt,
      UART_Rx => UART_Rx,
      UART_Tx => UART_Tx
    );
Sl_Ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lmb_reg_read_Q,
      I1 => lmb_reg_write,
      O => Sl_Ready
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\lmb_abus_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_ABus(25),
      Q => lmb_abus_Q(2),
      R => '0'
    );
\lmb_abus_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_ABus(26),
      Q => lmb_abus_Q(3),
      R => '0'
    );
\lmb_abus_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_ABus(27),
      Q => lmb_abus_Q(4),
      R => '0'
    );
\lmb_abus_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_ABus(28),
      Q => lmb_abus_Q(5),
      R => '0'
    );
\lmb_abus_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_ABus(29),
      Q => lmb_abus_Q(6),
      R => '0'
    );
lmb_reg_read_Q_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^sl_wait\,
      Q => lmb_reg_read_Q,
      R => '0'
    );
lmb_reg_read_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LMB_AddrStrobe,
      I1 => LMB_ReadStrobe,
      O => lmb_reg_read0
    );
lmb_reg_read_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => lmb_reg_read0,
      Q => \^sl_wait\,
      R => '0'
    );
lmb_reg_write_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LMB_AddrStrobe,
      I1 => LMB_WriteStrobe,
      O => lmb_reg_write0
    );
lmb_reg_write_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => lmb_reg_write0,
      Q => lmb_reg_write,
      R => '0'
    );
uart_tx_write_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => lmb_abus_Q(3),
      I1 => lmb_abus_Q(2),
      I2 => lmb_reg_write,
      I3 => lmb_abus_Q(6),
      I4 => lmb_abus_Q(5),
      I5 => lmb_abus_Q(4),
      O => uart_tx_write
    );
\write_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(31),
      Q => write_data(0),
      R => '0'
    );
\write_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(21),
      Q => write_data(10),
      R => '0'
    );
\write_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(20),
      Q => write_data(11),
      R => '0'
    );
\write_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(19),
      Q => write_data(12),
      R => '0'
    );
\write_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(18),
      Q => write_data(13),
      R => '0'
    );
\write_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(17),
      Q => write_data(14),
      R => '0'
    );
\write_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(16),
      Q => write_data(15),
      R => '0'
    );
\write_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(15),
      Q => write_data(16),
      R => '0'
    );
\write_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(14),
      Q => write_data(17),
      R => '0'
    );
\write_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(13),
      Q => write_data(18),
      R => '0'
    );
\write_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(12),
      Q => write_data(19),
      R => '0'
    );
\write_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(30),
      Q => write_data(1),
      R => '0'
    );
\write_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(11),
      Q => write_data(20),
      R => '0'
    );
\write_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(10),
      Q => write_data(21),
      R => '0'
    );
\write_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(9),
      Q => write_data(22),
      R => '0'
    );
\write_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(8),
      Q => write_data(23),
      R => '0'
    );
\write_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(7),
      Q => write_data(24),
      R => '0'
    );
\write_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(6),
      Q => write_data(25),
      R => '0'
    );
\write_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(5),
      Q => write_data(26),
      R => '0'
    );
\write_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(4),
      Q => write_data(27),
      R => '0'
    );
\write_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(3),
      Q => write_data(28),
      R => '0'
    );
\write_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(2),
      Q => write_data(29),
      R => '0'
    );
\write_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(29),
      Q => write_data(2),
      R => '0'
    );
\write_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(1),
      Q => write_data(30),
      R => '0'
    );
\write_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(0),
      Q => write_data(31),
      R => '0'
    );
\write_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(28),
      Q => write_data(3),
      R => '0'
    );
\write_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(27),
      Q => write_data(4),
      R => '0'
    );
\write_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(26),
      Q => write_data(5),
      R => '0'
    );
\write_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(25),
      Q => write_data(6),
      R => '0'
    );
\write_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(24),
      Q => write_data(7),
      R => '0'
    );
\write_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(23),
      Q => write_data(8),
      R => '0'
    );
\write_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => LMB_WriteDBus(22),
      Q => write_data(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    UART_Tx : out STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_iomodule_0_0,iomodule,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "iomodule,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_FIT1_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT1_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT2_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT2_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT3_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT3_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT4_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_FIT4_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_GPI1_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_GPI2_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_GPI3_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_GPI4_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_INTC_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_INTC_IRQ_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Addr_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Read_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Write_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT1_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT1_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT2_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT2_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT3_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT3_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT4_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_PIT4_Toggle_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_GPO1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPO2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPO3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPO4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_INTC_Interrupt_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO_Byte_Enable_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_IO_Write_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_ToVote_UNCONNECTED : STD_LOGIC_VECTOR ( 1023 downto 0 );
  attribute C_AVOID_PRIMITIVES : integer;
  attribute C_AVOID_PRIMITIVES of U0 : label is 0;
  attribute C_BASEADDR : string;
  attribute C_BASEADDR of U0 : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FIT1_INTERRUPT : integer;
  attribute C_FIT1_INTERRUPT of U0 : label is 0;
  attribute C_FIT1_No_CLOCKS : integer;
  attribute C_FIT1_No_CLOCKS of U0 : label is 6216;
  attribute C_FIT2_INTERRUPT : integer;
  attribute C_FIT2_INTERRUPT of U0 : label is 0;
  attribute C_FIT2_No_CLOCKS : integer;
  attribute C_FIT2_No_CLOCKS of U0 : label is 6216;
  attribute C_FIT3_INTERRUPT : integer;
  attribute C_FIT3_INTERRUPT of U0 : label is 0;
  attribute C_FIT3_No_CLOCKS : integer;
  attribute C_FIT3_No_CLOCKS of U0 : label is 6216;
  attribute C_FIT4_INTERRUPT : integer;
  attribute C_FIT4_INTERRUPT of U0 : label is 0;
  attribute C_FIT4_No_CLOCKS : integer;
  attribute C_FIT4_No_CLOCKS of U0 : label is 6216;
  attribute C_FREQ : integer;
  attribute C_FREQ of U0 : label is 100000000;
  attribute C_GPI1_INTERRUPT : integer;
  attribute C_GPI1_INTERRUPT of U0 : label is 0;
  attribute C_GPI1_SIZE : integer;
  attribute C_GPI1_SIZE of U0 : label is 32;
  attribute C_GPI2_INTERRUPT : integer;
  attribute C_GPI2_INTERRUPT of U0 : label is 0;
  attribute C_GPI2_SIZE : integer;
  attribute C_GPI2_SIZE of U0 : label is 32;
  attribute C_GPI3_INTERRUPT : integer;
  attribute C_GPI3_INTERRUPT of U0 : label is 0;
  attribute C_GPI3_SIZE : integer;
  attribute C_GPI3_SIZE of U0 : label is 32;
  attribute C_GPI4_INTERRUPT : integer;
  attribute C_GPI4_INTERRUPT of U0 : label is 0;
  attribute C_GPI4_SIZE : integer;
  attribute C_GPI4_SIZE of U0 : label is 32;
  attribute C_GPO1_INIT : integer;
  attribute C_GPO1_INIT of U0 : label is 0;
  attribute C_GPO1_SIZE : integer;
  attribute C_GPO1_SIZE of U0 : label is 32;
  attribute C_GPO2_INIT : integer;
  attribute C_GPO2_INIT of U0 : label is 0;
  attribute C_GPO2_SIZE : integer;
  attribute C_GPO2_SIZE of U0 : label is 32;
  attribute C_GPO3_INIT : integer;
  attribute C_GPO3_INIT of U0 : label is 0;
  attribute C_GPO3_SIZE : integer;
  attribute C_GPO3_SIZE of U0 : label is 32;
  attribute C_GPO4_INIT : integer;
  attribute C_GPO4_INIT of U0 : label is 0;
  attribute C_GPO4_SIZE : integer;
  attribute C_GPO4_SIZE of U0 : label is 32;
  attribute C_HIGHADDR : string;
  attribute C_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "iomodule_0";
  attribute C_INTC_ADDR_WIDTH : integer;
  attribute C_INTC_ADDR_WIDTH of U0 : label is 32;
  attribute C_INTC_ASYNC_INTR : string;
  attribute C_INTC_ASYNC_INTR of U0 : label is "16'b1111111111111111";
  attribute C_INTC_BASE_VECTORS : string;
  attribute C_INTC_BASE_VECTORS of U0 : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_INTC_HAS_FAST : integer;
  attribute C_INTC_HAS_FAST of U0 : label is 0;
  attribute C_INTC_INTR_SIZE : integer;
  attribute C_INTC_INTR_SIZE of U0 : label is 1;
  attribute C_INTC_LEVEL_EDGE : string;
  attribute C_INTC_LEVEL_EDGE of U0 : label is "16'b0000000000000000";
  attribute C_INTC_NUM_SYNC_FF : integer;
  attribute C_INTC_NUM_SYNC_FF of U0 : label is 2;
  attribute C_INTC_POSITIVE : string;
  attribute C_INTC_POSITIVE of U0 : label is "16'b1111111111111111";
  attribute C_INTC_USE_EXT_INTR : integer;
  attribute C_INTC_USE_EXT_INTR of U0 : label is 0;
  attribute C_IO_BASEADDR : string;
  attribute C_IO_BASEADDR of U0 : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_IO_HIGHADDR : string;
  attribute C_IO_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_IO_MASK : string;
  attribute C_IO_MASK of U0 : label is "64'b0000000000000000000000000000000000000000100000000000000000000000";
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of U0 : label is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of U0 : label is 32;
  attribute C_MASK : string;
  attribute C_MASK of U0 : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_PIT1_INTERRUPT : integer;
  attribute C_PIT1_INTERRUPT of U0 : label is 0;
  attribute C_PIT1_PRESCALER : integer;
  attribute C_PIT1_PRESCALER of U0 : label is 0;
  attribute C_PIT1_READABLE : integer;
  attribute C_PIT1_READABLE of U0 : label is 1;
  attribute C_PIT1_SIZE : integer;
  attribute C_PIT1_SIZE of U0 : label is 32;
  attribute C_PIT2_INTERRUPT : integer;
  attribute C_PIT2_INTERRUPT of U0 : label is 0;
  attribute C_PIT2_PRESCALER : integer;
  attribute C_PIT2_PRESCALER of U0 : label is 0;
  attribute C_PIT2_READABLE : integer;
  attribute C_PIT2_READABLE of U0 : label is 1;
  attribute C_PIT2_SIZE : integer;
  attribute C_PIT2_SIZE of U0 : label is 32;
  attribute C_PIT3_INTERRUPT : integer;
  attribute C_PIT3_INTERRUPT of U0 : label is 0;
  attribute C_PIT3_PRESCALER : integer;
  attribute C_PIT3_PRESCALER of U0 : label is 0;
  attribute C_PIT3_READABLE : integer;
  attribute C_PIT3_READABLE of U0 : label is 1;
  attribute C_PIT3_SIZE : integer;
  attribute C_PIT3_SIZE of U0 : label is 32;
  attribute C_PIT4_INTERRUPT : integer;
  attribute C_PIT4_INTERRUPT of U0 : label is 0;
  attribute C_PIT4_PRESCALER : integer;
  attribute C_PIT4_PRESCALER of U0 : label is 0;
  attribute C_PIT4_READABLE : integer;
  attribute C_PIT4_READABLE of U0 : label is 1;
  attribute C_PIT4_SIZE : integer;
  attribute C_PIT4_SIZE of U0 : label is 32;
  attribute C_TMR : integer;
  attribute C_TMR of U0 : label is 0;
  attribute C_UART_BAUDRATE : integer;
  attribute C_UART_BAUDRATE of U0 : label is 9600;
  attribute C_UART_DATA_BITS : integer;
  attribute C_UART_DATA_BITS of U0 : label is 8;
  attribute C_UART_ERROR_INTERRUPT : integer;
  attribute C_UART_ERROR_INTERRUPT of U0 : label is 0;
  attribute C_UART_ODD_PARITY : integer;
  attribute C_UART_ODD_PARITY of U0 : label is 0;
  attribute C_UART_PROG_BAUDRATE : integer;
  attribute C_UART_PROG_BAUDRATE of U0 : label is 0;
  attribute C_UART_RX_INTERRUPT : integer;
  attribute C_UART_RX_INTERRUPT of U0 : label is 0;
  attribute C_UART_TX_INTERRUPT : integer;
  attribute C_UART_TX_INTERRUPT of U0 : label is 0;
  attribute C_UART_USE_PARITY : integer;
  attribute C_UART_USE_PARITY of U0 : label is 0;
  attribute C_USE_CONFIG_RESET : integer;
  attribute C_USE_CONFIG_RESET of U0 : label is 0;
  attribute C_USE_FIT1 : integer;
  attribute C_USE_FIT1 of U0 : label is 0;
  attribute C_USE_FIT2 : integer;
  attribute C_USE_FIT2 of U0 : label is 0;
  attribute C_USE_FIT3 : integer;
  attribute C_USE_FIT3 of U0 : label is 0;
  attribute C_USE_FIT4 : integer;
  attribute C_USE_FIT4 of U0 : label is 0;
  attribute C_USE_GPI1 : integer;
  attribute C_USE_GPI1 of U0 : label is 0;
  attribute C_USE_GPI2 : integer;
  attribute C_USE_GPI2 of U0 : label is 0;
  attribute C_USE_GPI3 : integer;
  attribute C_USE_GPI3 of U0 : label is 0;
  attribute C_USE_GPI4 : integer;
  attribute C_USE_GPI4 of U0 : label is 0;
  attribute C_USE_GPO1 : integer;
  attribute C_USE_GPO1 of U0 : label is 0;
  attribute C_USE_GPO2 : integer;
  attribute C_USE_GPO2 of U0 : label is 0;
  attribute C_USE_GPO3 : integer;
  attribute C_USE_GPO3 of U0 : label is 0;
  attribute C_USE_GPO4 : integer;
  attribute C_USE_GPO4 of U0 : label is 0;
  attribute C_USE_IO_BUS : integer;
  attribute C_USE_IO_BUS of U0 : label is 0;
  attribute C_USE_PIT1 : integer;
  attribute C_USE_PIT1 of U0 : label is 0;
  attribute C_USE_PIT2 : integer;
  attribute C_USE_PIT2 of U0 : label is 0;
  attribute C_USE_PIT3 : integer;
  attribute C_USE_PIT3 of U0 : label is 0;
  attribute C_USE_PIT4 : integer;
  attribute C_USE_PIT4 of U0 : label is 0;
  attribute C_USE_TMR_DISABLE : integer;
  attribute C_USE_TMR_DISABLE of U0 : label is 0;
  attribute C_USE_UART_RX : integer;
  attribute C_USE_UART_RX of U0 : label is 1;
  attribute C_USE_UART_TX : integer;
  attribute C_USE_UART_TX of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLMB, ASSOCIATED_RESET Rst:TMR_Rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of LMB_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE";
  attribute x_interface_info of LMB_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB READSTROBE";
  attribute x_interface_info of LMB_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE";
  attribute x_interface_info of Rst : signal is "xilinx.com:signal:reset:1.0 RST.Rst RST";
  attribute x_interface_parameter of Rst : signal is "XIL_INTERFACENAME RST.Rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0";
  attribute x_interface_info of Sl_CE : signal is "xilinx.com:interface:lmb:1.0 SLMB CE";
  attribute x_interface_info of Sl_Ready : signal is "xilinx.com:interface:lmb:1.0 SLMB READY";
  attribute x_interface_info of Sl_UE : signal is "xilinx.com:interface:lmb:1.0 SLMB UE";
  attribute x_interface_info of Sl_Wait : signal is "xilinx.com:interface:lmb:1.0 SLMB WAIT";
  attribute x_interface_info of UART_Rx : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute x_interface_parameter of UART_Rx : signal is "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE";
  attribute x_interface_info of UART_Tx : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute x_interface_info of LMB_ABus : signal is "xilinx.com:interface:lmb:1.0 SLMB ABUS";
  attribute x_interface_parameter of LMB_ABus : signal is "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of LMB_BE : signal is "xilinx.com:interface:lmb:1.0 SLMB BE";
  attribute x_interface_info of LMB_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS";
  attribute x_interface_info of Sl_DBus : signal is "xilinx.com:interface:lmb:1.0 SLMB READDBUS";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule
     port map (
      Clk => Clk,
      Config_Reset => '0',
      FIT1_Interrupt => NLW_U0_FIT1_Interrupt_UNCONNECTED,
      FIT1_Toggle => NLW_U0_FIT1_Toggle_UNCONNECTED,
      FIT2_Interrupt => NLW_U0_FIT2_Interrupt_UNCONNECTED,
      FIT2_Toggle => NLW_U0_FIT2_Toggle_UNCONNECTED,
      FIT3_Interrupt => NLW_U0_FIT3_Interrupt_UNCONNECTED,
      FIT3_Toggle => NLW_U0_FIT3_Toggle_UNCONNECTED,
      FIT4_Interrupt => NLW_U0_FIT4_Interrupt_UNCONNECTED,
      FIT4_Toggle => NLW_U0_FIT4_Toggle_UNCONNECTED,
      FromAVote(1023 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      FromBVote(1023 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      GPI1(31 downto 0) => B"00000000000000000000000000000000",
      GPI1_Interrupt => NLW_U0_GPI1_Interrupt_UNCONNECTED,
      GPI2(31 downto 0) => B"00000000000000000000000000000000",
      GPI2_Interrupt => NLW_U0_GPI2_Interrupt_UNCONNECTED,
      GPI3(31 downto 0) => B"00000000000000000000000000000000",
      GPI3_Interrupt => NLW_U0_GPI3_Interrupt_UNCONNECTED,
      GPI4(31 downto 0) => B"00000000000000000000000000000000",
      GPI4_Interrupt => NLW_U0_GPI4_Interrupt_UNCONNECTED,
      GPO1(31 downto 0) => NLW_U0_GPO1_UNCONNECTED(31 downto 0),
      GPO2(31 downto 0) => NLW_U0_GPO2_UNCONNECTED(31 downto 0),
      GPO3(31 downto 0) => NLW_U0_GPO3_UNCONNECTED(31 downto 0),
      GPO4(31 downto 0) => NLW_U0_GPO4_UNCONNECTED(31 downto 0),
      INTC_IRQ => NLW_U0_INTC_IRQ_UNCONNECTED,
      INTC_IRQ_OUT => NLW_U0_INTC_IRQ_OUT_UNCONNECTED,
      INTC_Interrupt(0) => '0',
      INTC_Interrupt_Address(31 downto 0) => NLW_U0_INTC_Interrupt_Address_UNCONNECTED(31 downto 0),
      INTC_Processor_Ack(1 downto 0) => B"00",
      IO_Addr_Strobe => NLW_U0_IO_Addr_Strobe_UNCONNECTED,
      IO_Address(31 downto 0) => NLW_U0_IO_Address_UNCONNECTED(31 downto 0),
      IO_Byte_Enable(3 downto 0) => NLW_U0_IO_Byte_Enable_UNCONNECTED(3 downto 0),
      IO_Read_Data(31 downto 0) => B"00000000000000000000000000000000",
      IO_Read_Strobe => NLW_U0_IO_Read_Strobe_UNCONNECTED,
      IO_Ready => '0',
      IO_Write_Data(31 downto 0) => NLW_U0_IO_Write_Data_UNCONNECTED(31 downto 0),
      IO_Write_Strobe => NLW_U0_IO_Write_Strobe_UNCONNECTED,
      LMB_ABus(0 to 31) => LMB_ABus(0 to 31),
      LMB_AddrStrobe => LMB_AddrStrobe,
      LMB_BE(0 to 3) => LMB_BE(0 to 3),
      LMB_ReadStrobe => LMB_ReadStrobe,
      LMB_WriteDBus(0 to 31) => LMB_WriteDBus(0 to 31),
      LMB_WriteStrobe => LMB_WriteStrobe,
      PIT1_Enable => '0',
      PIT1_Interrupt => NLW_U0_PIT1_Interrupt_UNCONNECTED,
      PIT1_Toggle => NLW_U0_PIT1_Toggle_UNCONNECTED,
      PIT2_Enable => '0',
      PIT2_Interrupt => NLW_U0_PIT2_Interrupt_UNCONNECTED,
      PIT2_Toggle => NLW_U0_PIT2_Toggle_UNCONNECTED,
      PIT3_Enable => '0',
      PIT3_Interrupt => NLW_U0_PIT3_Interrupt_UNCONNECTED,
      PIT3_Toggle => NLW_U0_PIT3_Toggle_UNCONNECTED,
      PIT4_Enable => '0',
      PIT4_Interrupt => NLW_U0_PIT4_Interrupt_UNCONNECTED,
      PIT4_Toggle => NLW_U0_PIT4_Toggle_UNCONNECTED,
      Rst => Rst,
      Sl_CE => Sl_CE,
      Sl_DBus(0 to 31) => Sl_DBus(0 to 31),
      Sl_Ready => Sl_Ready,
      Sl_UE => Sl_UE,
      Sl_Wait => Sl_Wait,
      TMR_Disable => '0',
      TMR_Rst => '0',
      ToVote(1023 downto 0) => NLW_U0_ToVote_UNCONNECTED(1023 downto 0),
      UART_Interrupt => NLW_U0_UART_Interrupt_UNCONNECTED,
      UART_Rx => UART_Rx,
      UART_Tx => UART_Tx
    );
end STRUCTURE;
