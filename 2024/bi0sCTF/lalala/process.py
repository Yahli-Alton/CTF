sol = (767373832703271030378113024554104665382111051776, 923778550701810801736799907133132665333696000000, 1005015619518800996314972952443746351574098302272, 127157619107875319749848402129471496436232000000, 522716740971372965945276616102897379137192000000, 18353274142527442136889868563359233463418942528, 13195301488712087493238727567322130840075055936, 240491275851024497527266857452724900730303731264, 87112625624582012909084431321540789671221246528, 12497733399441219314046410674637841758363352000, 868388862241875591966657138086951499071554560000, 1045382277085788346391629306994456973510000000000, 1137313175372138470307787124156238669633373570000, 143896306437089354455115829817000541951250000000, 591525768304943748794776979503949820176250000000, 20769249838631751251298595977371054472651930000, 14932295523233017938151676263911065218015410000, 272148901246314295032335015702190721295754090000, 98579897605506106367869398906750768346641930000, 14142901444933237791895656807203775561963750000, 918581164998296667395329695640888085805810297344, 1105804682334316338013819057973938947575199000000, 1203049125830753483924842918998006127556726865493, 152213417920503826762856700951074141524936125000, 625715567071290253042877273265069257975738625000, 
21969698763360123838468257445147551600737909457, 15795372343236848749923041319230748872936130509, 287878928012108578682441147123912565663958590041, 104277750585262979336200838369769391976565460457, 14960351808524604157381981843944939985566747375, 231506889740077544010891183797605270020522240000, 278692196641879492835435543425930088977500000000, 303200383306480460066106388346373252784302592500, 38361830507974508385715494415372813187812500000, 157696968231317804358777494165995238744062500000, 5536948527832444098614885833973067950483782500, 3980854020097379346141251810900980933013452500, 72553148034463044470644793262217923132348922500, 26280767151513005417089907435560985173381282500, 3770406632075128025266042733067703625190937500, 594082283939187015587112130915996372510583040000, 715167038367302018531489237030212923277500000000, 778058814613188495304305253410670339427012692500, 98442356984938366005925331598125724100312500000, 404674673666648683019081422599797223906562500000, 14208661483731943287125827474148322734988682500, 10215483655554178157566277349369536279114752500, 186182536250583145912941670851976224383382622500, 67440490391340431925687172175898802798586182500, 9675443291893018908888663745790812610228437500, 63700772108060709221683165053341068486093330944, 76684145886591708706924582923626977445799000000, 83427748270332306712670666322813632915723499693, 10555531308723272012584865855430245049511125000, 43391445700444060561489157563105541543813625000, 1523530883860591145595897091875571106775805257, 1095360380049117537803279207854443257255915109, 19963516221286931622361483940366511797361975441, 7231340548970812687144398053376500188582756257, 1037454280061367056394830536852781423367072375, 51122867660053475451486079067993445475024226816, 61542636172982661807865775485820450824911000000, 66954694470033769553792191317691864533724434277, 8471310665779608791595396165202208581090125000, 34823677370175777683498520486142409762012625000, 1222705238477846191386047278115595286189146273, 879078257549580326963636744072742285478865501, 16021661339973565013520905996483724044027553449, 5803491129788567365581345834117908439658985273, 832605886989271344915095844826996942030041375, 354053218090484752202516344908183229987767958016, 426215691414396572188565963162441095485111000000, 463697091505368093151793966280478140051199235677, 58668359971659306969941027299960584431365125000, 241172602457305626002778320931588736201787625000, 8467888134480330561107172788351270588244354873, 6088087391897282398848769209503046819005463701, 110958579129276004781814745809876296867721845249, 40192281941702721997876081966419719241503993873, 5766241355039934317900501458147971052893066375, 179910453299674876976604795067016111089098258944, 216579469773951590688695734047043228883799000000, 235625464376237028483326593801160353521697765693, 29812047165610540885196292879145359851761125000, 122550707109989233144150018681416053351063625000, 4302916948423121385001805680633650409803439257, 3093632557025223453010335961618441531615573109, 56383072511811153168909678402828306543671417441, 20423516278934249490866947579903774185672390257, 2930088029182770471699443805477016523091822375, 49304871657302220931624336734122877597655718400, 59354099580997199422150540553467462580775000000, 64573698010262295266356153415158549031936762925, 8170059784650236560753965586895898044503125000, 33585301880736094318913458079497097272565625000, 1179224241854633317954479270865926984130650825, 847817085563732396143393624488244650870615525, 15451910118911569881813610688112206358572958225, 5597111398782160412609713438254070144418625825, 802997333250091786398249922719590032340784375)

def i_root(num, root):
    i = num.bit_length() // root
    m = 1 << i
    while m ** root < num:
        m <<= 1
        i += 1
    while m ** root > num:
        m >>= 1
        i -= 1
    for k in range(i-1, -1, -1):
        x = m | (1 << k)
        if x ** root <= num:
            m = x
    return m

for i in range(10):
    print(chr(i_root(sol[i * 10 + i], 5) % 1000), end="")
