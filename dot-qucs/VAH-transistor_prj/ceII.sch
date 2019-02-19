<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-82,800,800,1,0,82>
  <Grid=10,10,1>
  <DataSet=ceII.dat>
  <DataDisplay=ceII.dpl>
  <OpenDisplay=1>
  <Script=ceII.m>
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
  <_BJT T1 1 170 80 -26 -122 0 1 "npn" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <Idc I2 1 280 110 -69 -26 0 3 "Ie" 1>
  <GND * 1 170 110 0 0 0 0>
  <GND * 1 280 140 0 0 0 0>
  <Idc I3 1 70 110 18 -26 0 1 "Ic" 1>
  <GND * 1 70 140 0 0 0 0>
  <.SW SW1 1 430 50 0 63 0 0 "SW2" 1 "lin" 1 "Ic" 1 "-1A" 1 "0" 1 "41" 1>
  <.SW SW2 1 660 50 0 63 0 0 "DC1" 1 "lin" 1 "Ie" 1 "0" 1 "1A" 1 "41" 1>
  <.DC DC1 1 440 330 0 63 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <200 80 280 80 "" 0 0 0 "">
  <70 80 140 80 "" 0 0 0 "">
  <280 80 280 80 "Ueb" 310 50 0 "">
  <70 80 70 80 "Ucb" 100 50 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
