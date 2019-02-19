<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,876,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=cbII.dat>
  <DataDisplay=cbII.dpl>
  <OpenDisplay=1>
  <Script=cbII.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Название>
  <FrameText1=Чертил:>
  <FrameText2=Дата:>
  <FrameText3=Версия:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <_BJT T1 1 320 120 8 -26 0 0 "npn" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <Idc I1 1 260 120 -26 18 0 0 "Ib" 1>
  <Idc I2 1 290 40 -26 18 0 0 "Ic" 1>
  <GND * 1 220 40 0 0 0 0>
  <GND * 1 220 120 0 0 0 0>
  <GND * 1 320 210 0 0 0 0>
  <.SW SW1 1 490 50 0 63 0 0 "SW2" 1 "lin" 1 "Ib" 1 "0" 1 "1nA" 1 "41" 1>
  <.SW SW2 1 710 50 0 63 0 0 "DC1" 1 "lin" 1 "Ic" 1 "0" 1 "10pA" 1 "41" 1>
  <.DC DC1 1 490 300 0 63 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <320 40 320 90 "" 0 0 0 "">
  <220 40 260 40 "" 0 0 0 "">
  <220 120 230 120 "" 0 0 0 "">
  <320 150 320 210 "" 0 0 0 "">
  <290 120 290 120 "Ube" 210 70 0 "">
  <320 40 320 40 "Uce" 350 10 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
