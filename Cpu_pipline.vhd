library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cpu_pipline is
 
 	PORT ( clock:in std_logic;
	reg1:	out std_logic_vector(0 to 31);
	reg2:	out std_logic_vector(0 to 31);
	reg3:	out std_logic_vector(0 to 31);
	reg4:	out std_logic_vector(0 to 31);
	reg5:	out std_logic_vector(0 to 31);
	reg6:	out std_logic_vector(0 to 31);
	reg7:	out std_logic_vector(0 to 31);
	reg8:	out std_logic_vector(0 to 31);
	reg9:	out std_logic_vector(0 to 31);
	reg10:	out std_logic_vector(0 to 31);
	reg11:	out std_logic_vector(0 to 31);
	instrucao: out std_logic_vector(0 to 31);
	pc_view: out std_logic_vector(0 to 31)
	) ;
 
 
 
end Cpu_pipline;

architecture Behavioral of Cpu_pipline is




component reg_f
	port	(regwrite: in std_logic;
			clock: in std_logic;
			read_register_1:	in  std_logic_vector(0 to 4);
			read_register_2:	in  std_logic_vector(0 to 4);
			write_register:	in  std_logic_vector(0 to 4);
			write_data:			in  std_logic_vector(0 to 31);
			read_data_1: 		out std_logic_vector(0 to 31);
			read_data_2: 		out std_logic_vector(0 to 31);
			reg1:	out std_logic_vector(0 to 31);
			reg2:	out std_logic_vector(0 to 31);
			reg3:	out std_logic_vector(0 to 31);
			reg4:	out std_logic_vector(0 to 31);
			reg5:	out std_logic_vector(0 to 31);
			reg6:	out std_logic_vector(0 to 31);
			reg7:	out std_logic_vector(0 to 31);
			reg8:	out std_logic_vector(0 to 31);
			reg9:	out std_logic_vector(0 to 31);
			reg10:	out std_logic_vector(0 to 31);
			reg11:	out std_logic_vector(0 to 31)
			);

end component;


component instruction_memory

	port ( 
			instruction: out std_logic_vector(0 to 31); 
			address: in std_logic_vector(0 to 31)
		  );
		  
end component;


component soma32b
    Port ( NUM1 : in  STD_LOGIC_VECTOR (0 to 31);
           out1  : out STD_LOGIC_VECTOR (0 to 31));
end component ;


component data_mem 
	port	(address:	in  std_logic_vector(0 to 31);
			clock:		in std_logic;
			mem_write:	in std_logic;
			write_data:	in  std_logic_vector(0 to 31);
			mem_read:	in 	std_logic;
			read_data:	out std_logic_vector(0 to 31)
			);
end component;


component mini_mux_2


    Port ( SEL : in  STD_LOGIC; 
           A   : in  STD_LOGIC_VECTOR (0 to 4); 
           B   : in  STD_LOGIC_VECTOR (0 to 4); 
           X   : out STD_LOGIC_VECTOR (0 to 4));
end component;


component mux_2
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (0 to 31);
           B   : in  STD_LOGIC_VECTOR (0 to 31);
           X   : out STD_LOGIC_VECTOR (0 to 31));
end component;

component reg_pc

	port	(pc:		out std_logic_vector(0 to 31);
			clock:	in  std_logic; 
			prox_pc:	in  std_logic_vector(0 to 31));
end component;


component shl_2
 
 	PORT ( 
		in1 : IN STD_LOGIC_VECTOR(0 TO 31) ;
		out1 : OUT STD_LOGIC_VECTOR(0 TO 31) ) ;
 
 
end component;

component extend
 
 	PORT ( 
		   in1 : IN STD_LOGIC_VECTOR(0 TO 15) ;
		   out1 : OUT STD_LOGIC_VECTOR(0 TO 31) 
		  );
 
END component;


component ALU

	PORT ( 
			aluop : IN STD_LOGIC_VECTOR(0 TO 1) ;
			A, B : IN STD_LOGIC_VECTOR(0 TO 31) ;
			Saida : OUT STD_LOGIC_VECTOR(0 TO 31);
			zero: out std_logic
		  );                     
 	
END component ;


component RegIFID
	port (clock:		in		std_logic;
	
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31);
			
			in_instr:	in		std_logic_vector(0 to 31);
			out_instr:	out	std_logic_vector(0 to 31));
end component;
 

 component RegIDEX
	port (clock:		in		std_logic;
			in_WB:		in		std_logic_vector(0 to 1);
			in_ME:		in		std_logic_vector(0 to 2);
			out_WB:		out	std_logic_vector(0 to 1);
			out_ME:		out	std_logic_vector(0 to 2);
			
			
		ALUSrc_in: in STD_LOGIC;
		RegDst_in: in STD_LOGIC;
		ALUOp_in: in STD_LOGIC_VECTOR(0 TO 1);
		
		ALUSrc_out: out STD_LOGIC;
		RegDst_out: out STD_LOGIC;
		ALUOp_out: out STD_LOGIC_VECTOR(0 TO 1);
			
			
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31);
			
			in_read1:	in		std_logic_vector(0 to 31);
			out_read1:	out	std_logic_vector(0 to 31);
			
			in_read2:	in		std_logic_vector(0 to 31);
			out_read2:	out	std_logic_vector(0 to 31);
			
			in_imed:		in		std_logic_vector(0 to 31);
			out_imed:	out	std_logic_vector(0 to 31);
			
			in_rt:		in		std_logic_vector(0 to 4);
			out_rt:		out	std_logic_vector(0 to 4);
			in_rd:		in		std_logic_vector(0 to 4);
			out_rd:		out	std_logic_vector(0 to 4));
end component;

	component somador
	PORT	(
			  A:	IN STD_LOGIC_VECTOR(0 TO 31);
			  B:	IN STD_LOGIC_VECTOR(0 TO 31);
			  X:	out STD_LOGIC_VECTOR(0 TO 31)
			);
	end component;

 
 
 component RegEXMEM
	port (clock:		in		std_logic;
			in_WB:		in		std_logic_vector(0 to 1);
			in_ME:		in		std_logic_vector(0 to 2);
			out_WB:		out	std_logic_vector(0 to 1);
			out_ME:		out	std_logic_vector(0 to 2);
			
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31);
			
			in_result:	in		std_logic_vector(0 to 31);
			out_result:	out	std_logic_vector(0 to 31);
			
			in_wrData:	in		std_logic_vector(0 to 31);
			out_wrData:	out	std_logic_vector(0 to 31);
			
			in_regdst:	in		std_logic_vector(0 to 4);
			out_regdst:	out	std_logic_vector(0 to 4));
end component;
 
 
 component RegMEMWB
	port (clock:		in		std_logic;
			in_WB:		in		std_logic_vector(0 to 1);
			out_WB:		out	std_logic_vector(0 to 1);
			
			in_rdData:	in		std_logic_vector(0 to 31);
			out_rdData:	out	std_logic_vector(0 to 31);
			
			in_addr:		in		std_logic_vector(0 to 31);
			out_addr:	out	std_logic_vector(0 to 31);
			
			in_regdst:	in		std_logic_vector(0 to 4);
			out_regdst:	out	std_logic_vector(0 to 4));
end component;


component CONTROL
	PORT(
		PCSRC: OUT STD_LOGIC; 
		ALUSrc: OUT STD_LOGIC;
		RegDst: OUT STD_LOGIC;
		JM: OUT STD_LOGIC;
		
		ALUOp: OUT STD_LOGIC_VECTOR(0 TO 1);
		WB: OUT STD_LOGIC_VECTOR(0 TO 1);
		MEM: OUT STD_LOGIC_VECTOR(0 TO 2);
		
		OPCODE: in STD_LOGIC_vector(0 to 5)
	);
END component;

component shift_jump
 
 	PORT ( 
		in1 : IN STD_LOGIC_VECTOR(0 TO 25) ;--operandos
		out1 : OUT STD_LOGIC_VECTOR(0 TO 27) ) ;--saida
 
 end component;



 
 signal pc_instr:		std_logic_vector(0 to 31);
 signal instructionIF:		std_logic_vector(0 to 31);
 
 signal pcsrc_mux_0:		std_logic_vector(0 to 31);
 signal pcsrc_mux_1:		std_logic_vector(0 to 31);
 
 signal prox_pc:	   std_logic_vector(0 to 31);
 
 signal branch:	std_logic;
 
 signal pcselect_mux_0:		std_logic_vector(0 to 31);
 
 signal pc4_ID:	std_logic_vector(0 to 31);
 
 signal Instruction:	std_logic_vector(0 to 31);
 
 signal OPCode:		std_logic_vector(0 to 5);
 signal Read_Register_1:		std_logic_vector(0 to 4);
 signal Read_Register_2:		std_logic_vector(0 to 4);
 signal Imediato:				std_logic_vector(0 to 15);
 signal Rt_ID:					std_logic_vector(0 to 4);
 signal Rd_ID:					std_logic_vector(0 to 4);
 
 signal RegWrite:				std_logic;
 signal Write_Register:		std_logic_vector(0 to 4);
 signal Write_Data:			std_logic_vector(0 to 31);
 signal Read_Data_1:			std_logic_vector(0 to 31);
 signal Read_Data_2:			std_logic_vector(0 to 31);
 
 signal Imediato_extendido_ID:		std_logic_vector(0 to 31);
 
 signal JumpMux:	std_logic;
 signal Jump_concat:			std_logic_vector(0 to 31);
 
 signal pc_select_mux_1:		std_logic_vector(0 to 31);
 
 signal PCSrc:					std_logic;
 signal instruction_shift_jump:	std_logic_vector(0 to 31);
 
 signal aluSrc_ID: std_logic;
 signal regdst_ID: std_logic;
 signal aluOP_ID: std_logic_vector(0 to 1);
 
 signal WB_ID:			std_logic_vector(0 to 1);
 signal MEM_ID:		std_logic_vector(0 to 2);
  signal WB_EX:			std_logic_vector(0 to 1);
 signal MEM_EX:		std_logic_vector(0 to 2);
   signal WB_MEM:			std_logic_vector(0 to 1);
 signal MEM_MEM:		std_logic_vector(0 to 2);
  signal WB_WB:			std_logic_vector(0 to 1);
 
  signal aluSrc_ex: std_logic;
 signal regdst_ex: std_logic;
 signal aluOP_ex: std_logic_vector(0 to 1);
 signal pc4_ex:	std_logic_vector(0 to 31);
 signal ULA_Src_A:	std_logic_vector(0 to 31);
 signal alusrc_mux_0:	std_logic_vector(0 to 31);
  signal alusrc_mux_1:	std_logic_vector(0 to 31);
  signal Imediato_extendido_ex:		std_logic_vector(0 to 31);
  signal regdst_mux_0:			std_logic_vector(0 to 4);
	signal regdst_mux_1:			std_logic_vector(0 to 4);
	
	signal imed_extendido_shiftado:	std_logic_vector(0 to 31);
	signal Branch_addr:			std_logic_vector(0 to 31);
	
	signal ULA_Zero:				std_logic;
	signal ULA_Src_B:				std_logic_vector(0 to 31);
	signal Resultado_ula:			std_logic_vector(0 to 31);
		signal regdst_mux_out:		std_logic_vector(0 to 4);
		signal endereco_mem:			std_logic_vector(0 to 31);
		signal write_data_memoria:		std_logic_vector(0 to 31);
				signal regdst_memoria:		std_logic_vector(0 to 4);
				signal Read_data_memoria:		std_logic_vector(0 to 31);
		signal memwrite:				std_logic;
		signal memread:				std_logic;
		signal branch_control:				std_logic;
		signal memtoreg_0:		std_logic_vector(0 to 31);
	signal memtoreg_1:		std_logic_vector(0 to 31);
			signal memtoreg:		std_logic;
			
	signal imediato_shift:		std_logic_vector(0 to 27);



begin

IM: instruction_memory port map (instructionIF,pc_instr);
pc_4: soma32b port map (pc_instr, pcsrc_mux_0);

pc: reg_pc port map (pc_instr,clock, prox_pc);

mux_branch: mux_2 port map(branch,pcsrc_mux_1,pcsrc_mux_0,pcselect_mux_0);

ifid: RegIFID port map(clock,pcsrc_mux_0,pc4_ID,instructionIF,instruction);


	OPCode				<= Instruction( 0 to  5);
	Read_Register_1	<= Instruction( 6 to 10);
	Read_Register_2	<= Instruction(11 to 15);
	Imediato				<= Instruction(16 to 31);
	Rt_ID					<= Instruction(11 to 15);
	Rd_ID					<= Instruction(16 to 20);
	
banco_reg: reg_f port map(RegWrite,clock,Read_Register_1,Read_Register_2,Write_Register,Write_Data,Read_Data_1,Read_Data_2,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,reg10,reg11);

sign_extend: extend port map (Imediato, Imediato_extendido_ID);
jumptype_mux:mux_2 port map (JumpMux,Read_Data_1,Jump_concat,pc_select_mux_1);

pcsrc_mux:	mux_2	port map (PCSrc,pc_select_mux_1,pcselect_mux_0,prox_pc);

	shift: shift_jump port map(instruction(6 to 31),imediato_shift);



Jump_concat <= pc4_ID(0 to 3) & imediato_shift;

ctrl:	Control	port map (PCSrc,ALUSrc_ID,regdst_ID,JumpMux,aluOP_ID,WB_ID,MEM_ID, OPCODE);


idex:	RegIDEX	port map (clock,WB_ID,MEM_ID,WB_EX,MEM_EX,ALUSRC_ID,regdst_ID,aluop_ID,alusrc_ex,regdst_ex,aluop_ex,pc4_ID,pc4_ex,Read_Data_1,ULA_Src_A,Read_Data_2,alusrc_mux_0,Imediato_extendido_ID,Imediato_extendido_ex,rt_id,regdst_mux_0,
												Rd_ID, regdst_mux_1);
												
												
calcula_branch: somador port map (pc4_EX, imed_extendido_shiftado, Branch_addr);

ula_principal:ALU port map (aluop_ex,ULA_Src_A,ULA_Src_B,Resultado_ULA,ULA_Zero);
alusrc_mux:	mux_2 port map (AluSrc_ex,alusrc_mux_1,alusrc_mux_0,ULA_SRC_B);
regdst_mux:	mini_mux_2			port map (regdst_ex,regdst_mux_1,regdst_mux_0,regdst_mux_out);
shift_exec:			shl_2	port map (Imediato_extendido_EX, imed_extendido_shiftado);



alusrc_mux_1 <= Imediato_extendido_EX;


exme:	RegEXMEM	port map (clock,WB_EX,MEM_EX,WB_MEM,MEM_MEM,Branch_addr,pcsrc_mux_1,Resultado_ULA,endereco_mem,alusrc_mux_0,write_data_memoria,regdst_mux_out,regdst_memoria);


memoria_dados:	data_mem	port map (endereco_mem,clock,memWrite,write_data_memoria,memRead,Read_data_memoria);


memWrite <= MEM_MEM(0);
	memRead <= MEM_MEM(1);
	branch_control <= MEM_MEM(2);
	branch <= branch_control and Ula_zero;
	
	
	
	mewb:	RegMEMWB	port map (clock,WB_MEM,WB_WB,Read_data_memoria,memtoreg_1,endereco_mem,memtoreg_0,regdst_memoria,Write_Register);
	

	memtoreg_mux:	mux_2	port map	(Memtoreg,memtoreg_1, memtoreg_0, Write_Data);
	
		MemToReg <= WB_WB(0);
		RegWrite <= WB_WB(1);
		instrucao <= instruction;
		pc_view <= pc_instr;
		


end Behavioral;