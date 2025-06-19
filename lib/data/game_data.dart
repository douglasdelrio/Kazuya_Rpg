import '../models/story_segment.dart';

final List<StorySegment> storyData = [
  // Capítulo 1
  StorySegment(
    id: 1,
    text:
        "O ano é 2025. Três anos após a pandemia de COVID-19, uma nova ameaça surgiu. Indivíduos com habilidades extraordinárias começaram a aparecer em todo o mundo. Esses indivíduos ficaram conhecidos como 'Kazuya'. Você acorda em uma sala branca, com dores por todo o corpo. A última coisa que lembra é estar em casa, assistindo TV.",
    options: [
      StoryOption(
        text: "Investigar a sala",
        next: 2,
        icon: "search",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar sair",
        next: 3,
        icon: "door-open",
        color: "green",
      ),
      StoryOption(
        text: "Chamar por ajuda",
        next: 4,
        icon: "hand-paper",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 2,
    text:
        "Você se levanta e examina a sala. Há uma porta trancada e uma janela pequena no alto da parede. A sala é estéril, sem decoração, apenas uma cama simples onde você estava deitado. Há um cheiro estranho no ar, como de produtos químicos hospitalares.",
    options: [
      StoryOption(
        text: "Tentar abrir a porta",
        next: 5,
        icon: "door-closed",
        color: "red",
      ),
      StoryOption(
        text: "Examinar a janela",
        next: 6,
        icon: "window-restore",
        color: "blue",
      ),
      StoryOption(
        text: "Procurar por pistas na sala",
        next: 7,
        icon: "lightbulb",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 3,
    text:
        "Você tenta abrir a porta, mas ela está trancada. Você ouve passos se aproximando do lado de fora.",
    options: [
      StoryOption(
        text: "Fingir estar inconsciente",
        next: 8,
        icon: "bed",
        color: "gray",
      ),
      StoryOption(
        text: "Preparar-se para lutar",
        next: 9,
        icon: "fist-raised",
        color: "red",
      ),
      StoryOption(
        text: "Chamar por ajuda",
        next: 4,
        icon: "hand-paper",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 4,
    text:
        "Você grita por ajuda, mas ninguém responde. O silêncio da sala é perturbador.",
    options: [
      StoryOption(
        text: "Investigar a sala",
        next: 2,
        icon: "search",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar sair",
        next: 3,
        icon: "door-open",
        color: "green",
      ),
      StoryOption(
        text: "Esperar",
        next: 8,
        icon: "hourglass-half",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 5,
    text:
        "A porta está trancada. Você sente uma energia estranha emanando de suas mãos. Talvez você possa usar seus poderes para abri-la.",
    options: [
      StoryOption(
        text: "Tentar arrombar a porta com força bruta",
        next: 9,
        icon: "fist-raised",
        color: "red",
      ),
      StoryOption(
        text: "Tentar usar seus poderes para abrir a porta",
        next: 13,
        icon: "bolt",
        color: "blue",
      ),
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 6,
    text:
        "A janela está muito alta para alcançar sem ajuda. Você olha ao redor procurando algo para subir, mas a sala está vazia. Do lado de fora, você vê um pátio cercado por altos muros.",
    options: [
      StoryOption(
        text: "Tentar quebrar a cama para fazer um apoio",
        next: 15,
        icon: "hammer",
        color: "red",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Esperar até anoitecer para tentar chamar atenção",
        next: 16,
        icon: "moon",
        color: "purple",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 7,
    text:
        "Você encontra uma pequena marcação na parede: 'S.M.A. Projeto KRYPTOS'. Sob a cama, há um bilhete rasgado que diz 'Eles estão monitorando todos nós... encontre a Resistência.'",
    options: [
      StoryOption(
        text: "Guardar o bilhete e continuar procurando",
        next: 17,
        icon: "pencil-alt",
        color: "blue",
      ),
      StoryOption(
        text: "Mostrar o bilhete para o homem se ele aparecer",
        next: 18,
        icon: "user-md",
        color: "purple",
      ),
      StoryOption(
        text: "Destruir o bilhete para não levantar suspeitas",
        next: 19,
        icon: "trash",
        color: "red",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 8,
    text:
        "Você descansa um pouco e sente sua força voltando lentamente. Enquanto isso, observa mais detalhes da sala. Há pequenas câmeras nos cantos do teto, quase imperceptíveis.",
    options: [
      StoryOption(
        text: "Ignorar as câmeras e tentar escapar",
        next: 9,
        icon: "running",
        color: "red",
      ),
      StoryOption(
        text: "Tentar desconectar as câmeras",
        next: 20,
        icon: "video-slash",
        color: "blue",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Fingir ainda estar fraco enquanto planeja",
        next: 21,
        icon: "brain",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 9,
    text:
        "Com um esforço sobre-humano, você arrebenta as correntes que prendiam sua perna à cama. A porta parece ser sua única saída. O barulho deve ter alertado alguém.",
    options: [
      StoryOption(
        text: "Esperar por quem está vindo",
        next: 22,
        icon: "user-shield",
        color: "blue",
      ),
      StoryOption(
        text: "Atacar assim que a porta abrir",
        next: 23,
        icon: "fist-raised",
        color: "red",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Se esconder atrás da porta",
        next: 24,
        icon: "eye-slash",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 10,
    text:
        "'Você está em uma instalação de pesquisa', diz o homem. 'Você manifestou habilidades especiais e estamos aqui para te ajudar a controlá-las.' Ele parece genuinamente preocupado.",
    options: [
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
      StoryOption(
        text: "Perguntar por que você está preso",
        next: 26,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Pedir para falar com outros Kazuyas",
        next: 27,
        icon: "users",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 11,
    text:
        "Com um movimento rápido, você lança seu poder contra o homem. Para sua surpresa, ele desvia com facilidade. 'Eu sabia que você faria isso... todos fazem', ele diz com um sorriso triste.",
    options: [
      StoryOption(
        text: "Continuar atacando",
        next: 28,
        icon: "fire",
        color: "red",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Pedir desculpas e recuar",
        next: 29,
        icon: "hand-peace",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar fugir pela porta aberta",
        next: 30,
        icon: "door-open",
        color: "purple",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 12,
    text:
        "'Não... não lembro de nada', você murmura confuso. O homem anota algo em sua prancheta. 'Interessante. A amnésia é um efeito colateral raro.' Ele parece estar avaliando você.",
    options: [
      StoryOption(
        text: "Manter a farsa",
        next: 31,
        icon: "theater-masks",
        color: "purple",
      ),
      StoryOption(
        text: "Revelar que estava fingindo",
        next: 32,
        icon: "grin-tongue-wink",
        color: "red",
      ),
      StoryOption(
        text: "Perguntar sobre efeitos colaterais",
        next: 33,
        icon: "question-circle",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 13,
    text:
        "Você concentra sua energia e dá um choque no painel. Ele pisca e a porta se abre lentamente. Do outro lado, um corredor iluminado por luzes vermelhas de emergência. Você ouve alarmes tocando ao longe.",
    options: [
      StoryOption(
        text: "Seguir pelo corredor",
        next: 34,
        icon: "walking",
        color: "blue",
      ),
      StoryOption(
        text: "Voltar e ver se há suprimentos",
        next: 35,
        icon: "backpack",
        color: "purple",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Esperar para ver quem aparece",
        next: 36,
        icon: "user-clock",
        color: "gray",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 15,
    text:
        "Você tenta quebrar a cama, mas ela é muito resistente. Você acaba se machucando e percebe que não tem força suficiente para isso.",
    options: [
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(
        text: "Chamar por ajuda",
        next: 4,
        icon: "hand-paper",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 16,
    text:
        "Você espera até anoitecer. A luz da lua entra pela janela, mas ninguém aparece. Você começa a sentir fome e sede.",
    options: [
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(text: "Tentar dormir", next: 8, icon: "bed", color: "gray"),
    ],
  ),
  StorySegment(
    id: 17,
    text:
        "Você guarda o bilhete e continua procurando por mais pistas. Você encontra um pequeno compartimento secreto na parede, mas está vazio.",
    options: [
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(
        text: "Esperar",
        next: 8,
        icon: "hourglass-half",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 18,
    text:
        "Você decide mostrar o bilhete para o homem, mas ele ainda não apareceu. Você se sente frustrado e sozinho.",
    options: [
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(
        text: "Esperar",
        next: 8,
        icon: "hourglass-half",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 19,
    text:
        "Você destrói o bilhete, mas se arrepende imediatamente. Talvez fosse uma pista importante. Agora é tarde demais.",
    options: [
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(
        text: "Esperar",
        next: 8,
        icon: "hourglass-half",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 20,
    text:
        "Você tenta desconectar as câmeras, mas elas estão bem presas e protegidas. Você não consegue desativá-las sem ferramentas.",
    options: [
      StoryOption(
        text: "Ignorar as câmeras e tentar escapar",
        next: 9,
        icon: "running",
        color: "red",
      ),
      StoryOption(
        text: "Tentar desconectar as câmeras",
        next: 21,
        icon: "video-slash",
        color: "blue",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Fingir ainda estar fraco enquanto planeja",
        next: 21,
        icon: "brain",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 21,
    text:
        "Você finge ainda estar fraco e observa as câmeras. Elas parecem estar ativas, mas ninguém entra na sala. Você se pergunta se estão apenas te observando.",
    options: [
      StoryOption(
        text: "Ignorar as câmeras e tentar escapar",
        next: 9,
        icon: "running",
        color: "red",
      ),
      StoryOption(
        text: "Tentar desconectar as câmeras",
        next: 20,
        icon: "video-slash",
        color: "blue",
      ),
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 22,
    text:
        "Você espera. A porta se abre e um homem de jaleco branco entra. Ele parece calmo e amigável.",
    options: [
      StoryOption(
        text: "Perguntar quem ele é",
        next: 10,
        icon: "question",
        color: "blue",
      ),
      StoryOption(
        text: "Atacar o homem",
        next: 11,
        icon: "fist-raised",
        color: "red",
      ),
      StoryOption(
        text: "Fingir amnésia",
        next: 12,
        icon: "head-side-cough",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 23,
    text:
        "Você ataca assim que a porta abre, mas o homem é mais rápido. Ele te imobiliza com facilidade. 'Não há necessidade de violência', ele diz com uma voz calma.",
    options: [
      StoryOption(
        text: "Perguntar quem ele é",
        next: 10,
        icon: "question",
        color: "blue",
      ),
      StoryOption(
        text: "Pedir desculpas",
        next: 29,
        icon: "hand-peace",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar fugir",
        next: 30,
        icon: "door-open",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 24,
    text:
        "Você se esconde atrás da porta. O homem entra na sala, olha ao redor e parece confuso. Ele sai e fecha a porta novamente.",
    options: [
      StoryOption(
        text: "Sair do esconderijo e tentar abrir a porta",
        next: 5,
        icon: "door-open",
        color: "green",
      ),
      StoryOption(
        text: "Voltar a investigar a sala",
        next: 2,
        icon: "undo",
        color: "gray",
      ),
    ],
  ),
  StorySegment(
    id: 25,
    text:
        "O homem explica que o projeto KRYPTOS busca entender as habilidades Kazuya. Com o tempo, você percebe que estão realmente tentando ajudar. Você se torna um instrutor, ajudando outros como você.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 1]",
        next: 37,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 26,
    text:
        "O homem explica que você está preso para sua própria segurança e para a segurança dos outros. Ele diz que é para o seu bem, mas você não acredita nele.",
    options: [
      StoryOption(
        text: "Tentar fugir",
        next: 30,
        icon: "door-open",
        color: "purple",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Atacar o homem",
        next: 11,
        icon: "fist-raised",
        color: "red",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 27,
    text:
        "O homem diz que não há outros Kazuyas na instalação no momento, mas que eles estão trabalhando para encontrá-los. Você sente que ele está mentindo.",
    options: [
      StoryOption(
        text: "Tentar fugir",
        next: 30,
        icon: "door-open",
        color: "purple",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Atacar o homem",
        next: 11,
        icon: "fist-raised",
        color: "red",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 28,
    text:
        "O homem revela ser um Kazuya mais poderoso e te neutraliza. Você acorda dias depois em outra instalação, com memórias fragmentadas. Talvez cooperação fosse a melhor estratégia.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 1]",
        next: 37,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 29,
    text:
        "Você pede desculpas e o homem parece satisfeito. Ele começa a explicar sobre o projeto KRYPTOS e suas habilidades.",
    options: [
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
      StoryOption(
        text: "Perguntar por que você está preso",
        next: 26,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Pedir para falar com outros Kazuyas",
        next: 27,
        icon: "users",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 30,
    text:
        "Você tenta fugir pela porta aberta, mas o homem é mais rápido e te impede. Ele te imobiliza com facilidade. 'Não há necessidade de violência', ele diz com uma voz calma.",
    options: [
      StoryOption(
        text: "Perguntar quem ele é",
        next: 10,
        icon: "question",
        color: "blue",
      ),
      StoryOption(
        text: "Pedir desculpas",
        next: 29,
        icon: "hand-peace",
        color: "blue",
      ),
      StoryOption(
        text: "Atacar o homem",
        next: 11,
        icon: "fist-raised",
        color: "red",
      ),
    ],
  ),
  StorySegment(
    id: 31,
    text:
        "Você mantém a farsa da amnésia. O homem continua a te observar, mas não parece desconfiado. Você sente que está ganhando tempo.",
    options: [
      StoryOption(
        text: "Perguntar sobre efeitos colaterais",
        next: 33,
        icon: "question-circle",
        color: "blue",
      ),
      StoryOption(
        text: "Tentar fugir",
        next: 30,
        icon: "door-open",
        color: "purple",
        isWrongChoice: true,
      ),
      StoryOption(
        text: "Atacar o homem",
        next: 11,
        icon: "fist-raised",
        color: "red",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 32,
    text:
        "Você revela que estava fingindo. O homem sorri. 'Eu sabia', ele diz. 'Seus sinais vitais não batiam com a amnésia.' Ele parece impressionado com sua tentativa.",
    options: [
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
      StoryOption(
        text: "Perguntar por que você está preso",
        next: 26,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Pedir para falar com outros Kazuyas",
        next: 27,
        icon: "users",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 33,
    text:
        "O homem explica que os efeitos colaterais são raros e variam de pessoa para pessoa. Ele diz que alguns experimentam amnésia, outros perda de controle dos poderes.",
    options: [
      StoryOption(
        text: "Perguntar mais sobre as pesquisas",
        next: 25,
        icon: "flask",
        color: "blue",
      ),
      StoryOption(
        text: "Perguntar por que você está preso",
        next: 26,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Pedir para falar com outros Kazuyas",
        next: 27,
        icon: "users",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 34,
    text:
        "Você escapa da instalação e encontra a Resistência. Eles te acolhem e explicam sobre a verdadeira natureza dos Kazuyas e a tirania do Projeto KRYPTOS. Você decide se juntar a eles na luta pela liberdade.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 1]",
        next: 37,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 2
  StorySegment(
    id: 37,
    text:
        "Você se junta à Resistência e começa seu treinamento. Seus poderes Kazuya se intensificam a cada dia. Sua primeira missão é se infiltrar em um laboratório secundário do Projeto KRYPTOS para resgatar outros Kazuyas.",
    options: [
      StoryOption(
        text: "Planejar a infiltração",
        next: 38,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Treinar mais antes da missão",
        next: 39,
        icon: "dumbbell",
        color: "green",
      ),
      StoryOption(
        text: "Procurar por informações adicionais sobre o laboratório",
        next: 40,
        icon: "search",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 38,
    text:
        "Você estuda os esquemas do laboratório. Há uma entrada de serviço pouco vigiada nos fundos. O sistema de segurança é antigo, mas ainda funcional.",
    options: [
      StoryOption(
        text: "Entrar pela entrada de serviço",
        next: 41,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "Criar uma distração na frente",
        next: 42,
        icon: "fire",
        color: "red",
      ),
      StoryOption(
        text: "Procurar por um túnel de serviço subterrâneo",
        next: 43,
        icon: "search",
        color: "purple",
        isWrongChoice: true,
      ),
    ],
  ),
  StorySegment(
    id: 39,
    text:
        "Você treina intensamente, aprimorando suas habilidades de combate e controle de energia. Sua força e agilidade aumentam consideravelmente. Você se sente pronto para qualquer desafio.",
    options: [
      StoryOption(
        text: "Ir para a missão",
        next: 41,
        icon: "walking",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 40,
    text:
        "Você descobre que o laboratório possui um sistema de ventilação complexo que pode ser usado para se mover sem ser detectado. No entanto, as passagens são estreitas e perigosas.",
    options: [
      StoryOption(
        text: "Usar o sistema de ventilação",
        next: 45,
        icon: "wind",
        color: "green",
      ),
      StoryOption(
        text: "Entrar pela entrada de serviço",
        next: 41,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 41,
    text:
        "Você entra pela entrada de serviço. O corredor está escuro e silencioso. Você ouve vozes abafadas vindo de uma sala próxima.",
    options: [
      StoryOption(
        text: "Investigar as vozes",
        next: 46,
        icon: "search",
        color: "blue",
      ),
      StoryOption(
        text: "Continuar em frente",
        next: 47,
        icon: "walking",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 42,
    text:
        "Você cria uma distração na frente do laboratório, acionando um alarme falso. Os guardas correm para investigar, deixando a entrada de serviço desprotegida. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Entrar pela entrada de serviço",
        next: 41,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 43,
    text:
        "Você procura por um túnel de serviço subterrâneo, mas não encontra nada. A área é bem protegida e não há sinais de passagens secretas. Você perde tempo valioso.",
    options: [
      StoryOption(
        text: "Voltar e planejar a infiltração",
        next: 38,
        icon: "undo",
        color: "gray",
      ),
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 44,
    text:
        "Você resgata os Kazuyas do laboratório e os leva de volta para a base da Resistência. Eles estão fracos, mas seguros.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 45,
    text:
        "Você usa o sistema de ventilação para chegar ao laboratório. O ar é abafado e o espaço é apertado, mas você consegue passar sem ser detectado. Você resgata os Kazuyas e os leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 46,
    text:
        "Você investiga as vozes e encontra um grupo de Kazuyas presos em uma cela. Eles estão fracos e assustados. Você os liberta e os leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 47,
    text:
        "Você continua em frente e encontra um grupo de Kazuyas presos em uma cela. Eles estão fracos e assustados. Você os liberta e os leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 2]",
        next: 48,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 3
  StorySegment(
    id: 48,
    text:
        "Você resgata os Kazuyas do laboratório e os leva de volta para a base da Resistência. Eles estão fracos, mas seguros. Sua próxima missão é desativar uma torre de comunicação do Projeto KRYPTOS que está transmitindo propaganda e rastreando Kazuyas.",
    options: [
      StoryOption(
        text: "Planejar o ataque à torre",
        next: 49,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre a torre",
        next: 50,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Pedir reforços",
        next: 51,
        icon: "users",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 49,
    text:
        "Você estuda os esquemas da torre. Ela é fortemente protegida, mas há um ponto cego na parte traseira que pode ser explorado. O sistema de energia é vulnerável a um pulso eletromagnético.",
    options: [
      StoryOption(
        text: "Atacar o ponto cego",
        next: 52,
        icon: "fist-raised",
        color: "blue",
      ),
      StoryOption(
        text: "Gerar um pulso eletromagnético",
        next: 53,
        icon: "bolt",
        color: "red",
      ),
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 50,
    text:
        "Você descobre que a torre é alimentada por um gerador de energia solar. Se você puder desativar os painéis solares, a torre ficará sem energia.",
    options: [
      StoryOption(
        text: "Desativar os painéis solares",
        next: 55,
        icon: "lightbulb",
        color: "green",
      ),
      StoryOption(
        text: "Atacar o ponto cego",
        next: 52,
        icon: "fist-raised",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 51,
    text:
        "Você pede reforços, mas a Resistência está com poucos recursos. Eles só podem te dar um pequeno esquadrão de apoio. Você terá que contar principalmente com suas próprias habilidades.",
    options: [
      StoryOption(
        text: "Planejar o ataque à torre",
        next: 49,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 52,
    text:
        "Você ataca o ponto cego da torre. Os guardas são pegos de surpresa e você consegue desativar o sistema de comunicação. A propaganda do Projeto KRYPTOS é interrompida.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 53,
    text:
        "Você gera um pulso eletromagnético que desativa temporariamente todos os sistemas eletrônicos da torre. Os guardas ficam confusos e você consegue desativar o sistema de comunicação.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 54,
    text:
        "Você desativa a torre de comunicação. A propaganda do Projeto KRYPTOS é interrompida.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 55,
    text:
        "Você desativa os painéis solares da torre. A energia é cortada e o sistema de comunicação para de funcionar. A propaganda do Projeto KRYPTOS é interrompida.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 3]",
        next: 56,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 4
  StorySegment(
    id: 56,
    text:
        "A desativação da torre de comunicação enfraqueceu o Projeto KRYPTOS. Sua próxima missão é sabotar uma fábrica de armas do Projeto KRYPTOS que está produzindo armamento avançado para combater os Kazuyas.",
    options: [
      StoryOption(
        text: "Planejar a sabotagem da fábrica",
        next: 57,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre a fábrica",
        next: 58,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Criar um plano de distração",
        next: 59,
        icon: "fire",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 57,
    text:
        "Você estuda os esquemas da fábrica. Há um sistema de ventilação que leva diretamente à sala de controle. O sistema de segurança é avançado, mas há uma falha na rotação dos guardas.",
    options: [
      StoryOption(
        text: "Usar o sistema de ventilação",
        next: 60,
        icon: "wind",
        color: "blue",
      ),
      StoryOption(
        text: "Explorar a falha na rotação dos guardas",
        next: 61,
        icon: "user-shield",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 58,
    text:
        "Você descobre que a fábrica utiliza um produto químico altamente inflamável em seu processo de produção. Se você puder causar um vazamento, a fábrica será destruída.",
    options: [
      StoryOption(
        text: "Causar um vazamento de produto químico",
        next: 63,
        icon: "flask",
        color: "red",
      ),
      StoryOption(
        text: "Usar o sistema de ventilação",
        next: 60,
        icon: "wind",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 59,
    text:
        "Você cria um plano de distração, acionando um alarme de incêndio em uma parte da fábrica. Os guardas correm para investigar, deixando a sala de controle desprotegida. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Entrar na sala de controle",
        next: 64,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 60,
    text:
        "Você usa o sistema de ventilação para chegar à sala de controle. O ar é abafado e o espaço é apertado, mas você consegue passar sem ser detectado. Você desativa o sistema de produção de armas.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 61,
    text:
        "Você explora a falha na rotação dos guardas. Você se move rapidamente entre as patrulhas, evitando ser detectado. Você chega à sala de controle e desativa o sistema de produção de armas.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 62,
    text:
        "Você sabota a fábrica de armas. A produção de armamento avançado é interrompida.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 63,
    text:
        "Você causa um vazamento de produto químico na fábrica. O alarme de incêndio é acionado e a fábrica é evacuada. A fábrica é destruída em uma grande explosão.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 64,
    text:
        "Você entra na sala de controle e desativa o sistema de produção de armas. A fábrica para de funcionar e a produção de armamento avançado é interrompida.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 4]",
        next: 65,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 5
  StorySegment(
    id: 65,
    text:
        "A sabotagem da fábrica de armas foi um grande golpe para o Projeto KRYPTOS. Sua próxima missão é resgatar um cientista renomado que está sendo mantido em cativeiro pelo Projeto KRYPTOS. Ele possui informações cruciais sobre os planos futuros do Projeto.",
    options: [
      StoryOption(
        text: "Planejar o resgate do cientista",
        next: 66,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre o cativeiro",
        next: 67,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Criar um plano de distração",
        next: 68,
        icon: "fire",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 66,
    text:
        "Você estuda os esquemas do cativeiro. Há uma passagem secreta que leva diretamente à cela do cientista. O sistema de segurança é avançado, mas há uma falha na troca de turnos dos guardas.",
    options: [
      StoryOption(
        text: "Usar a passagem secreta",
        next: 69,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "Explorar a falha na troca de turnos dos guardas",
        next: 70,
        icon: "user-shield",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 67,
    text:
        "Você descobre que o cientista está sendo mantido em uma cela isolada, com pouca vigilância. Ele está fraco, mas ainda consciente. Há um sistema de comunicação interno que pode ser usado para contatá-lo.",
    options: [
      StoryOption(
        text: "Contatar o cientista",
        next: 72,
        icon: "phone",
        color: "red",
      ),
      StoryOption(
        text: "Usar a passagem secreta",
        next: 69,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 68,
    text:
        "Você cria um plano de distração, acionando um alarme de segurança em uma parte do cativeiro. Os guardas correm para investigar, deixando a cela do cientista desprotegida. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Entrar na cela do cientista",
        next: 73,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 69,
    text:
        "Você usa a passagem secreta para chegar à cela do cientista. O caminho é escuro e apertado, mas você consegue passar sem ser detectado. Você resgata o cientista e o leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 70,
    text:
        "Você explora a falha na troca de turnos dos guardas. Você se move rapidamente entre as patrulhas, evitando ser detectado. Você chega à cela do cientista e o resgata. Você o leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 71,
    text:
        "Você resgata o cientista. Ele possui informações cruciais sobre os planos futuros do Projeto KRYPTOS.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 72,
    text:
        "Você contata o cientista através do sistema de comunicação interno. Ele está fraco, mas consegue te dar informações cruciais sobre os planos futuros do Projeto KRYPTOS. Você o resgata e o leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 73,
    text:
        "Você entra na cela do cientista e o resgata. Ele está fraco, mas consegue te dar informações cruciais sobre os planos futuros do Projeto KRYPTOS. Você o leva para a base da Resistência.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 5]",
        next: 74,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 6
  StorySegment(
    id: 74,
    text:
        "O cientista resgatado revelou que o Projeto KRYPTOS está desenvolvendo uma arma biológica capaz de neutralizar os poderes Kazuya. Sua próxima missão é destruir o laboratório de pesquisa onde a arma está sendo desenvolvida.",
    options: [
      StoryOption(
        text: "Planejar a destruição do laboratório",
        next: 75,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre o laboratório",
        next: 76,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Criar um plano de distração",
        next: 77,
        icon: "fire",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 75,
    text:
        "Você estuda os esquemas do laboratório. Há um sistema de ventilação que leva diretamente ao laboratório principal. O sistema de segurança é avançado, mas há uma falha na rotação dos guardas.",
    options: [
      StoryOption(
        text: "Usar o sistema de ventilação",
        next: 78,
        icon: "wind",
        color: "blue",
      ),
      StoryOption(
        text: "Explorar a falha na rotação dos guardas",
        next: 79,
        icon: "user-shield",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 76,
    text:
        "Você descobre que o laboratório possui um sistema de autodestruição que pode ser ativado remotamente. No entanto, o código de ativação é complexo e difícil de obter.",
    options: [
      StoryOption(
        text: "Obter o código de ativação",
        next: 81,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Usar o sistema de ventilação",
        next: 78,
        icon: "wind",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 77,
    text:
        "Você cria um plano de distração, acionando um alarme de incêndio em uma parte do laboratório. Os guardas correm para investigar, deixando o laboratório principal desprotegido. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Entrar no laboratório principal",
        next: 82,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 78,
    text:
        "Você usa o sistema de ventilação para chegar ao laboratório principal. O ar é abafado e o espaço é apertado, mas você consegue passar sem ser detectado. Você destrói a arma biológica e o laboratório.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 79,
    text:
        "Você explora a falha na rotação dos guardas. Você se move rapidamente entre as patrulhas, evitando ser detectado. Você chega ao laboratório principal e destrói a arma biológica e o laboratório.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 80,
    text:
        "Você destrói o laboratório de pesquisa. A arma biológica é eliminada.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 81,
    text:
        "Você obtém o código de ativação do sistema de autodestruição. Você o insere e o laboratório é destruído em uma grande explosão. A arma biológica é eliminada.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 82,
    text:
        "Você entra no laboratório principal e destrói a arma biológica e o laboratório. A ameaça da arma biológica é eliminada.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 6]",
        next: 83,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 7
  StorySegment(
    id: 83,
    text:
        "A destruição do laboratório de pesquisa foi um grande golpe para o Projeto KRYPTOS. Sua próxima missão é desativar uma rede de vigilância global do Projeto KRYPTOS que está monitorando todos os Kazuyas.",
    options: [
      StoryOption(
        text: "Planejar a desativação da rede de vigilância",
        next: 84,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre a rede de vigilância",
        next: 85,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Criar um plano de distração",
        next: 86,
        icon: "fire",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 84,
    text:
        "Você estuda os esquemas da rede de vigilância. Há um servidor central que controla toda a rede. O sistema de segurança é avançado, mas há uma falha na autenticação de acesso.",
    options: [
      StoryOption(
        text: "Invadir o servidor central",
        next: 87,
        icon: "lock",
        color: "blue",
      ),
      StoryOption(
        text: "Explorar a falha na autenticação de acesso",
        next: 88,
        icon: "user-shield",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 85,
    text:
        "Você descobre que a rede de vigilância utiliza um software de inteligência artificial avançado. Se você puder desativar a IA, a rede de vigilância será inútil.",
    options: [
      StoryOption(
        text: "Desativar a IA",
        next: 90,
        icon: "brain",
        color: "red",
      ),
      StoryOption(
        text: "Invadir o servidor central",
        next: 87,
        icon: "lock",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 86,
    text:
        "Você cria um plano de distração, acionando um ataque cibernético em uma parte da rede de vigilância. Os técnicos correm para investigar, deixando o servidor central desprotegido. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Invadir o servidor central",
        next: 87,
        icon: "lock",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 87,
    text:
        "Você invade o servidor central e desativa a rede de vigilância. A vigilância do Projeto KRYPTOS é interrompida e os Kazuyas estão seguros.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 88,
    text:
        "Você explora a falha na autenticação de acesso. Você consegue acesso ao servidor central e desativa a rede de vigilância. A vigilância do Projeto KRYPTOS é interrompida e os Kazuyas estão seguros.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 89,
    text:
        "Você desativa a rede de vigilância global. A vigilância do Projeto KRYPTOS é interrompida e os Kazuyas estão seguros.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 90,
    text:
        "Você desativa a IA da rede de vigilância. A rede de vigilância se torna inútil e a vigilância do Projeto KRYPTOS é interrompida. Os Kazuyas estão seguros.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 7]",
        next: 91,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 8
  StorySegment(
    id: 91,
    text:
        "A desativação da rede de vigilância global foi um grande golpe para o Projeto KRYPTOS. Sua próxima missão é destruir o quartel-general do Projeto KRYPTOS, onde o líder do Projeto está localizado.",
    options: [
      StoryOption(
        text: "Planejar o ataque ao quartel-general",
        next: 92,
        icon: "map",
        color: "blue",
      ),
      StoryOption(
        text: "Reunir informações sobre o quartel-general",
        next: 93,
        icon: "search",
        color: "green",
      ),
      StoryOption(
        text: "Criar um plano de distração",
        next: 94,
        icon: "fire",
        color: "purple",
      ),
    ],
  ),
  StorySegment(
    id: 92,
    text:
        "Você estuda os esquemas do quartel-general. Há uma entrada de serviço pouco vigiada nos fundos. O sistema de segurança é avançado, mas há uma falha na rotação dos guardas.",
    options: [
      StoryOption(
        text: "Entrar pela entrada de serviço",
        next: 95,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "Explorar a falha na rotação dos guardas",
        next: 96,
        icon: "user-shield",
        color: "green",
      ),
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 93,
    text:
        "Você descobre que o quartel-general possui um sistema de autodestruição que pode ser ativado remotamente. No entanto, o código de ativação é complexo e difícil de obter.",
    options: [
      StoryOption(
        text: "Obter o código de ativação",
        next: 98,
        icon: "lock",
        color: "red",
      ),
      StoryOption(
        text: "Entrar pela entrada de serviço",
        next: 95,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 94,
    text:
        "Você cria um plano de distração, acionando um alarme de incêndio em uma parte do quartel-general. Os guardas correm para investigar, deixando a entrada principal desprotegida. Você entra sem ser notado.",
    options: [
      StoryOption(
        text: "Entrar pela entrada principal",
        next: 99,
        icon: "door-open",
        color: "blue",
      ),
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 95,
    text:
        "Você entra pela entrada de serviço e se move rapidamente pelos corredores. Você chega ao escritório do líder do Projeto KRYPTOS e o confronta. Após uma intensa batalha, você o derrota e destrói o quartel-general.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 96,
    text:
        "Você explora a falha na rotação dos guardas. Você se move rapidamente entre as patrulhas, evitando ser detectado. Você chega ao escritório do líder do Projeto KRYPTOS e o confronta. Após uma intensa batalha, você o derrota e destrói o quartel-general.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 97,
    text:
        "Você destrói o quartel-general do Projeto KRYPTOS. O líder do Projeto é eliminado.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 98,
    text:
        "Você obtém o código de ativação do sistema de autodestruição. Você o insere e o quartel-general é destruído em uma grande explosão. O líder do Projeto KRYPTOS é eliminado.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 99,
    text:
        "Você entra pela entrada principal e se move rapidamente pelos corredores. Você chega ao escritório do líder do Projeto KRYPTOS e o confronta. Após uma intensa batalha, você o derrota e destrói o quartel-general.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 8]",
        next: 100,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 9
  StorySegment(
    id: 100,
    text:
        "A destruição do quartel-general do Projeto KRYPTOS foi a vitória final da Resistência. O líder do Projeto foi derrotado e a ameaça Kazuya foi eliminada. Você se torna um herói e ajuda a reconstruir o mundo.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 9]",
        next: 102,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),
  StorySegment(
    id: 101,
    text:
        "Você ajuda a reconstruir o mundo. A paz é restaurada e os Kazuyas são agora aceitos e respeitados.",
    options: [
      StoryOption(
        text: "[Fim do Capítulo 9]",
        next: 102,
        icon: "redo",
        color: "blue",
      ),
    ],
  ),

  // Capítulo 10
  StorySegment(
    id: 102,
    text:
        "Anos se passaram desde a queda do Projeto KRYPTOS. O mundo está em paz, e os Kazuyas são agora aceitos e respeitados. Você vive uma vida tranquila, mas sempre pronto para proteger o mundo de novas ameaças.",
    options: [
      StoryOption(text: "[Fim do Jogo]", next: 1, icon: "redo", color: "blue"),
    ],
  ),
];
