# README #

Tato složka obsahuje skripty, které byly použity k získaní hodnot veličin použitých k zhodnocneí vlivu teploty okolního prostředí a koncentrace sodných iontů na chování konfigurace plasmidu.

### vyhodnoceni.m ###

Tato funkce je určena k vytažení hodnot elastické energie a writhe a twist z výstupních souborů a k výpočtu poloměru koule opsané struktuře reprezntující plasmid. K výpočtu poloměru koule opsané je použit Welslův algoritmus.

Soubory potřebnými k úšpěsnému spuštění funkce jsou:

* Konformace plasmidu
* Výstupní soubory fort.*

Výstupem funkce jsou tři textové soubory obsahující hodnoty následujících veličin pro jednotlivé kroky simulace

* Poloměr koule opsané struktuře
* Writhe a twist
* Elastická energie

### složka Wels ###

V této složce jsou obsaženy skripty sloužící k výpočtu poloměru koule opsané struktuře pomocí Welslova algoritmu. Skripty byly staženy z https://github.com/AntonSemechko/Bounding-Spheres-And-Circles.git

### složka data ###

Ve složce jsou obsažena data jednoho z časových průběhu konformace plasmidu pBR332 simulovaného při teplotě 20°C a koncentraci sodných iontů 20 mM. Tato data je možné analyzovat pomocí přiložených skriptů.

### analyza_puc.m a analyza_pbr.m ###

Tyto funkce slouží k statistickému vyhodnocení dat pro jednotlivé kombinace teploty a koncentrace sodných iontů. Výstupy jsou průměrné hodnoty hodnotících veličin pro dané časové momenty.

Z vyhodnocení jsou vyřazeny ty časové průběhy, které byly označeny za neunikátní. Vyřazení daných průběhů je realizováno pomocí funkcí shodapuc.m a shodapbr.m.

### u_pbr_20_20.sh ###

Toto je příklad dávkové úlohy, která realizuje funkci vyhodnoceni.m.
