import '../models/story_segment.dart';

final List<StorySegment> storyData = [
  // PRÓLOGO (Capítulo 1)
  StorySegment(
    id: 1,
    text:
        "O som agudo em seus ouvidos é a primeira coisa que você percebe. Depois, a poeira. Você tosse, e a dor explode em seu peito. Seu apartamento está... destruído. Olhando para um caco de espelho no chão, o choque te atinge: seu olho esquerdo brilha com uma luz carmesim sinistra. Lá fora, gritos. Uma fria e estranha fúria pulsa em suas veias. O que aconteceu aqui?",
    options: [
      StoryOption(
        text: "Tentar lembrar o que houve",
        next: 2,
        icon: "head-side-virus",
        color: "purple",
      ),
      StoryOption(
        text: "Olhar pela janela quebrada",
        next: 3,
        icon: "window-restore",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar controlar a energia que flui em você",
        next: 4,
        icon: "fist-raised",
        color: "red",
        triggersPowerAnimation: true,
      ),
    ],
  ),
  StorySegment(
    id: 2,
    text:
        "Flashes. Gritos. Uma discussão... e então, uma explosão de poder incontrolável vinda de você. Você causou isso. A realização é um soco no estômago, misturada com um sentimento doentio de satisfação. O ódio que você sentiu... ele te deu poder. Agora, o que fazer com ele?",
    options: [
      StoryOption(
        text: "Fugir. Desaparecer antes que alguém chegue.",
        next: 5,
        icon: "running",
        color: "green",
      ),
      StoryOption(
        text: "Encarar as consequências. Sair pela porta.",
        next: 3,
        icon: "door-open",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 3,
    text:
        "Na rua, o caos. As pessoas correm de você, seus rostos uma máscara de terror. O ar ao seu redor parece tremer. Eles sentem seu poder. Eles sentem seu medo. De um beco, uma figura emerge. Alta, musculosa, com o mesmo brilho vermelho no olho. 'Outro perdido. A sua assinatura de poder é barulhenta', ele zomba. 'O Projeto KRYPTOS já deve estar a caminho. Venha comigo se quiser viver.'",
    options: [
      StoryOption(
        text: "Quem é você? O que é KRYPTOS?",
        next: 6,
        icon: "question-circle",
        color: "blue",
      ),
      StoryOption(
        text: "'Não vou a lugar nenhum com você.' (Preparar-se para lutar)",
        next: 7,
        icon: "fist-raised",
        color: "red",
      ),
      StoryOption(
        text: "Ignorá-lo e tentar fugir",
        next: 5,
        icon: "running",
        color: "green",
      ),
    ],
  ),
  StorySegment(
    id: 4,
    text:
        "Você se concentra na fúria, no ódio que borbulha dentro de você. A energia obedece. A poeira ao seu redor levita, e as paredes rangem. Você sente um controle aterrorizante. Este poder... é seu para comandar. Mas o esforço te deixa ofegante e atrai atenção indesejada. Passos pesados sobem as escadas.",
    options: [
      StoryOption(
        text: "Emboscá-los na porta.",
        next: 7,
        icon: "user-secret",
        color: "purple",
      ),
      StoryOption(
        text: "Saltar pela janela para a rua.",
        next: 3,
        icon: "window-restore",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 5,
    text:
        "Você corre. As ruas são um borrão. Sirenes ao longe. Cada esquina parece ter um par de olhos te observando. Ser um Kazuya é ser uma presa. Você encontra refúgio em um armazém abandonado, o coração martelando. Sozinho, caçado. Este é o seu novo mundo.",
    options: [
      StoryOption(
        text: "[Fim do Prólogo] Iniciar como 'O Fugitivo'",
        next: 12, // Início do Capítulo 2 - Rota do Fugitivo
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 6,
    text:
        "'Meu nome é Kaito. Sou da Resistência. KRYPTOS é a agência que nos caça como animais para nos 'estudar'. Eles te colocarão numa coleira, ou te dissecarão se você resistir', ele diz, a voz dura. 'A escolha é sua, novato. O tempo está correndo.'",
    options: [
      StoryOption(
        text: "Confiar nele e ir com a Resistência.",
        next: 8,
        icon: "handshake",
        color: "green",
      ),
      StoryOption(
        text: "Recusar. Lutar sozinho.",
        next: 7,
        icon: "fist-raised",
        color: "red",
      ),
    ],
  ),
  StorySegment(
    id: 7,
    text:
        "Uma batalha explode nas ruas. Ele é um Beta, rápido e brutal. Você se defende instintivamente, seu poder Kazuya respondendo à sua vontade de sobreviver. É uma dança de violência, socos que quebram o asfalto e velocidades que o olho humano não pode seguir. No final, exausto e ferido, você consegue uma vitória apertada. Mas a luta atraiu a atenção. Veículos blindados negros com o logo KRYPTOS chegam ao local.",
    options: [
      StoryOption(
        text: "Fugir para as sombras.",
        next: 5,
        icon: "running",
        color: "green",
      ),
      StoryOption(
        text: "Enfrentar o KRYPTOS (Escolha tola).",
        next: 9,
        icon: "user-shield",
        color: "red",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 8,
    text:
        "Você segue Kaito por um labirinto de becos até um esconderijo subterrâneo. Outros Kazuyas te encaram, alguns com suspeita, outros com cansaço. Você encontrou a Resistência. Sua jornada para entender seus poderes e lutar contra a opressão do KRYPTOS começa agora.",
    options: [
      StoryOption(
        text: "[Fim do Prólogo] Iniciar como 'O Recruta'",
        next: 10, // Início do Capítulo 2 - Rota da Resistência
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 9,
    text:
        "Foi um erro. As tropas do KRYPTOS são equipadas com tecnologia anti-Kazuya. Um pulso sônico te joga no chão, seus poderes neutralizados. A última coisa que você vê é uma bota preta se aproximando do seu rosto. Você despertou em uma cela fria, um prisioneiro do Projeto KRYPTOS.",
    options: [
      StoryOption(
        text: "[Fim do Prólogo] Iniciar como 'O Prisioneiro'",
        next: 11, // Início do Capítulo 2 - Rota do Prisioneiro
        icon: "redo",
        color: "red",
      ),
    ],
  ),

  // --- CAPÍTULO 2: O PRIMEIRO TESTE ---
  StorySegment(
    id: 10, // Rota da Resistência
    text:
        "A líder da Resistência, uma mulher mais velha chamada Anya, te encara. Seus olhos não têm o brilho vermelho, mas carregam o peso de mil batalhas. 'Kaito arriscou muito por você. Poder não é nada sem controle. Sua primeira missão: intercepte um comboio de suprimentos do KRYPTOS na rodovia leste. Precisamos dos recursos. Não falhe.'",
    options: [
      StoryOption(
        text: "Aceitar a missão sem questionar.",
        next: 20,
        icon: "walking",
        color: "blue",
      ),
      StoryOption(
        text: "Perguntar por que ela não é uma Kazuya.",
        next: 13,
        icon: "question",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 11, // Rota do Prisioneiro
    text:
        "Você está acorrentado a uma cadeira metálica. Um cientista do KRYPTOS, Dr. Aris Thorne, te analisa com um interesse gélido. 'Fascinante. Sua emissão de energia no momento do despertar foi... excepcional.' Ele se aproxima com uma seringa. 'Vamos ver o quão forte é sua vontade.'",
    options: [
      StoryOption(
        text: "Resistir com poder bruto.",
        next: 14,
        icon: "fist-raised",
        color: "red",
        triggersPowerAnimation: true,
      ),
      StoryOption(
        text: "Permanecer em silêncio e observá-lo.",
        next: 15,
        icon: "eye",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 12, // Rota do Fugitivo
    text:
        "Duas semanas. Esse é o tempo que você está fugindo. Você aprendeu a suprimir sua aura, a roubar para comer, a dormir em esgotos. Você é um fantasma. Um cartaz de 'procurado' com seu rosto está em toda parte, oferecido pelo KRYPTOS. Você ouve sobre um mercado negro no distrito portuário, um lugar onde um Kazuya pode encontrar trabalho... ou uma faca nas costas.",
    options: [
      StoryOption(
        text: "Arriscar e ir ao mercado negro.",
        next: 16,
        icon: "store",
        color: "green",
      ),
      StoryOption(
        text: "Continuar se escondendo. É mais seguro.",
        next: 17,
        icon: "user-secret",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 13,
    text:
        "Anya sorri, um sorriso raro e triste. 'Eu era. Meu poder foi tirado de mim há muito tempo. Por um Sigma... para me salvar da corrupção que ele trazia.' A menção ao lendário Kazuya cala a sala. 'Agora vá. Prove que você é diferente.'",
    options: [
      StoryOption(
        text: "Ir para a missão.",
        next: 20,
        icon: "walking",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 14,
    text:
        "Você ruge e libera seu poder. As correntes estalam, a cadeira voa. Thorne recua, surpreso, mas um alarme soa. Guardas com rifles sônicos entram na sala. Você está livre, mas encurralado. A fuga será sangrenta.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2] - A Fuga Começou",
        next: 31,
        icon: "redo",
        color: "red",
      ),
    ],
  ),
  StorySegment(
    id: 15,
    text:
        "Você o deixa prosseguir. A agulha entra, e uma dor fria se espalha. Sua mente é invadida, mas você resiste, escondendo seus pensamentos mais profundos. Ele anota: 'Alta resistência psíquica. Potencial Alpha... ou superior.' Ele te deixa na cela, mas você notou algo: um painel de acesso mal parafusado sob a sua cama.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2] - A Semente da Fuga",
        next: 31,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 16,
    text:
        "O mercado negro é um caos de cibernética e Kazuya. Um homem com um braço mecânico te oferece um trabalho: 'Um comboio do KRYPTOS vai passar pela rodovia leste. Saqueie-o para mim, e eu te dou um lugar seguro para ficar.' A oferta é tentadora.",
    options: [
      StoryOption(
        text: "Aceitar o trabalho. Você precisa de aliados.",
        next: 20,
        icon: "handshake",
        color: "green",
      ),
      StoryOption(
        text: "Recusar. Ele não é confiável.",
        next: 17,
        icon: "hand-paper",
        color: "red",
      ),
    ],
  ),
  StorySegment(
    id: 17,
    text:
        "A vida de fugitivo é dura. A solidão e o medo constante começam a pesar. Seu poder, nascido do ódio, ameaça te consumir. Você precisa encontrar um propósito, ou se tornará o monstro que todos temem.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2] - A Beira do Abismo",
        next: 32,
        icon: "redo",
        color: "gray",
      ),
    ],
  ),

  // --- CAPÍTULO 3: ALIANÇAS E INIMIGOS ---
  StorySegment(
    id: 20, // Missão do Comboio
    text:
        "A noite está fria na rodovia. O comboio se aproxima: dois jipes e um caminhão blindado. De repente, outro Kazuya, envolto em chamas psíquicas, aterrissa na sua frente. 'Intocável', um mercenário Alpha notório que trabalha para o KRYPTOS. 'O lixo da Resistência... ou um ladrãozinho? Não importa. A carga é minha.'",
    options: [
      StoryOption(
        text: "Lutar contra Intocável pelo comboio.",
        next: 30,
        icon: "fire",
        color: "red",
        triggersPowerAnimation: true,
      ),
      StoryOption(
        text: "Usar o caos para atacar o comboio diretamente.",
        next: 21,
        icon: "truck",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 21,
    text:
        "Você ignora o mercenário e ataca o caminhão. Com um esforço tremendo, você arranca a porta blindada. Dentro, não há suprimentos... mas sim Kazuyas aprisionados, incluindo crianças. Intocável para, surpreso. 'Eles mentiram para mim...' ele sussurra.",
    options: [
      StoryOption(
        text: "Libertar os prisioneiros.",
        next: 33,
        icon: "users",
        color: "green",
      ),
      StoryOption(
        text: "Confrontar Intocável sobre isso.",
        next: 22,
        icon: "hand-paper",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 22,
    text:
        "'Eles me disseram que era tecnologia roubada!', Intocável grita, sua fúria fazendo o ar vibrar. O KRYPTOS o traiu. Ele se vira para as tropas que se aproximam. 'Saia daqui com as crianças. Eu vou criar uma distração.' Um novo e improvável aliado.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 3] - Aliança Inesperada",
        next: 40,
        icon: "redo",
        color: "green",
      ),
    ],
  ),
  // Continuação dos capítulos...
  // --- CAPÍTULO 4: A OFENSIVA KRYPTOS ---
  StorySegment(id: 30, text: "PLACEHOLDER LUTA COM INTOCÁVEL", options: []),
  StorySegment(id: 31, text: "PLACEHOLDER FUGA DA PRISÃO", options: []),
  StorySegment(
    id: 32,
    text: "PLACEHOLDER CAMINHO DO FUGITIVO SOLITÁRIO",
    options: [],
  ),
  StorySegment(
    id: 33,
    text: "PLACEHOLDER RESGATE DOS PRISIONEIROS",
    options: [],
  ),
  StorySegment(
    id: 40,
    text:
        "Você retorna com os Kazuyas resgatados, e a notícia da traição do KRYPTOS se espalha. A guerra mudou. KRYPTOS não está apenas contendo... está exterminando. Um alarme soa no esconderijo da Resistência. 'Eles nos encontraram!', grita Anya. 'É uma ofensiva total!'",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4] - A Guerra Começa",
        next: 50,
        icon: "redo",
        color: "red",
      ),
    ],
  ),

  // --- CAPÍTULO 5: O SUSSURRO DE UM SIGMA ---
  StorySegment(
    id: 50,
    text:
        "A Resistência sobreviveu ao ataque, mas a um custo terrível. Entre os dados recuperados do comboio, uma mensagem criptografada se destaca: 'Alvo Sigma potencial localizado. Prioridade máxima de captura.' KRYPTOS não está apenas caçando Kazuyas; eles estão caçando um deus em potencial. Anya te dá uma nova missão: infiltrar o Posto de Pesquisa 'Érebo' e descobrir o que eles sabem.",
    options: [
      StoryOption(
        text: "Aceitar a missão de infiltração.",
        next: 60,
        icon: "user-secret",
        color: "blue",
      ),
      StoryOption(
        text: "Sugerir um ataque direto.",
        next: 51,
        icon: "fist-raised",
        color: "red",
      ),
    ],
  ),
  StorySegment(
    id: 51,
    text:
        "'Um ataque direto seria suicídio', diz Kaito. 'Eles esperam por isso. A única chance é entrar e sair sem que eles saibam que estivemos lá.'",
    options: [
      StoryOption(
        text: "Concordar com o plano de infiltração.",
        next: 60,
        icon: "user-secret",
        color: "blue",
      ),
    ],
  ),

  // --- CAPÍTULO 6: O ALFA CORRUPTO ---
  StorySegment(
    id: 60,
    text:
        "A infiltração no Posto Érebo é um sucesso. Os dados revelam que KRYPTOS está monitorando um Kazuya específico. A trilha leva a Neo-Kyoto, uma cidade controlada por um sádico Kazuya Alpha chamado 'O Shogun'. Ele fez um pacto com o KRYPTOS: em troca do controle da cidade, ele entrega qualquer Kazuya que considere 'fraco'.",
    options: [
      StoryOption(
        text: "Ir para Neo-Kyoto e confrontar o Shogun.",
        next: 70,
        icon: "city",
        color: "purple",
      ),
    ],
  ),

  // --- CAPÍTULO 7: A ARMA ---
  StorySegment(
    id: 70,
    text:
        "Após uma batalha brutal nos telhados de Neo-Kyoto, você derrota o Shogun. Em seus momentos finais, ele ri. 'Você não entende... eles não querem o Sigma. Eles querem dissecá-lo.' Ele revela a localização de um laboratório secreto onde o KRYPTOS está usando DNA de Kazuya para criar uma arma biológica para erradicar todos vocês.",
    options: [
      StoryOption(
        text: "Encontrar e destruir o laboratório.",
        next: 80,
        icon: "flask",
        color: "red",
      ),
    ],
  ),

  // --- CAPÍTULO 8: A TRAIÇÃO ---
  StorySegment(
    id: 80,
    text:
        "Você destrói o laboratório, mas o cientista-chefe, Dr. Thorne, escapa. Ele deixa para trás uma mensagem para você: 'Sua Resistência tem um vazamento. Um de vocês trabalha para mim. Quem você mais confia?' O pânico se instala. Há um traidor entre vocês.",
    options: [
      StoryOption(
        text: "Começar a investigar o traidor.",
        next: 90,
        icon: "user-slash",
        color: "gray",
      ),
    ],
  ),

  // --- CAPÍTULO 9: O CORAÇÃO DO KRYPTOS ---
  StorySegment(
    id: 90,
    text:
        "A investigação revela que Kaito, o homem que te salvou, era o traidor. Ele fez um acordo com Thorne para proteger um ente querido. Com o coração pesado, você o confronta. Após a resolução, com a Resistência agora segura, Anya revela o plano final: um ataque total ao Quartel-General do KRYPTOS, uma fortaleza flutuante conhecida como 'A Torre'.",
    options: [
      StoryOption(
        text: "Liderar o ataque à Torre.",
        next: 100,
        icon: "building",
        color: "red",
      ),
    ],
  ),

  // --- CAPÍTULO 10: A VERDADE E A ESCOLHA ---
  StorySegment(
    id: 100,
    text:
        "No topo da Torre, você finalmente encontra o Diretor do KRYPTOS. Ele não é um soldado, mas um homem velho em uma cadeira de rodas. 'O vírus não foi um acidente', ele diz. 'Foi a última tentativa da Terra de se defender da humanidade. Os Kazuyas são o sistema imunológico do planeta, nascidos do ódio da própria natureza. Mas esse poder, sem controle, nos destruirá.'",
    options: [
      StoryOption(
        text: "O que você propõe?",
        next: 101,
        icon: "question",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 101,
    text:
        "Ele aponta para um trono no centro da sala. 'O Projeto KRYPTOS nunca foi sobre destruí-los, mas sobre encontrar alguém forte o suficiente para liderá-los. Um verdadeiro Sigma. Alguém que possa impor o equilíbrio. Eu te dou uma escolha: destrua-me e liberte um poder que consumirá o mundo... ou assuma este fardo. Torne-se o novo Diretor. O novo equilíbrio. O que você escolhe?'",
    options: [
      StoryOption(
        text: "[Fim de Jogo] Destruir o KRYPTOS e libertar os Kazuyas.",
        next: 1,
        icon: "fire",
        color: "red",
      ),
      StoryOption(
        text: "[Fim de Jogo] Aceitar o trono e controlar os Kazuyas.",
        next: 1,
        icon: "crown",
        color: "purple",
      ),
    ],
  ),
];
