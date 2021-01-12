TODO
==========


### Technical

- Check data/unified/polished/ & ~/data/comhis/Fennica/unified & gitlab@gitlab.utu.fi:leolahti/comhis.git

- Paikkatiedot: Billnäs -> Karjaa?

- Onko primaarikieli luotettava; näitä voisi testata joko
  manuaalisesti, tai sitten vertaamalla otsikon kieleen tms.

- Self published: add summaries also for these to publisher.Rmd

- Gender: putsattu top-20 female mukaan. (F + K). Gender-mäppien
  viimeistely. After Krakow.

- Apply publisher polishing also for the corporate field (at least in Fennica)?

- Vieläkin näyttäs olevan negatiivisia pagecountteja

- Gender: putsattu top-20 female mukaan. (F + K)

- Use corporate field for NA publishers ?
   #if ("corporate" %in% names(df.orig)) {
   #  message("Augmenting missing publisher entries with the corporate field")
   #  inds <- which(is.na(df.orig$publisher))
   #  df.orig$publisher[inds] <- df.orig$corporate[inds]
   #}

- Auktoridata saatiin käyttöön ja pitäisi integroida Fennicaan.

- Lisää 6to kokoarviot tauluihin

- Single/MultiVol/Issue erottelut tulee ESTn nojalla mutta
  kesken. Pitäiskö tehdä erikseen Fennicalle ym vai ei

- KK:lta saatu ~/proj/2014-Aatelouhinta/Sanastoja.doc - tietokantoja
  joita voitaisiin käyttää suomalaisten paikannimien, henkilönimien
  ym. validointiin.

- Found the following files with duplicate lower-cased file names:
  inst/examples/output.tables/city_Altdorf.csv
  inst/examples/output.tables/city_Berliini.csv
  etc..

- Synonyymitaulujen haku on mahd. pitkälle automatisoitu
  stringmatchingillä. Voidaanko tätä hyödyntää lisää?
  

### Analyses

- Self-publishing in time. Huom julkaisjakentän eri kirjoitusasuja;
  tekijänimille ei välttämättä osata yhdistää kirjoittajakentän kanssa

- ESTC Suomessa / Ruotsissa ? (alkaa lähteä homma vähän käsistä jos
  vielä ESTC:ä ängetään tähän samaa kässäriin tällä aikataululla eli
  jättäisin pois)


Tärkein tehtävä tutkia pystytäänkö julkaisemiseen liittyvästä
Fennica-datasta erottelemaan jotain selkeitä trendejä suomalaisesta
tiedontuotannosta aikavälillä 1640-1828, pääfokus julkaisijat.

* Yleiset trendit:

Miten paperinkulutus suhtautuu dokumenttien määrään? Löydetäänkö
ajankohtia jolloin on poikkeuksellista kasvua / laskua tms. Esim
top-10 julkaisupaikat. kirjan nousuun mediana (paperinkulutus /
dokumentti, miten yli 50 sivuiset dokumentit yleistyvät ajassa /
voidaanko tässä nähdä jotain paikallisia eroja?

* Julkaisijatrendit:

Julkaisijoista verkostoanalyysi. Keskeisimmät “nodet” siihen miten
julkaisijakenttä muuttuu ajassa. Auktorit, valtioasiakirjat,
yliopisto, muut julkaisijat (ainakin) kategoroina joiden ympärille
verkostoanalyysi voisi syntyä (valtionasiakirjojen ja
yliopisto-aineiston luokittelu voisi mahdollisesti syntyä asiasanojen
ja otsikoiden luokittelun avulla).

Julkaisijoiden ilmentyminen kartalle paperinkulutusvoluumi huomioiden:
julkaisutoiminnan leviäminen ja kasvu ajassa eri
paikkakunnilla. Pääpaino erityisesti sillä kun julkaisijakartalle
tulee uusia toimijoita! Toimijoita voisi myös yrittää luokitella
suhteellisesti (“iso”, “keskikokoinen”, “pieni”) liittyen
vuosittaiseen julkaisuvoluumiin jota mitataan niin julkaisujen määrän
kuin myös paperinkulutusvoluumin suhteen. Analyysia voisi tästä tehdä
sitten näiden luokkien kehityksen mukaan.

Julkaisijoita voisi myös luokitella eniten käytettyjen asiasanojen
mukaan. Näiden perusteella voidaan varmaankin erotella
yliopistojulkaiseminen, asiakirja/asetusjulkaiseminen,
kirjajulkaiseminen?

Turku vs. muu Suomi (sillä kytköksellä että kun Kungliga aineisto
tulee mukaan analyysiin, niin Turku osana ruotsalaista
yliopistojärjestelmää (ml. Tarto) muuttuu tärkeäksi). Eli Turun
erityistapaus analysoidaan tarkkaan, kuinka paljon yliopistoon
liittyvää julkaisutoimintaa, kuinka paljon julkaisijoita, miten
julkaisijoiden verkosto muodostuu Turussa, miten eri julkaisijoita
Turussa voitaisiin luokitella (julkaiseeko joku paperinkulutukseltaan
vain pieniä dokumentteja, julkaiseeko joku painotalo huomattavasti
enemmän kuin toiset), tarkoituksena yleisten historiallisten trendien
löytäminen.

Isojen toimijoiden kohdalla sitten tarkempaa analyysiä jossa pyritään
vertailemaan eri julkaisijoita ja niiden toimintaperiaatteita: “Siinä
missä Londicer 1700-luvun Vaasassa näyttää aina julkaisseen asetukset
jonkinlaisena kokoomapainoksena, mutta Frenckellin kirjapainosta ne
tuli yksitellen. Siten Frenckellin julkaisemien niteiden määrä saattaa
näyttää suurelta verrattuna Londiceriin, mutta itse asiassa
sisältömäärä on sama”. → Tämä hypoteesi me voidaan
todentaa/tarkistaa/korjata kun mukana on paperinkulutus!



