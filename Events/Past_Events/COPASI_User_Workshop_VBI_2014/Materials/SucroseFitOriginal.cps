<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.5.31 (development) (http://www.copasi.org) at 2010-07-14 20:43:16 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="31">
  <ListOfFunctions>
    <Function key="Function_49" name="function_4_v1" type="UserDefined" reversible="true">
      <Expression>
        Vmax1*Fruex/(Km1Fruex*(1+Fru/Ki1Fru)+Fruex)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="Fru" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_243" name="Fruex" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="Ki1Fru" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="Km1Fruex" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_260" name="Vmax1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_v2" type="UserDefined" reversible="true">
      <Expression>
        Vmax2*Glcex/(Km2Glcex*(1+Glc/Ki2Glc)+Glcex)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="Glc" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_254" name="Glcex" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="Ki2Glc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="Km2Glcex" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="Vmax2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_v3" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax3*(Glc/Km3Glc)*(ATP/Km3ATP)/((1+ATP/Km3ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="ATP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="Fru" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="Glc" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="HexP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="Ki3G6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="Ki4F6P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="Km3ATP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="Km3Glc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Km4Fru" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Vmax3" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_v4" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax4*(Fru/Km4Fru)*(ATP/Km4ATP)/((1+ATP/Km4ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="ATP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="Fru" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="Glc" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="HexP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_291" name="Ki3G6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="Ki4F6P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="Km3Glc" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="Km4ATP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Km4Fru" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="Vmax4" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_v5" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax5/(1+Fru/Ki5Fru)*(Fru/Km5Fru)*(ATP/Km5ATP)/(1+Fru/Km5Fru+ATP/Km5ATP+Fru*ATP/(Km5Fru*Km5ATP)+ADP/Ki5ADP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_278" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="Fru" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="Ki5ADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Ki5Fru" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="Km5ATP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="Km5Fru" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="Vmax5" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_v6" type="UserDefined" reversible="true">
      <Expression>
        Vmax6f*(0.0575*HexP*0.8231*HexP-Suc6P*UDP/Keq6)/(0.0575*HexP*0.8231*HexP*(1+Suc6P/Ki6Suc6P)+Km6F6P*(1+phos/Ki6Pi)*(0.8231*HexP+Ki6UDPGlc)+Km6UDPGlc*0.0575*HexP+Vmax6f/(Vmax6r*Keq6)*(Km6UDP*Suc6P*(1+0.8231*HexP/Ki6UDPGlc)+UDP*(Km6Suc6P*(1+Km6UDPGlc*0.0575*HexP/(Ki6UDPGlc*Km6F6P*(1+phos/Ki6Pi)))+Suc6P*(1+0.0575*HexP/Ki6F6P))))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="HexP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="Keq6" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="Ki6F6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="Ki6Pi" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Ki6Suc6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="Ki6UDPGlc" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Km6F6P" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="Km6Suc6P" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="Km6UDP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="Km6UDPGlc" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Suc6P" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="UDP" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_300" name="Vmax6f" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="Vmax6r" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="phos" order="14" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_v7" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax7*Suc6P/(Km7Suc6P+Suc6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="Km7Suc6P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="Suc6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="Vmax7" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_v8" type="UserDefined" reversible="true">
      <Expression>
        -Vmax8f*(Suc*UDP-Fru*0.8231*HexP/Keq8)/(Suc*UDP*(1+Fru/Ki8Fru)+Km8Suc*(UDP+Ki8UDP)+Km8UDP*Suc+Vmax8f/(Vmax8r*Keq8)*(Km8UDPGlc*Fru*(1+UDP/Ki8UDP)+0.8231*HexP*(Km8Fru*(1+Km8UDP*Suc/(Ki8UDP*Km8Suc))+Fru*(1+Suc/Ki8Suc))))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="Fru" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="HexP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="Keq8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="Ki8Fru" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="Ki8Suc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="Ki8UDP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="Km8Fru" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="Km8Suc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Km8UDP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="Km8UDPGlc" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="Suc" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_308" name="UDP" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="Vmax8f" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="Vmax8r" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_v9" type="UserDefined" reversible="true">
      <Expression>
        Vmax9/(1+Glc/Ki9Glc)*Suc/(Km9Suc*(1+Fru/Ki9Fru)+Suc)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="Fru" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_334" name="Glc" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_310" name="Ki9Fru" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="Ki9Glc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="Km9Suc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="Suc" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="Vmax9" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_v10" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax10*0.0575*HexP/(Km10F6P+0.0575*HexP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="HexP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="Km10F6P" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="Vmax10" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_v11" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax11*Suc/(Km11Suc+Suc)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="Km11Suc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="Suc" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="Vmax11" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Rohwer2001_Sucrose" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11513743"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2005-05-03T13:08:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>jls@sun.ac.za</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Snoep</vCard:Family>
            <vCard:Given>Jacky L</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Stellenbosh University</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2008-08-21T11:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000023"/>
        <rdf:li rdf:resource="urn:miriam:kegg.pathway:map00500"/>
        <rdf:li rdf:resource="urn:miriam:taxonomy:4547"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO%3A0005986"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
  <p>
    <font face="Arial, Helvetica, sans-serif">
      <b>
        <a href="http://www.sbml.org/">SBML</a> level 2 code generated for the JWS Online project by Jacky Snoep using <a href="http://pysces.sourceforge.net/">PySCeS</a>
        <br />
Run this model online at <a href="http://jjj.biochem.sun.ac.za/">http://jjj.biochem.sun.ac.za</a>
        <br />
To cite JWS Online please refer to: Olivier, B.G. and Snoep, J.L. (2004) <a href="http://bioinformatics.oupjournals.org/cgi/content/abstract/20/13/2143">Web-based 
modelling using JWS Online</a>, Bioinformatics, 20:2143-2144
 </b>
      </font>
    </p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models. It is copyright (c) 2005-2009 The BioModels Team.<br />For more information see the <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>.<br />To cite BioModels Database, please use <a href="http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&amp;pubmedid=16381960" target="_blank"> Le Novère N., Bornstein B., Broicher A., Courtot M., Donizelli M., Dharuri H., Li L., Sauro H., Schilstra M., Shapiro B., Snoep J.L., Hucka M. (2006) BioModels Database: A Free, Centralized Database of Curated, Published, Quantitative Kinetic Models of Biochemical and Cellular Systems Nucleic Acids Res., 34: D689-D691.</a>
  </p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:obo.go:GO%3A0005623" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Fru" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00095" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15824" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Glc" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00031" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17634" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="HexP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00029" />
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00085" />
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00103" />
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00668" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A14314" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15946" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16218" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Suc6P" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C02591" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16308" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Suc" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00089" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17992" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Sucvac" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00089" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17992" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="glycolysis" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C05378" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="phos" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00009" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A18367" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="UDP" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00015" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17659" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="ADP" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00008" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16761" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="ATP" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00002" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15422" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Glcex" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00031" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17634" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Fruex" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00095" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15824" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="v1" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO%3A0015755" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_633" name="Vmax1" value="0.286"/>
          <Constant key="Parameter_634" name="Km1Fruex" value="0.2"/>
          <Constant key="Parameter_635" name="Ki1Fru" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_243">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_635"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_634"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_260">
              <SourceParameter reference="Parameter_633"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="v2" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO%3A0015758" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_636" name="Vmax2" value="0.286"/>
          <Constant key="Parameter_637" name="Km2Glcex" value="0.2"/>
          <Constant key="Parameter_638" name="Ki2Glc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_638"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Parameter_637"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_636"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="v3" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00299" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.1.2" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_639" name="Vmax3" value="0.197"/>
          <Constant key="Parameter_640" name="Km3Glc" value="0.07"/>
          <Constant key="Parameter_641" name="Km3ATP" value="0.25"/>
          <Constant key="Parameter_642" name="Km4Fru" value="10"/>
          <Constant key="Parameter_643" name="Ki3G6P" value="0.1"/>
          <Constant key="Parameter_644" name="Ki4F6P" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_643"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_644"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_641"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_640"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_642"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_639"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="v4" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00760" />
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03920" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.1.4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_645" name="Vmax4" value="0.197"/>
          <Constant key="Parameter_646" name="Km4Fru" value="10"/>
          <Constant key="Parameter_647" name="Km4ATP" value="0.25"/>
          <Constant key="Parameter_648" name="Km3Glc" value="0.07"/>
          <Constant key="Parameter_649" name="Ki3G6P" value="0.1"/>
          <Constant key="Parameter_650" name="Ki4F6P" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_650"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_648"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_647"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_646"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_645"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="v5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00760" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.1.4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_651" name="Vmax5" value="0.164"/>
          <Constant key="Parameter_652" name="Ki5Fru" value="12"/>
          <Constant key="Parameter_653" name="Km5Fru" value="0.1"/>
          <Constant key="Parameter_654" name="Km5ATP" value="0.085"/>
          <Constant key="Parameter_655" name="Ki5ADP" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_652"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_654"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_653"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_651"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="v6" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00766" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.4.1.14" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_656" name="Vmax6f" value="0.379"/>
          <Constant key="Parameter_657" name="Keq6" value="10"/>
          <Constant key="Parameter_658" name="Ki6Suc6P" value="0.07"/>
          <Constant key="Parameter_659" name="Km6F6P" value="0.6"/>
          <Constant key="Parameter_660" name="Ki6Pi" value="3"/>
          <Constant key="Parameter_661" name="Ki6UDPGlc" value="1.4"/>
          <Constant key="Parameter_662" name="Km6UDPGlc" value="1.8"/>
          <Constant key="Parameter_663" name="Vmax6r" value="0.2"/>
          <Constant key="Parameter_664" name="Km6UDP" value="0.3"/>
          <Constant key="Parameter_665" name="Km6Suc6P" value="0.1"/>
          <Constant key="Parameter_666" name="Ki6F6P" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_657"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_666"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_660"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_658"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_661"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_659"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_665"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Parameter_664"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_662"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_656"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_663"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="v7" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00805" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:3.1.3.24" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_667" name="Vmax7" value="0.5"/>
          <Constant key="Parameter_668" name="Km7Suc6P" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_668"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_667"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="v8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00806" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.4.1.13" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_669" name="Vmax8f" value="0.677"/>
          <Constant key="Parameter_670" name="Keq8" value="5"/>
          <Constant key="Parameter_671" name="Ki8Fru" value="4"/>
          <Constant key="Parameter_672" name="Km8Suc" value="50"/>
          <Constant key="Parameter_673" name="Ki8UDP" value="0.3"/>
          <Constant key="Parameter_674" name="Km8UDP" value="0.3"/>
          <Constant key="Parameter_675" name="Vmax8r" value="0.3"/>
          <Constant key="Parameter_676" name="Km8UDPGlc" value="0.3"/>
          <Constant key="Parameter_677" name="Km8Fru" value="4"/>
          <Constant key="Parameter_678" name="Ki8Suc" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_670"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_671"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_678"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_673"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_677"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_672"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_674"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_676"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_669"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_675"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="v9" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is rdf:resource="urn:miriam:kegg.reaction:R00802" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.2.1.20" />
        <rdf:li rdf:resource="urn:miriam:ec-code:3.2.1.26" />
        <rdf:li rdf:resource="urn:miriam:ec-code:3.2.1.48" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_679" name="Vmax9" value="0.372"/>
          <Constant key="Parameter_680" name="Ki9Glc" value="15"/>
          <Constant key="Parameter_681" name="Km9Suc" value="10"/>
          <Constant key="Parameter_682" name="Ki9Fru" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_682"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_680"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_681"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_679"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="v10" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO%3A0006096" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_683" name="Vmax10" value="0.1"/>
          <Constant key="Parameter_684" name="Km10F6P" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_684"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Parameter_683"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="v11" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obo.go:GO%3A0015770" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_685" name="Vmax11" value="1"/>
          <Constant key="Parameter_686" name="Km11Suc" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_686"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_685"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.022141500000001e+20 6.022141500000001e+20 6.022141500000001e+20 6.022141500000001e+20 6.022141500000001e+20 0 0 3.071292165e+21 1.2044283e+20 1.2044283e+20 6.022141500000001e+20 6.022141500000001e+20 6.022141500000001e+20 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1e+09"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1e+06"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_14" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_15" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="Bit Pattern Tree Algorithm" type="EFMBitPatternTreeMethod">
      </Method>
    </Task>
    <Task key="Task_16" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
      </Problem>
      <Method name="Current Solution Statistics" type="CurrentSolutionStatistics">
      </Method>
    </Task>
    <Task key="Task_18" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_11"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
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
    <Report key="Report_11" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Progress of Fit" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="sum of squares" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_12" objectCN="CN=Root,Model=Rohwer2001_Sucrose,Vector=Compartments[cell],Vector=Metabolites[Glcex],Reference=InitialConcentration" objectType="float" objectValue="1" minValue="1" maxValue="20" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_1" associatedEntityKey="Task_12" objectCN="CN=Root,Model=Rohwer2001_Sucrose,Vector=Compartments[cell],Vector=Metabolites[Fruex],Reference=InitialConcentration" objectType="float" objectValue="1" minValue="1" maxValue="20" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="BIOMD0000000023.xml">
    <SBMLMap SBMLid="ADP" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="ATP" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Fru" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Fruex" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Glc" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Glcex" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="HexP" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Suc" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Suc6P" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Sucvac" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="UDP" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="glycolysis" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="phos" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="v10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="v11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="v6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="v8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="v9" COPASIkey="Reaction_8"/>
  </SBMLReference>
</COPASI>
