<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-135,2644,994,0.826447,0,44>
  <Grid=10,10,1>
  <DataSet=LowPassFilter_Tutorial_1.dat>
  <DataDisplay=LowPassFilter_Tutorial_1.dpl>
  <OpenDisplay=1>
  <Script=LowPassFilter_Tutorial_1.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <MLIN MS1 1 190 340 -26 15 0 0 "Subst1" 1 "500um" 1 "4.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS8 1 270 340 -60 -120 0 0 "Subst1" 1 "500um" 1 "20.5mm" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS2 1 360 340 -26 15 0 0 "Subst1" 1 "20.5mm" 1 "1.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS9 1 450 340 -57 -117 0 0 "Subst1" 1 "20.5mm" 1 "500um" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS3 1 540 340 -26 15 0 0 "Subst1" 1 "500um" 1 "18 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS10 1 630 340 -63 -117 0 0 "Subst1" 1 "500um" 1 "20.5mm" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS4 1 710 340 -26 15 0 0 "Subst1" 1 "20.5mm" 1 "2.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS11 1 810 340 -52 -121 0 0 "Subst1" 1 "20.5mm" 1 "500um" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS5 1 900 340 -26 15 0 0 "Subst1" 1 "500um" 1 "18 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS12 1 1000 340 -69 -115 0 0 "Subst1" 1 "500um" 1 "20.5mm" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS6 1 1090 340 -26 15 0 0 "Subst1" 1 "20.5mm" 1 "1.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MSTEP MS13 1 1170 340 -64 -121 0 0 "Subst1" 1 "20.5mm" 1 "500um" 1 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS7 1 1250 340 -26 15 0 0 "Subst1" 1 "500um" 1 "4.50 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P3 1 1380 480 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 1380 510 0 0 0 0>
  <GND * 1 90 510 0 0 0 0>
  <Pac P2 1 90 480 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 850 720 -37 18 0 0 "Qucs_S11=dB(S[1,1])" 1 "Qucs_S21=dB(S[2,1])" 1 "yes" 0>
  <SUBST Subst1 1 650 620 -30 24 0 0 "4.2" 1 "800um" 1 "35 um" 1 "0.035" 1 "1e-10" 1 "0" 1>
  <.SP SP1 1 370 590 0 77 0 0 "lin" 1 "20MHz" 1 "5 GHz" 1 "499" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <220 340 240 340 "" 0 0 0 "">
  <300 340 330 340 "" 0 0 0 "">
  <390 340 420 340 "" 0 0 0 "">
  <480 340 510 340 "" 0 0 0 "">
  <570 340 600 340 "" 0 0 0 "">
  <660 340 680 340 "" 0 0 0 "">
  <740 340 780 340 "" 0 0 0 "">
  <840 340 870 340 "" 0 0 0 "">
  <930 340 970 340 "" 0 0 0 "">
  <1030 340 1060 340 "" 0 0 0 "">
  <1120 340 1140 340 "" 0 0 0 "">
  <1200 340 1220 340 "" 0 0 0 "">
  <1280 340 1380 340 "" 0 0 0 "">
  <1380 340 1380 450 "" 0 0 0 "">
  <90 340 160 340 "" 0 0 0 "">
  <90 340 90 450 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
