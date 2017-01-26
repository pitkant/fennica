TODO
==========

### To JM

Paper consumption per title in 1757–1765, 1766–1774, and 1775–1783 in
Stockholm, Lund and Uppsala in Kungliga.

Tämä on siis sama kuin mikä meillä on ollut jo Krakovan ja Turun esityksissä, mutta nyt pitäisi katsoa kaupunkien mukaan. Tässä on oleellista juuri se, että nähdään onko pemflettidebattien intensifoituminen nimenomaan Tukholmassa tapahtuva juttu, vai tapahtuuko se myös muualla? Tää olisi tärkein.



Book production and Riksdag assemblies according to Kungliga in the the long eighteenth century. This needs to be done again highlighting the years 1719,1720, 1723, 1726-1727, 1731, 1734, 1738-1739, 1740-1741, 1742, 1746-1747, 1751-1752, 1755-1756, 1760-1762, 1765-1766, 1769-1770, 1771-1772, 1778-1779, 1786, 1789, 1792, 1800, 1809-1810. Further, this needs to be from 1690 up to 1828 or at least to 1810 to let us see the period between 1800 and 1809 without any assemblies and to compare with the early eighteenth century. Every other assembly should be in a different color, e.g. light grey and an even lighter grey, so that the reader sees when two assemblies follow each other.

Tämä on kanssa sama kuin aikaisemmin, mutta nyt toivon kaikkia vapaudenajan valtiopäiviä näkyviksi. Vanha kaavio toimii kyllä, mutta näin saadaan pointti paremmin välitettyä.

- Book production by year in Turku in Fennica and Kungliga 1640–1828 as a percentage of of all books in the catalogues. 

Tämä on tavallaan pelkkä kokonaiskuva kirjatuotannosta koko ajalta, joka on jo olemassa moneen kertaan, mutta toivoisin, että siinä voisi näyttää Turun osuuden erikseen prosentteina. Tässä saadaan hyvin näytettyä se mitä Turussa tapahtuu isonvihan aikaan ja 1809 jälkeen. Fennica on tärkeämpi, mutta minusta kannattaisi katsoa myös miltä tämä näyttää Kungligan osalta.




### Muita Fennica tutkimuskysymyksiä

Self-publishing in time. Huom julkaisjakentän eri kirjoitusasuja;
tekijänimille ei välttämättä osata yhdistää kirjoittajakentän kanssa

ESTC Suomessa / Ruotsissa ? (alkaa lähteä homma vähän käsistä jos
vielä ESTC:ä ängetään tähän samaa kässäriin tällä aikataululla eli
jättäisin pois)


### Technical, less urgent

MT lisää 6to kokoarviot tauluihin

Single/MultiVol/Issue erottelut tulee ESTn nojalla mutta
kesken. Pitäiskö tehdä erikseen Fennicalle ym vai ei

yksi haara sekä Kungligaa että Fennicaa jossa on koko data (joka tulee
siis 1900-luvun puolelle), mutta sitten Krakovaa varten olisi toinen
missä takarajavuosi on 1828. Eli analyysit loppuvat siihen (takaraja
voi olla selvyyden vuoksi myös 1830).

Gender-mäppien viimeistely. After Krakow.

KK:lta saatu ~/proj/2014-Aatelouhinta/Sanastoja.doc - tietokantoja
joita voitaisiin käyttää suomalaisten paikannimien, henkilönimien
ym. validointiin.

data/Fennica/lehtien_levikki.zip suomalaisiin sanomalehtiin liittyvää
metadataa ja oleellisesti myös tietoa levikistä. Hankkeen puitteissa
meidän tulee yhdistää nämä osaksi Fennicaa. Ehdottoman
tärkeää. Toisaalta, analyysi saattaisi olla järkevää aloittaa
tutkimalla sanomalehtiaineistoa itsenäisesti. Olisiko mahdollista
viedä nämä r-ympäristöön?

#-----------

city_examples.R correct_misspellings - funktio olisi hyvä tehdä niin
että kaiken saa siivotuksi noin sadan rivin sijasta yhden rivin
komennolla joka hyödyntää valmiiksi konstruoitua paikannimien
synonyymilistaa (synonyymilistan tuottava koodikin on hyvä olla
saatavilla mutta lopullisissa analyyseissä voidaan käyttää suoraan
sitä synonyymilistaa joka pistetään avoimesti saataville verkkoon).

Found the following files with duplicate lower-cased file names:
  inst/examples/output.tables/city_Altdorf.csv
  inst/examples/output.tables/city_Berliini.csv
  etc..

-> Pidän valtavasti ideasta, että tämä synonyymitaulujen haku on
   mahd. pitkälle automatisoitu stringmatchingillä kuten olet tehnyt. 

-> Tämä on nyt output.tables-hakemistossa. Kokoa näistä yksi
   kaupunkinimien synonyymitiedosto, jota käytetään lopullisen paketin
   input-tiedostona kaupunkien nimien harmonisointiin. Ja
   output.tables-hakemistoon tulostaat ne tapaukset jotka jää vielä
   mätchäyksestä ulos (myöhempää viilausta varten).


### Technical (urgent)

Gender: putsattu top-20 female mukaan. (F + K)

- Data releasen yhteyteen roadmappi seuraaviin versioihin
  suunnitelluista parannuksista.

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

- Self-publishing in time. Huom julkaisjakentän eri kirjoitusasuja;
  tekijänimille ei välttämättä osata yhdistää kirjoittajakentän kanssa