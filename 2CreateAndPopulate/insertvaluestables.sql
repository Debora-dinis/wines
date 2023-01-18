-- insert photo table --
INSERT INTO photos (photoname)
VALUES 
("henriques"),
("montevelho15"),
("defesa"),
("faisao"),
("vidigueirapremium"),
("bonavita"),
("mulavelha"),
("vineacartuxa"),
("fragadagalhofa"),
("dommartinho"),
("pousadadocorvograndeselecao"),
("viladosgamas"),
("soviborborba"),
("melangea3"),
("altano"),
("casalsoeiro"),
("vinhaantiga"),
("cabecadvelho"),
("valedanora"),
("patriaselecao"),
("encostasdefavaios"),
("terrasdosuao"),
("almocreve"),
("terracorealpremium"),
("pias"),
("hipotesereserva"),
("tapadadosgamas"),
("montedacontendaselecao"),
("adegadevilarealreserva"),
("vidigueira"),
("freiestevao"),
("vinhoregionallisboareverva"),
("portadaravessacolheitaespecial1"),
("portadaravessa1"),
("longitude"),
("tapadadaslebrespremium"),
("jpazeitao"),
("loios"),
("portasdaherdade"),
("baraodafigueira"),
("cavalolusoreserva"),
("leziria"),
("cachofresco"),
("chapeleiro"),
("mochogalegosignature"),
("adegadevilarealpremium"),
("montedasserralheiraspalmela"),
("conventual"),
("montevelho"),
("eacartuxa"),
("serrodasno"),
("herdadedopesocolheita"),
("casaleirocolheitaselecionada"),
("syrahvinhoregionallisboa"),
("mariaganchatouriganacional"),
("pousadadocorvoreserva"),
("vilaresparaisoreserva"),
("encostadasperdizes"),
("peradoce"),
("periquita"),
("aldeiadeirmaos"),
("cistusreserva"),
("soviborborbareserva"),
("viladecorgos"),
("muralhasdemoncao"),
("courelasdepiasfurdusmerula"),
("encostadasperdizessuperior"),
("moiras"),
("portasdaravessacolheitaespecial2"),
("fontedosfradesreserva"),
("montedosamigos"),
("portadaravessa2"),
("adegademurca"),
("pancas"),
("reallavradorlegado"),
("papafigos"),
("sossego"),
("desenfado"),
("papoamareloreserva"),
("guardariossignature"),
("adegadepiasreserva"),
("adegamayortouriganacional"),
("quintadoslouridosalvarinho"),
("pacodoconde"),
("navegante"),
("montedacal"),
("santavitoriaselecao"),
("terragrande"),
("trincabolotas"),
("montegrandereserva"),
("montedasanforas"),
("montedaribeira"),
("cabarenetsauvignon"),
("marquesdeborbacolheita"),
("casaamericodop"),
("caiado"),
("alabastro"),
("portadaravessabranco");

SELECT *
FROM photos;

-- insert producers table --
INSERT INTO producers (producer)
VALUES ('Adega josé Sousa'),
("Caves da Montanha"),
("Herdade do esporao"),
("Adega Camilo Alves"),
("Adega cooperativa da vidigueira"),
("Casa Santos Limaquinta da boavista"),
("Quinta do Gradil "),
("Fundacao Eugenio Almeida"),
("Vinilourenco Poco do canto "),
("Bacalhoa Quinta do carmo "),
("Adega cooperativa de redondo "),
("Sociedade de vinhos de borba"),
("Carvalhais Sogrape vinhos"),
("Symington family estates"),
("Somidol sociade vinicola "),
("Alvarinho de moncao "),
("seacampo "),
("Sotavinhos"),
("Carmin reguengos"),
("Adega cooperativa de Favaios"),
("abegoaria cooperativa agricola de granja"),
("Albenaz / carmin reguengos"),
("Soc.Agricola de pias "),
("Adega cooperativa de silgueiros"),
("Herdade da madeira velha "),
("Adega cooperativa de vila real "),
("Adega cooperativa de vidigueira "),
("Adega do Frei estevao "),
("Adega cooperativa de redondo CRL"),
("Herdade das mouras de arraiolos"),
("Bacalhoa "),
("Joao Portugal Ramos Vinhos "),
("Companhia das quintas"),
("Quinta da alorna"),
("Adega cooperativa de almeirim CRL"),
("Carlos Gabriel Fernandes"),
("Ravasqueira"),
("Palmela D.O."),
("Adega cooperativa de portalegre CRL"),
("Adega cooperativa de Mesao Frio "),
("Herdade do peso sogrape vinhos"),
("Enoport "),
("Adega cooperativa de s.mamede da ventosa"),
("Casa Relvas"),
("Sociedade dos vinhos Borges"),
("Sociedade agricola de pias "),
("Herdade de candeeiraredondo"),
("Jose Maria da Fonseca Vinhos"),
("Sivipa"),
("Quinta do vale da perdiz "),
("Beira atlantico Adega de cantanhede "),
("Adega cooperativa regional de Moncao "),
("Amareleja "),
("Adega cooperativa de Murca"),
("Quinta de pancas "),
("Casa ferreirinha sogrape vinhos"),
("Goanvi Bottling "),
("Cooperativa agricola de santo isidro de pegões"),
("Monte da ravasqueira"),
("Casa clara Monte da capela"),
("Adega Mayor Herdade Argamassas"),
("Bacalhoa"),
("Sociedade agricola encosta do guadiana "),
("Herdade Monte da Cal fronteira"),
("Herdade da Malhada");

SELECT *
FROM producers;

-- insert varieties table --

INSERT INTO varieties (variety)
VALUES ('Red'),
('White'),
('Green'),
('Rose'),
('Sparkling');

SELECT *
FROM varieties;

-- insert into regions table --

INSERT INTO regions (region)
VALUES ("Açores"),
("Madeira"),
("Algarve"),
("Alentejo"),
("Península de Setúbal"),
("Tejo"),
("Lisboa"),
("Beira Interior"),
("Dão"),
("Bairrada"),
("Douro"),
("Trás-os-Montes"),
("Minho (Vinhos Verdes)");

SELECT *
FROM regions;

-- insert into ranking table --

INSERT INTO ranking (ranking)
VALUES  ("Excelente Merda"),
("Merda"),
("OK"), 
("Bacano"),
("Boa Pinga");

SELECT *
FROM ranking;

-- insert into wines table --
INSERT INTO wines (wine_name,year,variety_id,producer_id,region_id,price,photo_id,ranking_id,alcohol_percentage,description)
VALUES ("Monte da ribeira",2019,1,65,4,6,92,4,14.5,"Comprado no auchan em promoção por 3.49. Bebido 21/05/2022"),
("Cabarnet Sauvignon",2019,1,5,7,6,93,3,0,"Aniversário do Luís 13/06/22"),
("Marquês de Borba Colheita",2019,1,31,4,6,94,3,0,"Comprado no Auchan" ),
("Casa Américo DOP",2018,1,16,9,6,95,3,13,"Oferecido pela Débora"),
("Caiado",2015,1,60,4,4,96,3,14,"Bebido em sangria. Oferecido pela Débora"),
("Alabastro",2020,1,5,4,3,97,3,14,"Comprado no Auchan"),
("Porta da Ravessa",2020,2,10,4,2,98,4,12.5,"Oferecido pelo Maduro e a Mariana");

SELECT *
FROM wines
ORDER BY price;







