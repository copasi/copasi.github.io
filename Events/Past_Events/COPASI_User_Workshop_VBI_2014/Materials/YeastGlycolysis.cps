<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.2.23 (development) (http://www.copasi.org) at 2007-12-17 07:48:33 UTC -->
<COPASI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.copasi.org/static/schema.xsd" versionMajor="1" versionMinor="0" versionDevel="23">
  <ListOfFunctions>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="HK kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A*B/(Kglc*Katp)- P*Q/(Kglc*Katp*Keq))/((1+A/Kglc+P/Kg6p)*(1+B/Katp+Q/Kadp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_961" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_959" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_957" name="B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_950" name="Kglc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_948" name="Katp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_941" name="P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_939" name="Q" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_937" name="Keq" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_930" name="Kg6p" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_928" name="Kadp" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="PGI kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A/Kg6p-P/(Kg6p*Keq))/(1+A/Kg6p+P/Kf6p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_927" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_931" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_940" name="Kg6p" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_949" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_958" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_921" name="Kf6p" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="PFK kinetics" type="UserDefined" reversible="false">
      <Expression>
        Vmax*(gR*(F6P/Kf6p)*(ATP/Katp)*(1+F6P/Kf6p+ATP/Katp+gR*F6P/Kf6p*ATP/Katp)/((1+F6P/Kf6p+ATP/Katp+gR*F6P/Kf6p*ATP/Katp)^2+(L0*((1+Ciatp*ATP/Kiatp)/(1+ATP/Kiatp))^2*((1+Camp*AMP/Kamp)/(1+AMP/Kamp))^2*((1+Cf26*F26BP/Kf26+Cf16*F16P/Kf16)/(1+F26BP/Kf26+F16P/Kf16))^2)*(1+Catp*ATP/Katp)^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_920" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_951" name="gR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_938" name="F6P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_919" name="Kf6p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_917" name="ATP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_910" name="Katp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_908" name="L0" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_901" name="Ciatp" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_899" name="Kiatp" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_897" name="Camp" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_890" name="AMP" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_888" name="Kamp" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_880" name="Cf26" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_878" name="F26BP" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_872" name="Kf26" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_870" name="Cf16" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_770" name="F16P" order="16" role="product"/>
        <ParameterDescription key="FunctionParameter_768" name="Kf16" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_865" name="Catp" order="18" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="ALD kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A/Kf16bp-(P*Q/(Kf16bp*Keq)))/(1+A/Kf16bp+P/Kdhap+Q/Kgap+A*Q/(Kf16bp*Kigap)+P*Q/(Kdhap*Kgap))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_864" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_771" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_871" name="Kf16bp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_879" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_889" name="Q" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_898" name="Keq" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_907" name="Kdhap" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_911" name="Kgap" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_929" name="Kigap" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="GAPDH kinetics" type="UserDefined" reversible="true">
      <Expression>
        C*(Vmaxf*A*B/(Kgap*Knad)-Vmaxr*P*Q/(Kbpg*Knadh))/((1+A/Kgap+P/Kbpg)*(1+B/Knad+Q/Knadh))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_947" name="C" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_909" name="Vmaxf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_891" name="A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_877" name="B" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_765" name="Kgap" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_863" name="Knad" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_861" name="Vmaxr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_859" name="P" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_857" name="Q" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_855" name="Kbpg" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_853" name="Knadh" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="PGK kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*((Keq*A*B-P*Q)/(Kp3g*Katp))/((1+A/Kbpg+P/Kp3g)*(1+B/Kadp+Q/Katp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_834" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_856" name="Keq" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_860" name="A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_960" name="B" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_887" name="P" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_918" name="Q" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_832" name="Kp3g" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_830" name="Katp" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_828" name="Kbpg" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_823" name="Kadp" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="PGM kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A/Kp3g-P/(Kp3g*Keq))/(1+A/Kp3g+P/Kp2g)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_822" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_829" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_833" name="Kp3g" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_869" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_858" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_821" name="Kp2g" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="ENO kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A/Kp2g-P/(Kp2g*Keq))/(1+A/Kp2g+P/Kpep)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_820" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_862" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_831" name="Kp2g" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_819" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_817" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_815" name="Kpep" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="PYK kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A*B/(Kpep*Kadp)-P*Q/(Kpep*Kadp*Keq))/((1+A/Kpep+P/Kpyr)*(1+B/Kadp+Q/Katp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_814" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_818" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_900" name="B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_813" name="Kpep" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_811" name="Kadp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_796" name="P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_794" name="Q" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_792" name="Keq" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_790" name="Kpyr" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_788" name="Katp" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="PDC kinetics" type="UserDefined" reversible="false">
      <Expression>
        Vmax*((A/Kpyr)^nH)/(1+(A/Kpyr)^nH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_787" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_791" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_795" name="Kpyr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_812" name="nH" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="ADH kinetics" type="UserDefined" reversible="true">
      <Expression>
        Vmax*(A*B/(Ketoh*Kinad)-P*Q/(Ketoh*Kinad*Keq))/(1+B/Kinad+A*Knad/(Kinad*Ketoh)+P*Knadh/(Kinadh*Kacald)+Q/Kinadh+A*B/(Kinad*Ketoh)+B*P*Knadh/(Kinad*Kinadh*Kacald)+A*Q*Knad/(Kinad*Kinadh*Ketoh)+P*Q/(Kacald*Kinadh)+A*B*P/(Kinad*Kiacald*Ketoh)+A*P*Q/(Kietoh*Kinadh*Kacald))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_854" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_793" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_827" name="B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_786" name="Ketoh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_764" name="Kinad" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_762" name="P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_760" name="Q" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_752" name="Keq" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="Knad" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_748" name="Knadh" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_634" name="Kinadh" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="Kacald" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_738" name="Kiacald" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="Kietoh" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="ATPase" type="UserDefined" reversible="false">
      <Expression>
        Katpase*ATP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_735" name="Katpase" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_739" name="ATP" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="G3PDH kinetics" type="UserDefined" reversible="false">
      <Expression>
        Vmax*((A/Kdhap)*(B/Knadh)-(P/Kdhap)*(Q/Knadh)*(1/Keq))/((1+A/Kdhap+P/Kglycerol)*(1+B/Knadh+Q/Knad))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_639" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_747" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_751" name="Kdhap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_761" name="B" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_785" name="Knadh" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_789" name="P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_734" name="Q" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_732" name="Keq" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_726" name="Kglycerol" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_724" name="Knad" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Glycogen synthesis kinetics" type="UserDefined" reversible="false">
      <Expression>
        KGLYCOGEN
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_723" name="KGLYCOGEN" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Trehalose synthesis kinetics" type="UserDefined" reversible="false">
      <Expression>
        Ktrehalose
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_725" name="Ktrehalose" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Succinate kinetics" type="UserDefined" reversible="false">
      <Expression>
        k*A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_731" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_797" name="A" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Objective Function 1" type="Expression">
      <Expression>
        -&lt;CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],Reference=Flux&gt;
      </Expression>
    </Function>
    <Function key="Function_124" name="Objective Function" type="Expression">
      <Expression>
        &lt;CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],Reference=Flux&gt;
      </Expression>
    </Function>
    <Function key="Function_107" name="HXT kinetics" type="UserDefined" reversible="true">
      <Expression>
        (Vmax * (A-B)/Kglc)/(1+(A+B)/Kglc+(Ki*A*B)/(Kglc^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_816" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_749" name="B" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_722" name="Kglc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_720" name="Ki" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Yeast glycolysis model of Pritchard and Kell" timeUnit="min" volumeUnit="ml" quantityUnit="mmol" type="deterministic">
    <Comment>
      <html xmlns="http://www.w3.org/1999/xhtml"><head><meta name="qrichtext" content="1" /></head><body style="font-size:7pt;font-family:DejaVu Sans">
<p>From Pritchard and Kell (2002) Eur. J. Biochem. , modified from Teusink et al. (2000) Eur J Biochem 267, 5313-5329.</p>
<p>This version uses the Vmaxes found by the best fit (R1) of Table 1 of the Pritchard and Kell paper, and simulates a decrease of external glucose concentration from 100 to 2 mM </p>
</body></html>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_2" name="compartment" simulationType="fixed">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_60" name="GLCi" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_59" name="ATP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_58" name="G6P" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="ADP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_56" name="F6P" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="F16bP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_54" name="AMP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="DHAP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_52" name="GAP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_51" name="NAD" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_50" name="BPG" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="NADH" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_48" name="P3G" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="P2G" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_46" name="PEP" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="PYR" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_44" name="AcAld" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Succinate" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Trehalose" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Glycogen" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Glycerol" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="EtOH" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_38" name="CO2" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="F26bP" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_36" name="GLCo" simulationType="fixed" compartment="Compartment_2">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_52" name="HXT" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_206" name="Vmax" value="97.24"/>
          <Constant key="Parameter_205" name="Kglc" value="1.1918"/>
          <Constant key="Parameter_204" name="Ki" value="0.91"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_816">
              <SourceParameter reference="Parameter_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Parameter_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Parameter_204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="HK" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_203" name="Vmax" value="236.7"/>
          <Constant key="Parameter_198" name="Kglc" value="0.08"/>
          <Constant key="Parameter_199" name="Katp" value="0.15"/>
          <Constant key="Parameter_200" name="Keq" value="2000"/>
          <Constant key="Parameter_196" name="Kg6p" value="30"/>
          <Constant key="Parameter_197" name="Kadp" value="0.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="Parameter_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_957">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_950">
              <SourceParameter reference="Parameter_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_948">
              <SourceParameter reference="Parameter_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_941">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_939">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_937">
              <SourceParameter reference="Parameter_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_930">
              <SourceParameter reference="Parameter_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_928">
              <SourceParameter reference="Parameter_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="PGI" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_202" name="Vmax" value="1056"/>
          <Constant key="Parameter_201" name="Kg6p" value="1.4"/>
          <Constant key="Parameter_195" name="Keq" value="0.29"/>
          <Constant key="Parameter_194" name="Kf6p" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_927">
              <SourceParameter reference="Parameter_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_931">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_940">
              <SourceParameter reference="Parameter_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_949">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_958">
              <SourceParameter reference="Parameter_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_921">
              <SourceParameter reference="Parameter_194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="PFK" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_193" name="Vmax" value="110"/>
          <Constant key="Parameter_192" name="gR" value="5.12"/>
          <Constant key="Parameter_188" name="Kf6p" value="0.1"/>
          <Constant key="Parameter_189" name="Katp" value="0.71"/>
          <Constant key="Parameter_185" name="L0" value="0.66"/>
          <Constant key="Parameter_186" name="Ciatp" value="100"/>
          <Constant key="Parameter_187" name="Kiatp" value="0.65"/>
          <Constant key="Parameter_191" name="Camp" value="0.0845"/>
          <Constant key="Parameter_190" name="Kamp" value="0.0995"/>
          <Constant key="Parameter_184" name="Cf26" value="0.0174"/>
          <Constant key="Parameter_183" name="Kf26" value="0.000682"/>
          <Constant key="Parameter_182" name="Cf16" value="0.397"/>
          <Constant key="Parameter_181" name="Kf16" value="0.111"/>
          <Constant key="Parameter_180" name="Catp" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_109">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_920">
              <SourceParameter reference="Parameter_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_951">
              <SourceParameter reference="Parameter_192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_938">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Parameter_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_910">
              <SourceParameter reference="Parameter_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_908">
              <SourceParameter reference="Parameter_185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_901">
              <SourceParameter reference="Parameter_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="Parameter_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="Parameter_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_890">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_888">
              <SourceParameter reference="Parameter_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_880">
              <SourceParameter reference="Parameter_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_878">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_872">
              <SourceParameter reference="Parameter_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="Parameter_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Parameter_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_865">
              <SourceParameter reference="Parameter_180"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="ALD" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_179" name="Vmax" value="94.69"/>
          <Constant key="Parameter_178" name="Kf16bp" value="0.3"/>
          <Constant key="Parameter_177" name="Keq" value="0.069"/>
          <Constant key="Parameter_176" name="Kdhap" value="2"/>
          <Constant key="Parameter_175" name="Kgap" value="2.4"/>
          <Constant key="Parameter_174" name="Kigap" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_110">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_864">
              <SourceParameter reference="Parameter_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="Parameter_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_879">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_889">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="Parameter_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Parameter_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_911">
              <SourceParameter reference="Parameter_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_929">
              <SourceParameter reference="Parameter_174"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="TPI" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_173" name="k1" value="450000"/>
          <Constant key="Parameter_172" name="k2" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="GAPDH" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_171" name="C" value="1"/>
          <Constant key="Parameter_170" name="Vmaxf" value="1152"/>
          <Constant key="Parameter_169" name="Kgap" value="0.21"/>
          <Constant key="Parameter_168" name="Knad" value="0.09"/>
          <Constant key="Parameter_167" name="Vmaxr" value="6719"/>
          <Constant key="Parameter_166" name="Kbpg" value="0.0098"/>
          <Constant key="Parameter_256" name="Knadh" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_111">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_947">
              <SourceParameter reference="Parameter_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_909">
              <SourceParameter reference="Parameter_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_891">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_877">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Parameter_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="Parameter_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="Parameter_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="Parameter_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_853">
              <SourceParameter reference="Parameter_256"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="PGK" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_257" name="Vmax" value="1288"/>
          <Constant key="Parameter_363" name="Keq" value="3200"/>
          <Constant key="Parameter_362" name="Kp3g" value="0.53"/>
          <Constant key="Parameter_361" name="Katp" value="0.3"/>
          <Constant key="Parameter_360" name="Kbpg" value="0.003"/>
          <Constant key="Parameter_359" name="Kadp" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_112">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_834">
              <SourceParameter reference="Parameter_257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="Parameter_363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_887">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_918">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="Parameter_362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_830">
              <SourceParameter reference="Parameter_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_828">
              <SourceParameter reference="Parameter_360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="Parameter_359"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="PGM" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_358" name="Vmax" value="2585"/>
          <Constant key="Parameter_357" name="Kp3g" value="1.2"/>
          <Constant key="Parameter_356" name="Keq" value="0.19"/>
          <Constant key="Parameter_355" name="Kp2g" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_113">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="Parameter_358"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_829">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="Parameter_357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="Parameter_356"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="Parameter_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="ENO" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_354" name="Vmax" value="201.6"/>
          <Constant key="Parameter_353" name="Kp2g" value="0.04"/>
          <Constant key="Parameter_352" name="Keq" value="6.7"/>
          <Constant key="Parameter_351" name="Kpep" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_114">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="Parameter_354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="Parameter_353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_819">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_817">
              <SourceParameter reference="Parameter_352"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="Parameter_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="PYK" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_350" name="Vmax" value="1000"/>
          <Constant key="Parameter_349" name="Kpep" value="0.14"/>
          <Constant key="Parameter_348" name="Kadp" value="0.53"/>
          <Constant key="Parameter_347" name="Keq" value="6500"/>
          <Constant key="Parameter_346" name="Kpyr" value="21"/>
          <Constant key="Parameter_345" name="Katp" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_115">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="Parameter_350"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_818">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_900">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="Parameter_349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Parameter_348"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Parameter_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Parameter_346"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Parameter_345"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="PDC" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_344" name="Vmax" value="857.8"/>
          <Constant key="Parameter_343" name="Kpyr" value="4.33"/>
          <Constant key="Parameter_342" name="nH" value="1.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_116">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Parameter_344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Parameter_343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="Parameter_342"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="ADH" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_341" name="Vmax" value="209.5"/>
          <Constant key="Parameter_340" name="Ketoh" value="17"/>
          <Constant key="Parameter_339" name="Kinad" value="0.92"/>
          <Constant key="Parameter_338" name="Keq" value="6.9e-05"/>
          <Constant key="Parameter_337" name="Knad" value="0.17"/>
          <Constant key="Parameter_336" name="Knadh" value="0.11"/>
          <Constant key="Parameter_335" name="Kinadh" value="0.031"/>
          <Constant key="Parameter_334" name="Kacald" value="1.11"/>
          <Constant key="Parameter_333" name="Kiacald" value="1.1"/>
          <Constant key="Parameter_332" name="Kietoh" value="90"/>
        </ListOfConstants>
        <KineticLaw function="Function_117">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_854">
              <SourceParameter reference="Parameter_341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_827">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Parameter_340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="Parameter_339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Parameter_338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Parameter_337"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Parameter_336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Parameter_335"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Parameter_334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Parameter_333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Parameter_332"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="ATPase" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_331" name="Katpase" value="39.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_118">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Parameter_331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="AK" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_330" name="k1" value="45"/>
          <Constant key="Parameter_329" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_330"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_57"/>
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="G3PDH" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_328" name="Vmax" value="47.11"/>
          <Constant key="Parameter_327" name="Kdhap" value="0.4"/>
          <Constant key="Parameter_326" name="Knadh" value="0.023"/>
          <Constant key="Parameter_325" name="Keq" value="4300"/>
          <Constant key="Parameter_324" name="Kglycerol" value="1"/>
          <Constant key="Parameter_323" name="Knad" value="0.93"/>
        </ListOfConstants>
        <KineticLaw function="Function_119">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Parameter_328"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Parameter_327"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="Parameter_326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Parameter_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Parameter_324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Parameter_323"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Glycogen Branch" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_322" name="KGLYCOGEN" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_120">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Parameter_322"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Trehalose Branch" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_321" name="Ktrehalose" value="2.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_121">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Parameter_321"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Succinate Branch" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_320" name="k" value="21.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_122">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Parameter_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9.05303e+20 7.72031e+20 1.61095e+21 1.07279e+20 6.04715e+20 2.72086e+19 7.69002e+19 3.7637e+20 5.88076e+19 1.09321e+21 4.437559999999996e+17 3.808109999999996e+19 3.74657e+21 5.33374e+20 1.52067e+21 5.22178e+19 1.76379e+20 0 0 0 9.03321e+19 3.01107e+22 6.022139999999999e+20 1.20443e+19 1.20443e+21 1
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_16" name="Steady-State" type="steadyState" scheduled="true" updateModel="false">
      <Report reference="Report_12" target="" append="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="0"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Report reference="Report_12" target="" append="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.001"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="1"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Adams Max Order" type="unsignedInteger" value="12"/>
        <Parameter name="BDF Max Order" type="unsignedInteger" value="5"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_14" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_13" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="YeastGlycolysis-Optimization.txt" append="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_16"/>
        <Parameter name="Time-Course" type="key" value=""/>
        <Parameter name="ObjectiveFunction" type="key" value="Function_123"/>
        <Parameter name="Maximize" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Glycogen Branch],ParameterGroup=Parameters,Parameter=KGLYCOGEN,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="LowerRelation" type="string" value="&lt;="/>
            <Parameter name="UpperBound" type="cn" value="8"/>
            <Parameter name="UpperRelation" type="string" value="&lt;="/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Trehalose Branch],ParameterGroup=Parameters,Parameter=Ktrehalose,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="LowerRelation" type="string" value="&lt;="/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="UpperRelation" type="string" value="&lt;="/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Succinate Branch],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="LowerRelation" type="string" value="&lt;="/>
            <Parameter name="UpperBound" type="cn" value="25"/>
            <Parameter name="UpperRelation" type="string" value="&lt;="/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_16"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_10" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_16"/>
        <Parameter name="Time-Course" type="key" value="Task_15"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Use Default Absolute Tolerance" type="bool" value="1"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e+09"/>
        <Parameter name="Adams Max Order" type="unsignedInteger" value="12"/>
        <Parameter name="BDF Max Order" type="unsignedInteger" value="5"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="3"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_12" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Simulation Counter\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Simulation Counter"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[GLCi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[GLCi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ADP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[ADP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[F6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F16bP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[F16bP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AMP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[AMP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DHAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[DHAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BPG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[BPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NADH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[NADH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P3G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[P3G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P2G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[P2G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PEP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[PEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PYR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[PYR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AcAld]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[AcAld],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Reaction fluxes" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="M.Reactions[HXT].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HXT],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[HK].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PGI].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PFK].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[ALD].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[TPI].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[TPI],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[GAPDH].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PGK].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PGM].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[ENO].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PYK].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[PDC].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PDC],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[ADH].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[ATPase].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ATPase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[AK].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[AK],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[G3PDH].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[Glycogen Branch].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Glycogen Branch],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[Trehalose Branch].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Trehalose Branch],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="M.Reactions[Succinate Branch].Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Succinate Branch],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
</COPASI>
