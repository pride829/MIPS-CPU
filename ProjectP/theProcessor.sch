<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xa9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="pc_now(31:0)" />
        <signal name="inst(20:16)" />
        <signal name="write_data(31:0)" />
        <signal name="RegDst" />
        <signal name="inst(15:11)" />
        <signal name="inst(15:0)" />
        <signal name="extended_inst(31:0)" />
        <signal name="Read_reg2(31:0)" />
        <signal name="XLXN_63(31:0)" />
        <signal name="Read_reg1(31:0)" />
        <signal name="XLXN_66(31:0)" />
        <signal name="MemWrite" />
        <signal name="MemRead" />
        <signal name="Read_memory(31:0)" />
        <signal name="MemtoReg" />
        <signal name="inst(31:0)" />
        <signal name="ALUOp(1:0)" />
        <signal name="write_reg(4:0)" />
        <signal name="inst(5:0)" />
        <signal name="XLXN_101(3:0)" />
        <signal name="Branch" />
        <signal name="inst(31:26)" />
        <signal name="RegWrite" />
        <signal name="ALUSrc" />
        <signal name="ctrl_add(3:0)" />
        <signal name="ctrl_add(3)" />
        <signal name="ctrl_add(0)" />
        <signal name="ctrl_add(1)" />
        <signal name="ctrl_add(2)" />
        <signal name="XLXN_132(31:0)" />
        <signal name="ALU_result(31:0)" />
        <signal name="XLXN_137" />
        <signal name="XLXN_139" />
        <signal name="pc_next(31:0)" />
        <signal name="XLXN_144(31:0)" />
        <signal name="inst(25:21)" />
        <signal name="m0(31:0)" />
        <signal name="m4(31:0)" />
        <signal name="m8(31:0)" />
        <signal name="m12(31:0)" />
        <signal name="m16(31:0)" />
        <signal name="t2(31:0)" />
        <signal name="t1(31:0)" />
        <signal name="t0(31:0)" />
        <signal name="s2(31:0)" />
        <signal name="s1(31:0)" />
        <signal name="s0(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="inst(31:0)" />
        <port polarity="Output" name="m0(31:0)" />
        <port polarity="Output" name="m4(31:0)" />
        <port polarity="Output" name="m8(31:0)" />
        <port polarity="Output" name="m12(31:0)" />
        <port polarity="Output" name="m16(31:0)" />
        <port polarity="Output" name="t2(31:0)" />
        <port polarity="Output" name="t1(31:0)" />
        <port polarity="Output" name="t0(31:0)" />
        <port polarity="Output" name="s2(31:0)" />
        <port polarity="Output" name="s1(31:0)" />
        <port polarity="Output" name="s0(31:0)" />
        <blockdef name="PC">
            <timestamp>2018-5-12T15:23:50</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="Instruction_Memory">
            <timestamp>2018-5-12T15:23:31</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="Sign_extend">
            <timestamp>2018-5-12T15:34:42</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2018-5-12T15:23:1</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="Control">
            <timestamp>2018-5-12T15:23:15</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Mux5">
            <timestamp>2018-5-12T15:45:9</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="Mux32">
            <timestamp>2018-5-12T15:47:21</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="ALU_control">
            <timestamp>2018-5-12T15:23:9</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="add4_32">
            <timestamp>2018-5-12T15:58:49</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="Shift_left_2">
            <timestamp>2018-5-12T15:24:3</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="Data_memory">
            <timestamp>2018-5-13T2:42:40</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="Registers">
            <timestamp>2018-5-13T2:42:35</timestamp>
            <rect width="368" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="432" y="-492" height="24" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <rect width="64" x="432" y="-428" height="24" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="PC" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="pc_next(31:0)" name="pc_next(31:0)" />
            <blockpin signalname="pc_now(31:0)" name="pc_now(31:0)" />
        </block>
        <block symbolname="Instruction_Memory" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="pc_now(31:0)" name="read_address(31:0)" />
            <blockpin signalname="inst(31:0)" name="inst(31:0)" />
        </block>
        <block symbolname="Sign_extend" name="XLXI_10">
            <blockpin signalname="inst(15:0)" name="inst(15:0)" />
            <blockpin signalname="extended_inst(31:0)" name="extended_inst(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_12">
            <blockpin signalname="Read_reg1(31:0)" name="input1(31:0)" />
            <blockpin signalname="XLXN_63(31:0)" name="input2(31:0)" />
            <blockpin signalname="XLXN_101(3:0)" name="ALUCtrl(3:0)" />
            <blockpin signalname="XLXN_137" name="zero" />
            <blockpin signalname="XLXN_66(31:0)" name="ALU_result(31:0)" />
        </block>
        <block symbolname="Mux5" name="XLXI_16">
            <blockpin signalname="RegDst" name="sel" />
            <blockpin signalname="inst(20:16)" name="input_l(4:0)" />
            <blockpin signalname="inst(15:11)" name="input_h(4:0)" />
            <blockpin signalname="write_reg(4:0)" name="mux_output(4:0)" />
        </block>
        <block symbolname="Mux32" name="XLXI_20">
            <blockpin signalname="ALUSrc" name="sel" />
            <blockpin signalname="Read_reg2(31:0)" name="input_l(31:0)" />
            <blockpin signalname="extended_inst(31:0)" name="input_h(31:0)" />
            <blockpin signalname="XLXN_63(31:0)" name="mux_output(31:0)" />
        </block>
        <block symbolname="Mux32" name="XLXI_22">
            <blockpin signalname="MemtoReg" name="sel" />
            <blockpin signalname="XLXN_66(31:0)" name="input_l(31:0)" />
            <blockpin signalname="Read_memory(31:0)" name="input_h(31:0)" />
            <blockpin signalname="write_data(31:0)" name="mux_output(31:0)" />
        </block>
        <block symbolname="ALU_control" name="XLXI_23">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="inst(5:0)" name="funct(5:0)" />
            <blockpin signalname="ALUOp(1:0)" name="ALUOp(1:0)" />
            <blockpin signalname="XLXN_101(3:0)" name="ALUCtrl(3:0)" />
        </block>
        <block symbolname="add4_32" name="XLXI_24">
            <blockpin signalname="pc_now(31:0)" name="add_input(31:0)" />
            <blockpin signalname="XLXN_132(31:0)" name="add_output(31:0)" />
        </block>
        <block symbolname="Control" name="XLXI_15">
            <blockpin signalname="inst(31:26)" name="opCode(5:0)" />
            <blockpin signalname="RegDst" name="RegDst" />
            <blockpin signalname="ALUSrc" name="ALUSrc" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="Branch" name="Branch" />
            <blockpin signalname="ALUOp(1:0)" name="ALUOp(1:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_26">
            <blockpin signalname="XLXN_132(31:0)" name="input1(31:0)" />
            <blockpin signalname="XLXN_144(31:0)" name="input2(31:0)" />
            <blockpin signalname="ctrl_add(3:0)" name="ALUCtrl(3:0)" />
            <blockpin name="zero" />
            <blockpin signalname="ALU_result(31:0)" name="ALU_result(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="ctrl_add(3)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_27">
            <blockpin signalname="ctrl_add(1)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="ctrl_add(2)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="ctrl_add(0)" name="G" />
        </block>
        <block symbolname="Mux32" name="XLXI_33">
            <blockpin signalname="XLXN_139" name="sel" />
            <blockpin signalname="XLXN_132(31:0)" name="input_l(31:0)" />
            <blockpin signalname="ALU_result(31:0)" name="input_h(31:0)" />
            <blockpin signalname="pc_next(31:0)" name="mux_output(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="XLXN_137" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_139" name="O" />
        </block>
        <block symbolname="Shift_left_2" name="XLXI_35">
            <blockpin signalname="extended_inst(31:0)" name="sl_input(31:0)" />
            <blockpin signalname="XLXN_144(31:0)" name="sl_output(31:0)" />
        </block>
        <block symbolname="Data_memory" name="XLXI_37">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="XLXN_66(31:0)" name="Address(31:0)" />
            <blockpin signalname="Read_reg2(31:0)" name="Write_data(31:0)" />
            <blockpin signalname="Read_memory(31:0)" name="Read_data(31:0)" />
            <blockpin signalname="m0(31:0)" name="m0(31:0)" />
            <blockpin signalname="m4(31:0)" name="m4(31:0)" />
            <blockpin signalname="m8(31:0)" name="m8(31:0)" />
            <blockpin signalname="m12(31:0)" name="m12(31:0)" />
            <blockpin signalname="m16(31:0)" name="m16(31:0)" />
        </block>
        <block symbolname="Registers" name="XLXI_38">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="inst(25:21)" name="read_reg1(4:0)" />
            <blockpin signalname="inst(20:16)" name="read_reg2(4:0)" />
            <blockpin signalname="write_reg(4:0)" name="write_reg(4:0)" />
            <blockpin signalname="write_data(31:0)" name="write_data(31:0)" />
            <blockpin signalname="Read_reg1(31:0)" name="read_data1(31:0)" />
            <blockpin signalname="Read_reg2(31:0)" name="read_data2(31:0)" />
            <blockpin signalname="s0(31:0)" name="s0(31:0)" />
            <blockpin signalname="s1(31:0)" name="s1(31:0)" />
            <blockpin signalname="s2(31:0)" name="s2(31:0)" />
            <blockpin signalname="t0(31:0)" name="t0(31:0)" />
            <blockpin signalname="t1(31:0)" name="t1(31:0)" />
            <blockpin signalname="t2(31:0)" name="t2(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="208" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="416" y1="1488" y2="1488" x1="288" />
        </branch>
        <branch name="rst">
            <wire x2="416" y1="1584" y2="1584" x1="288" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="144" y="1152" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="171" y="1152" type="branch" />
            <wire x2="208" y1="1152" y2="1152" x1="144" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="144" y="1216" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="194" y="1216" type="branch" />
            <wire x2="208" y1="1216" y2="1216" x1="144" />
        </branch>
        <instance x="832" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="736" y="1152" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="782" y="1152" type="branch" />
            <wire x2="832" y1="1152" y2="1152" x1="736" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="736" y="1216" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="809" y="1216" type="branch" />
            <wire x2="832" y1="1216" y2="1216" x1="736" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1408" y="1152" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1436" y="1152" type="branch" />
            <wire x2="1472" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="inst(20:16)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="1408" type="branch" />
            <wire x2="1472" y1="1408" y2="1408" x1="896" />
            <wire x2="896" y1="1408" y2="1536" x1="896" />
            <wire x2="928" y1="1536" y2="1536" x1="896" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1408" y="1216" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1441" y="1216" type="branch" />
            <wire x2="1472" y1="1216" y2="1216" x1="1408" />
        </branch>
        <branch name="write_data(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1376" y="1536" type="branch" />
            <wire x2="1472" y1="1536" y2="1536" x1="1376" />
            <wire x2="1376" y1="1536" y2="1584" x1="1376" />
        </branch>
        <branch name="inst(15:11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="736" y="1568" type="branch" />
            <wire x2="752" y1="1568" y2="1568" x1="736" />
            <wire x2="752" y1="1568" y2="1600" x1="752" />
            <wire x2="928" y1="1600" y2="1600" x1="752" />
        </branch>
        <branch name="RegDst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1472" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="1472" type="branch" />
            <wire x2="848" y1="1472" y2="1472" x1="800" />
            <wire x2="928" y1="1472" y2="1472" x1="848" />
        </branch>
        <iomarker fontsize="28" x="288" y="1488" name="clk" orien="R180" />
        <iomarker fontsize="28" x="288" y="1584" name="rst" orien="R180" />
        <instance x="848" y="1904" name="XLXI_10" orien="R0">
        </instance>
        <branch name="inst(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="768" y="1872" type="branch" />
            <wire x2="848" y1="1872" y2="1872" x1="768" />
        </branch>
        <branch name="ALUSrc">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2048" y="1478" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2064" y="1456" type="branch" />
            <wire x2="2064" y1="1456" y2="1456" x1="2048" />
            <wire x2="2048" y1="1456" y2="1552" x1="2048" />
            <wire x2="2064" y1="1552" y2="1552" x1="2048" />
        </branch>
        <instance x="2560" y="1696" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_63(31:0)">
            <wire x2="2064" y1="1744" y2="1744" x1="1984" />
            <wire x2="1984" y1="1744" y2="1824" x1="1984" />
            <wire x2="2448" y1="1824" y2="1824" x1="1984" />
            <wire x2="2448" y1="1600" y2="1824" x1="2448" />
            <wire x2="2560" y1="1600" y2="1600" x1="2448" />
        </branch>
        <branch name="Read_reg1(31:0)">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="2112" y="976" type="branch" />
            <wire x2="2112" y1="1152" y2="1152" x1="1968" />
            <wire x2="2528" y1="1152" y2="1152" x1="2112" />
            <wire x2="2528" y1="1152" y2="1536" x1="2528" />
            <wire x2="2560" y1="1536" y2="1536" x1="2528" />
            <wire x2="2112" y1="976" y2="1152" x1="2112" />
        </branch>
        <branch name="XLXN_66(31:0)">
            <wire x2="2864" y1="512" y2="512" x1="2560" />
            <wire x2="2560" y1="512" y2="1232" x1="2560" />
            <wire x2="2704" y1="1232" y2="1232" x1="2560" />
            <wire x2="2768" y1="1232" y2="1232" x1="2704" />
            <wire x2="2704" y1="1232" y2="1408" x1="2704" />
            <wire x2="3072" y1="1408" y2="1408" x1="2704" />
            <wire x2="3072" y1="1408" y2="1664" x1="3072" />
            <wire x2="3072" y1="1664" y2="1664" x1="3008" />
        </branch>
        <branch name="MemWrite">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2704" y="1104" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2738" y="1104" type="branch" />
            <wire x2="2768" y1="1104" y2="1104" x1="2704" />
        </branch>
        <branch name="MemRead">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2704" y="1168" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2729" y="1168" type="branch" />
            <wire x2="2768" y1="1168" y2="1168" x1="2704" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2704" y="1040" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2744" y="1040" type="branch" />
            <wire x2="2768" y1="1040" y2="1040" x1="2704" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2704" y="976" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2729" y="976" type="branch" />
            <wire x2="2768" y1="976" y2="976" x1="2704" />
        </branch>
        <branch name="Read_memory(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="3408" y="592" type="branch" />
            <wire x2="2864" y1="576" y2="576" x1="2784" />
            <wire x2="2784" y1="576" y2="736" x1="2784" />
            <wire x2="3280" y1="736" y2="736" x1="2784" />
            <wire x2="3280" y1="736" y2="976" x1="3280" />
            <wire x2="3360" y1="976" y2="976" x1="3280" />
            <wire x2="3280" y1="976" y2="976" x1="3264" />
            <wire x2="3360" y1="528" y2="976" x1="3360" />
            <wire x2="3408" y1="528" y2="528" x1="3360" />
            <wire x2="3408" y1="528" y2="592" x1="3408" />
        </branch>
        <branch name="MemtoReg">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2784" y="448" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2814" y="448" type="branch" />
            <wire x2="2864" y1="448" y2="448" x1="2784" />
        </branch>
        <branch name="write_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2656" y="640" type="branch" />
            <wire x2="2864" y1="640" y2="640" x1="2656" />
        </branch>
        <branch name="inst(31:0)">
            <wire x2="1312" y1="1152" y2="1152" x1="1280" />
            <wire x2="1312" y1="1152" y2="1216" x1="1312" />
            <wire x2="1392" y1="1152" y2="1152" x1="1312" />
            <wire x2="1392" y1="880" y2="1152" x1="1392" />
            <wire x2="1472" y1="880" y2="880" x1="1392" />
        </branch>
        <instance x="2064" y="1776" name="XLXI_20" orien="R0">
        </instance>
        <instance x="2864" y="672" name="XLXI_22" orien="R0">
        </instance>
        <instance x="928" y="1632" name="XLXI_16" orien="R0">
        </instance>
        <branch name="write_reg(4:0)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="1440" y="1568" type="branch" />
            <wire x2="1440" y1="1472" y2="1472" x1="1360" />
            <wire x2="1472" y1="1472" y2="1472" x1="1440" />
            <wire x2="1440" y1="1472" y2="1568" x1="1440" />
        </branch>
        <instance x="2080" y="2208" name="XLXI_23" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1984" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2060" y="1984" type="branch" />
            <wire x2="2080" y1="1984" y2="1984" x1="2016" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="2048" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2045" y="2048" type="branch" />
            <wire x2="2080" y1="2048" y2="2048" x1="2016" />
        </branch>
        <branch name="ALUOp(1:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2176" type="branch" />
            <wire x2="2080" y1="2176" y2="2176" x1="2000" />
        </branch>
        <branch name="inst(5:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2112" type="branch" />
            <wire x2="2080" y1="2112" y2="2112" x1="2000" />
        </branch>
        <branch name="XLXN_101(3:0)">
            <wire x2="2512" y1="1984" y2="1984" x1="2464" />
            <wire x2="2512" y1="1664" y2="1984" x1="2512" />
            <wire x2="2560" y1="1664" y2="1664" x1="2512" />
        </branch>
        <branch name="pc_now(31:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="736" y="928" type="branch" />
            <wire x2="656" y1="1152" y2="1152" x1="640" />
            <wire x2="656" y1="1152" y2="1280" x1="656" />
            <wire x2="832" y1="1280" y2="1280" x1="656" />
            <wire x2="704" y1="112" y2="112" x1="656" />
            <wire x2="656" y1="112" y2="928" x1="656" />
            <wire x2="656" y1="928" y2="1152" x1="656" />
            <wire x2="736" y1="928" y2="928" x1="656" />
        </branch>
        <branch name="Branch">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1408" y="928" type="branch" />
            <wire x2="1408" y1="928" y2="928" x1="1376" />
            <wire x2="1424" y1="928" y2="928" x1="1408" />
        </branch>
        <branch name="inst(31:26)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="784" y="544" type="branch" />
            <wire x2="992" y1="544" y2="544" x1="784" />
        </branch>
        <instance x="992" y="1024" name="XLXI_15" orien="R0">
        </instance>
        <branch name="ALUOp(1:0)">
            <wire x2="1472" y1="992" y2="992" x1="1376" />
        </branch>
        <branch name="MemWrite">
            <wire x2="1424" y1="864" y2="864" x1="1376" />
        </branch>
        <branch name="MemRead">
            <wire x2="1424" y1="800" y2="800" x1="1376" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1424" y1="736" y2="736" x1="1376" />
        </branch>
        <branch name="MemtoReg">
            <wire x2="1424" y1="672" y2="672" x1="1376" />
        </branch>
        <branch name="ALUSrc">
            <wire x2="1424" y1="608" y2="608" x1="1376" />
        </branch>
        <branch name="RegDst">
            <wire x2="1424" y1="544" y2="544" x1="1376" />
        </branch>
        <instance x="1600" y="320" name="XLXI_26" orien="R0">
        </instance>
        <branch name="ctrl_add(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="288" type="branch" />
            <wire x2="1600" y1="288" y2="288" x1="1584" />
            <wire x2="1584" y1="288" y2="368" x1="1584" />
            <wire x2="1584" y1="368" y2="432" x1="1584" />
            <wire x2="1584" y1="432" y2="496" x1="1584" />
            <wire x2="1584" y1="496" y2="560" x1="1584" />
            <wire x2="1584" y1="560" y2="624" x1="1584" />
        </branch>
        <bustap x2="1680" y1="368" y2="368" x1="1584" />
        <branch name="ctrl_add(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1721" y="368" type="branch" />
            <wire x2="1760" y1="368" y2="368" x1="1680" />
        </branch>
        <instance x="1888" y="432" name="XLXI_28" orien="R270" />
        <branch name="ctrl_add(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1729" y="560" type="branch" />
            <wire x2="1760" y1="560" y2="560" x1="1680" />
        </branch>
        <bustap x2="1680" y1="560" y2="560" x1="1584" />
        <instance x="1760" y="432" name="XLXI_27" orien="R90" />
        <bustap x2="1680" y1="496" y2="496" x1="1584" />
        <branch name="ctrl_add(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1715" y="496" type="branch" />
            <wire x2="1760" y1="496" y2="496" x1="1680" />
        </branch>
        <branch name="ctrl_add(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1712" y="432" type="branch" />
            <wire x2="1712" y1="432" y2="432" x1="1680" />
            <wire x2="1760" y1="432" y2="432" x1="1712" />
        </branch>
        <bustap x2="1680" y1="432" y2="432" x1="1584" />
        <instance x="1888" y="496" name="XLXI_31" orien="R270" />
        <instance x="1888" y="624" name="XLXI_32" orien="R270" />
        <branch name="XLXN_132(31:0)">
            <wire x2="1392" y1="112" y2="112" x1="1184" />
            <wire x2="1392" y1="112" y2="160" x1="1392" />
            <wire x2="1600" y1="160" y2="160" x1="1392" />
            <wire x2="2112" y1="112" y2="112" x1="1392" />
            <wire x2="2112" y1="112" y2="224" x1="2112" />
            <wire x2="2240" y1="224" y2="224" x1="2112" />
        </branch>
        <branch name="extended_inst(31:0)">
            <wire x2="1312" y1="1872" y2="1872" x1="1296" />
            <wire x2="1312" y1="1680" y2="1872" x1="1312" />
            <wire x2="2064" y1="1680" y2="1680" x1="1312" />
        </branch>
        <instance x="2240" y="384" name="XLXI_33" orien="R0">
        </instance>
        <branch name="ALU_result(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="2064" y="400" type="branch" />
            <wire x2="2064" y1="288" y2="288" x1="2048" />
            <wire x2="2240" y1="288" y2="288" x1="2064" />
            <wire x2="2064" y1="288" y2="400" x1="2064" />
        </branch>
        <instance x="2256" y="672" name="XLXI_34" orien="R270" />
        <branch name="XLXN_137">
            <wire x2="2192" y1="672" y2="1440" x1="2192" />
            <wire x2="3024" y1="1440" y2="1440" x1="2192" />
            <wire x2="3024" y1="1440" y2="1536" x1="3024" />
            <wire x2="3024" y1="1536" y2="1536" x1="3008" />
        </branch>
        <branch name="Branch">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2128" y="706" type="branch" />
            <wire x2="2128" y1="672" y2="736" x1="2128" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="2240" y1="160" y2="160" x1="2160" />
            <wire x2="2160" y1="160" y2="416" x1="2160" />
        </branch>
        <branch name="pc_next(31:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="144" y="800" type="branch" />
            <wire x2="2192" y1="32" y2="32" x1="48" />
            <wire x2="2192" y1="32" y2="352" x1="2192" />
            <wire x2="2240" y1="352" y2="352" x1="2192" />
            <wire x2="48" y1="32" y2="800" x1="48" />
            <wire x2="48" y1="800" y2="1280" x1="48" />
            <wire x2="208" y1="1280" y2="1280" x1="48" />
            <wire x2="144" y1="800" y2="800" x1="48" />
        </branch>
        <instance x="704" y="144" name="XLXI_24" orien="R0">
        </instance>
        <instance x="944" y="256" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_144(31:0)">
            <wire x2="1600" y1="224" y2="224" x1="1392" />
        </branch>
        <branch name="extended_inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="864" y="224" type="branch" />
            <wire x2="944" y1="224" y2="224" x1="864" />
        </branch>
        <branch name="RegWrite">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="1408" y="1280" type="branch" />
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1441" y="1280" type="branch" />
            <wire x2="1408" y1="960" y2="1280" x1="1408" />
            <wire x2="1472" y1="1280" y2="1280" x1="1408" />
            <wire x2="1632" y1="960" y2="960" x1="1408" />
            <wire x2="1632" y1="944" y2="960" x1="1632" />
        </branch>
        <branch name="inst(25:21)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1376" y="1344" type="branch" />
            <wire x2="1376" y1="1344" y2="1344" x1="1248" />
            <wire x2="1472" y1="1344" y2="1344" x1="1376" />
        </branch>
        <instance x="2768" y="1328" name="XLXI_37" orien="R0">
        </instance>
        <branch name="m0(31:0)">
            <wire x2="3296" y1="1040" y2="1040" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1040" name="m0(31:0)" orien="R0" />
        <branch name="m4(31:0)">
            <wire x2="3296" y1="1104" y2="1104" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1104" name="m4(31:0)" orien="R0" />
        <instance x="1472" y="1632" name="XLXI_38" orien="R0">
        </instance>
        <branch name="Read_reg2(31:0)">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="2256" y="976" type="branch" />
            <wire x2="2016" y1="1216" y2="1216" x1="1968" />
            <wire x2="2256" y1="1216" y2="1216" x1="2016" />
            <wire x2="2256" y1="1216" y2="1296" x1="2256" />
            <wire x2="2768" y1="1296" y2="1296" x1="2256" />
            <wire x2="2016" y1="1216" y2="1616" x1="2016" />
            <wire x2="2064" y1="1616" y2="1616" x1="2016" />
            <wire x2="2256" y1="976" y2="1216" x1="2256" />
        </branch>
        <branch name="m8(31:0)">
            <wire x2="3488" y1="1168" y2="1168" x1="3264" />
            <wire x2="3488" y1="1168" y2="1408" x1="3488" />
        </branch>
        <branch name="m12(31:0)">
            <wire x2="3424" y1="1232" y2="1232" x1="3264" />
            <wire x2="3424" y1="1232" y2="1680" x1="3424" />
        </branch>
        <branch name="m16(31:0)">
            <wire x2="3376" y1="1296" y2="1296" x1="3264" />
            <wire x2="3376" y1="1296" y2="1344" x1="3376" />
        </branch>
        <iomarker fontsize="28" x="3488" y="1408" name="m8(31:0)" orien="R90" />
        <iomarker fontsize="28" x="3424" y="1680" name="m12(31:0)" orien="R90" />
        <iomarker fontsize="28" x="3376" y="1344" name="m16(31:0)" orien="R90" />
        <branch name="t2(31:0)">
            <wire x2="1552" y1="1648" y2="1824" x1="1552" />
            <wire x2="1984" y1="1648" y2="1648" x1="1552" />
            <wire x2="1984" y1="1600" y2="1600" x1="1968" />
            <wire x2="1984" y1="1600" y2="1648" x1="1984" />
        </branch>
        <branch name="t1(31:0)">
            <wire x2="2000" y1="1696" y2="1696" x1="1680" />
            <wire x2="1680" y1="1696" y2="1824" x1="1680" />
            <wire x2="2000" y1="1536" y2="1536" x1="1968" />
            <wire x2="2000" y1="1536" y2="1696" x1="2000" />
        </branch>
        <branch name="t0(31:0)">
            <wire x2="2032" y1="1728" y2="1728" x1="1792" />
            <wire x2="1792" y1="1728" y2="1824" x1="1792" />
            <wire x2="2032" y1="1472" y2="1472" x1="1968" />
            <wire x2="2032" y1="1472" y2="1728" x1="2032" />
        </branch>
        <branch name="s2(31:0)">
            <wire x2="2080" y1="1408" y2="1408" x1="1968" />
            <wire x2="2080" y1="704" y2="704" x1="2016" />
            <wire x2="2080" y1="704" y2="1072" x1="2080" />
            <wire x2="2080" y1="1072" y2="1408" x1="2080" />
        </branch>
        <branch name="s1(31:0)">
            <wire x2="2048" y1="1344" y2="1344" x1="1968" />
            <wire x2="2048" y1="800" y2="800" x1="1984" />
            <wire x2="2048" y1="800" y2="976" x1="2048" />
            <wire x2="2048" y1="976" y2="1344" x1="2048" />
        </branch>
        <branch name="s0(31:0)">
            <wire x2="1984" y1="880" y2="880" x1="1920" />
            <wire x2="1984" y1="880" y2="1280" x1="1984" />
            <wire x2="1984" y1="1280" y2="1280" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1824" name="t2(31:0)" orien="R90" />
        <iomarker fontsize="28" x="1680" y="1824" name="t1(31:0)" orien="R90" />
        <iomarker fontsize="28" x="1792" y="1824" name="t0(31:0)" orien="R90" />
        <iomarker fontsize="28" x="1920" y="880" name="s0(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1984" y="800" name="s1(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2016" y="704" name="s2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="880" name="inst(31:0)" orien="R0" />
    </sheet>
</drawing>