import '../models/story_segment.dart';

final List<StorySegment> storyData = [
  StorySegment(
    id: 1,
    text: "O ano é 2025. Três anos após a pandemia de COVID-19, uma nova ameaça surgiu. Indivíduos com habilidades extraordinárias começaram a aparecer em todo o mundo. Esses indivíduos ficaram conhecidos como 'Kazuya'. Você acorda em uma sala branca, com dores por todo o corpo. A última coisa que lembra é estar em casa, assistindo TV.",
    options: [
      StoryOption(text: "Investigar a sala", next: 2, icon: "search", color: "blue"),
      StoryOption(text: "Tentar sair", next: 3, icon: "door-open", color: "green"),
      StoryOption(text: "Chamar por ajuda", next: 4, icon: "hand-paper", color: "purple"),
    ],
  ),
  StorySegment(
    id: 2,
    text: "Você se levanta e examina a sala. Há uma porta trancada e uma janela pequena no alto da parede. A sala é estéril, sem decoração, apenas uma cama simples onde você estava deitado. Há um cheiro estranho no ar, como de produtos químicos hospitalares.",
    options: [
      StoryOption(text: "Tentar abrir a porta", next: 5, icon: "door-closed", color: "red"),
      StoryOption(text: "Examinar a janela", next: 6, icon: "window-restore", color: "blue"),
      StoryOption(text: "Procurar por pistas na sala", next: 7, icon: "lightbulb", color: "purple"),
    ],
  ),
  StorySegment(
    id: 3,
    text: "Você tenta abrir a porta, mas ela está trancada. Você ouve passos se aproximando do lado de fora.",
    options: [
      StoryOption(text: "Fingir estar inconsciente", next: 8, icon: "bed", color: "gray"),
      StoryOption(text: "Preparar-se para lutar", next: 9, icon: "fist-raised", color: "red"),
      StoryOption(text: "Chamar por ajuda", next: 4, icon: "hand-paper", color: "purple"),
    ],
  ),
  StorySegment(
    id: 4,
    text: "Você grita por ajuda, mas ninguém responde. O silêncio da sala é perturbador.",
    options: [
      StoryOption(text: "Investigar a sala", next: 2, icon: "search", color: "blue"),
      StoryOption(text: "Tentar sair", next: 3, icon: "door-open", color: "green"),
      StoryOption(text: "Esperar", next: 8, icon: "hourglass-half", color: "gray"),
    ],
  ),
  StorySegment(
    id: 5,
    text: "A porta está trancada. Você sente uma energia estranha emanando de suas mãos. Talvez você possa usar seus poderes para abri-la.",
    options: [
      StoryOption(text: "Tentar arrombar a porta com força bruta", next: 9, icon: "fist-raised", color: "red"),
      StoryOption(text: "Tentar usar seus poderes para abrir a porta", next: 13, icon: "bolt", color: "blue"),
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 6,
    text: "A janela está muito alta para alcançar sem ajuda. Você olha ao redor procurando algo para subir, mas a sala está vazia. Do lado de fora, você vê um pátio cercado por altos muros.",
    options: [
      StoryOption(text: "Tentar quebrar a cama para fazer um apoio", next: 15, icon: "hammer", color: "red", isWrongChoice: true),
      StoryOption(text: "Esperar até anoitecer para tentar chamar atenção", next: 16, icon: "moon", color: "purple", isWrongChoice: true),
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 7,
    text: "Você encontra uma pequena marcação na parede: 'S.M.A. Projeto KRYPTOS'. Sob a cama, há um bilhete rasgado que diz 'Eles estão monitorando todos nós... encontre a Resistência.'",
    options: [
      StoryOption(text: "Guardar o bilhete e continuar procurando", next: 17, icon: "pencil-alt", color: "blue"),
      StoryOption(text: "Mostrar o bilhete para o homem se ele aparecer", next: 18, icon: "user-md", color: "purple"),
      StoryOption(text: "Destruir o bilhete para não levantar suspeitas", next: 19, icon: "trash", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 8,
    text: "Você descansa um pouco e sente sua força voltando lentamente. Enquanto isso, observa mais detalhes da sala. Há pequenas câmeras nos cantos do teto, quase imperceptíveis.",
    options: [
      StoryOption(text: "Ignorar as câmeras e tentar escapar", next: 9, icon: "running", color: "red"),
      StoryOption(text: "Tentar desconectar as câmeras", next: 20, icon: "video-slash", color: "blue", isWrongChoice: true),
      StoryOption(text: "Fingir ainda estar fraco enquanto planeja", next: 21, icon: "brain", color: "purple"),
    ],
  ),
  StorySegment(
    id: 9,
    text: "Com um esforço sobre-humano, você arrebenta as correntes que prendiam sua perna à cama. A porta parece ser sua única saída. O barulho deve ter alertado alguém.",
    options: [
      StoryOption(text: "Esperar por quem está vindo", next: 22, icon: "user-shield", color: "blue"),
      StoryOption(text: "Atacar assim que a porta abrir", next: 23, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Se esconder atrás da porta", next: 24, icon: "eye-slash", color: "purple"),
    ],
  ),
  StorySegment(
    id: 10,
    text: "'Você está em uma instalação de pesquisa', diz o homem. 'Você manifestou habilidades especiais e estamos aqui para te ajudar a controlá-las.' Ele parece genuinamente preocupado.",
    options: [
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
      StoryOption(text: "Perguntar por que você está preso", next: 26, icon: "lock", color: "red"),
      StoryOption(text: "Pedir para falar com outros Kazuyas", next: 27, icon: "users", color: "purple"),
    ],
  ),
  StorySegment(
    id: 11,
    text: "Com um movimento rápido, você lança seu poder contra o homem. Para sua surpresa, ele desvia com facilidade. 'Eu sabia que você faria isso... todos fazem', ele diz com um sorriso triste.",
    options: [
      StoryOption(text: "Continuar atacando", next: 28, icon: "fire", color: "red", isWrongChoice: true),
      StoryOption(text: "Pedir desculpas e recuar", next: 29, icon: "hand-peace", color: "blue"),
      StoryOption(text: "Tentar fugir pela porta aberta", next: 30, icon: "door-open", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 12,
    text: "'Não... não lembro de nada', você murmura confuso. O homem anota algo em sua prancheta. 'Interessante. A amnésia é um efeito colateral raro.' Ele parece estar avaliando você.",
    options: [
      StoryOption(text: "Manter a farsa", next: 31, icon: "theater-masks", color: "purple"),
      StoryOption(text: "Revelar que estava fingindo", next: 32, icon: "grin-tongue-wink", color: "red"),
      StoryOption(text: "Perguntar sobre efeitos colaterais", next: 33, icon: "question-circle", color: "blue"),
    ],
  ),
  StorySegment(
    id: 13,
    text: "Você concentra sua energia e dá um choque no painel. Ele pisca e a porta se abre lentamente. Do outro lado, um corredor iluminado por luzes vermelhas de emergência. Você ouve alarmes tocando ao longe.",
    options: [
      StoryOption(text: "Seguir pelo corredor", next: 34, icon: "walking", color: "blue"),
      StoryOption(text: "Voltar e ver se há suprimentos", next: 35, icon: "backpack", color: "purple", isWrongChoice: true),
      StoryOption(text: "Esperar para ver quem aparece", next: 36, icon: "user-clock", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 15,
    text: "Você tenta quebrar a cama, mas ela é muito resistente. Você acaba se machucando e percebe que não tem força suficiente para isso.",
    options: [
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
      StoryOption(text: "Chamar por ajuda", next: 4, icon: "hand-paper", color: "purple"),
    ],
  ),
  StorySegment(
    id: 16,
    text: "Você espera até anoitecer. A luz da lua entra pela janela, mas ninguém aparece. Você começa a sentir fome e sede.",
    options: [
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
      StoryOption(text: "Tentar dormir", next: 8, icon: "bed", color: "gray"),
    ],
  ),
  StorySegment(
    id: 17,
    text: "Você guarda o bilhete e continua procurando por mais pistas. Você encontra um pequeno compartimento secreto na parede, mas está vazio.",
    options: [
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
      StoryOption(text: "Esperar", next: 8, icon: "hourglass-half", color: "gray"),
    ],
  ),
  StorySegment(
    id: 18,
    text: "Você decide mostrar o bilhete para o homem, mas ele ainda não apareceu. Você se sente frustrado e sozinho.",
    options: [
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
      StoryOption(text: "Esperar", next: 8, icon: "hourglass-half", color: "gray"),
    ],
  ),
  StorySegment(
    id: 19,
    text: "Você destrói o bilhete, mas se arrepende imediatamente. Talvez fosse uma pista importante. Agora é tarde demais.",
    options: [
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
      StoryOption(text: "Esperar", next: 8, icon: "hourglass-half", color: "gray"),
    ],
  ),
  StorySegment(
    id: 20,
    text: "Você tenta desconectar as câmeras, mas elas estão bem presas e protegidas. Você não consegue desativá-las sem ferramentas.",
    options: [
      StoryOption(text: "Ignorar as câmeras e tentar escapar", next: 9, icon: "running", color: "red"),
      StoryOption(text: "Fingir ainda estar fraco enquanto planeja", next: 21, icon: "brain", color: "purple"),
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 21,
    text: "Você finge ainda estar fraco e observa as câmeras. Elas parecem estar ativas, mas ninguém entra na sala. Você se pergunta se estão apenas te observando.",
    options: [
      StoryOption(text: "Ignorar as câmeras e tentar escapar", next: 9, icon: "running", color: "red"),
      StoryOption(text: "Tentar desconectar as câmeras", next: 20, icon: "video-slash", color: "blue"),
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 22,
    text: "Você espera. A porta se abre e um homem de jaleco branco entra. Ele parece calmo e amigável.",
    options: [
      StoryOption(text: "Perguntar quem ele é", next: 10, icon: "question", color: "blue"),
      StoryOption(text: "Atacar o homem", next: 11, icon: "fist-raised", color: "red"),
      StoryOption(text: "Fingir amnésia", next: 12, icon: "head-side-cough", color: "purple"),
    ],
  ),
  StorySegment(
    id: 23,
    text: "Você ataca assim que a porta abre, mas o homem é mais rápido. Ele te imobiliza com facilidade. 'Não há necessidade de violência', ele diz com uma voz calma.",
    options: [
      StoryOption(text: "Perguntar quem ele é", next: 10, icon: "question", color: "blue"),
      StoryOption(text: "Pedir desculpas", next: 29, icon: "hand-peace", color: "blue"),
      StoryOption(text: "Tentar fugir", next: 30, icon: "door-open", color: "purple"),
    ],
  ),
  StorySegment(
    id: 24,
    text: "Você se esconde atrás da porta. O homem entra na sala, olha ao redor e parece confuso. Ele sai e fecha a porta novamente.",
    options: [
      StoryOption(text: "Sair do esconderijo e tentar abrir a porta", next: 5, icon: "door-open", color: "green"),
      StoryOption(text: "Voltar a investigar a sala", next: 2, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 25,
    text: "O homem explica que o projeto KRYPTOS busca entender as habilidades Kazuya. Com o tempo, você percebe que estão realmente tentando ajudar. Você se torna um instrutor, ajudando outros como você.",
    options: [
      StoryOption(text: "[Fim do Capítulo 1] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 26,
    text: "O homem explica que você está preso para sua própria segurança e para a segurança dos outros. Ele diz que é para o seu bem, mas você não acredita nele.",
    options: [
      StoryOption(text: "Tentar fugir", next: 30, icon: "door-open", color: "purple", isWrongChoice: true),
      StoryOption(text: "Atacar o homem", next: 11, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
    ],
  ),
  StorySegment(
    id: 27,
    text: "O homem diz que não há outros Kazuyas na instalação no momento, mas que eles estão trabalhando para encontrá-los. Você sente que ele está mentindo.",
    options: [
      StoryOption(text: "Tentar fugir", next: 30, icon: "door-open", color: "purple", isWrongChoice: true),
      StoryOption(text: "Atacar o homem", next: 11, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
    ],
  ),
  StorySegment(
    id: 28,
    text: "O homem revela ser um Kazuya mais poderoso e te neutraliza. Você acorda dias depois em outra instalação, com memórias fragmentadas. Talvez cooperação fosse a melhor estratégia.",
    options: [
      StoryOption(text: "[Fim do Capítulo 1] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 29,
    text: "Você pede desculpas e o homem parece satisfeito. Ele começa a explicar sobre o projeto KRYPTOS e suas habilidades.",
    options: [
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
      StoryOption(text: "Perguntar por que você está preso", next: 26, icon: "lock", color: "red"),
      StoryOption(text: "Pedir para falar com outros Kazuyas", next: 27, icon: "users", color: "purple"),
    ],
  ),
  StorySegment(
    id: 30,
    text: "Você tenta fugir pela porta aberta, mas o homem é mais rápido e te impede. Ele te imobiliza com facilidade. 'Não há necessidade de violência', ele diz com uma voz calma.",
    options: [
      StoryOption(text: "Perguntar quem ele é", next: 10, icon: "question", color: "blue"),
      StoryOption(text: "Pedir desculpas", next: 29, icon: "hand-peace", color: "blue"),
      StoryOption(text: "Atacar o homem", next: 11, icon: "fist-raised", color: "red"),
    ],
  ),
  StorySegment(
    id: 31,
    text: "Você mantém a farsa da amnésia. O homem continua a te observar, mas não parece desconfiado. Você sente que está ganhando tempo.",
    options: [
      StoryOption(text: "Perguntar sobre efeitos colaterais", next: 33, icon: "question-circle", color: "blue"),
      StoryOption(text: "Tentar fugir", next: 30, icon: "door-open", color: "purple", isWrongChoice: true),
      StoryOption(text: "Atacar o homem", next: 11, icon: "fist-raised", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 32,
    text: "Você revela que estava fingindo. O homem sorri. 'Eu sabia', ele diz. 'Seus sinais vitais não batiam com a amnésia.' Ele parece impressionado com sua tentativa.",
    options: [
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
      StoryOption(text: "Perguntar por que você está preso", next: 26, icon: "lock", color: "red"),
      StoryOption(text: "Pedir para falar com outros Kazuyas", next: 27, icon: "users", color: "purple"),
    ],
  ),
  StorySegment(
    id: 33,
    text: "O homem explica que os efeitos colaterais são raros e variam de pessoa para pessoa. Ele diz que alguns experimentam amnésia, outros perda de controle dos poderes.",
    options: [
      StoryOption(text: "Perguntar mais sobre as pesquisas", next: 25, icon: "flask", color: "blue"),
      StoryOption(text: "Perguntar por que você está preso", next: 26, icon: "lock", color: "red"),
      StoryOption(text: "Pedir para falar com outros Kazuyas", next: 27, icon: "users", color: "purple"),
    ],
  ),
  StorySegment(
    id: 34,
    text: "Você escapa da instalação e encontra a Resistência. Juntos, vocês expõem os experimentos secretos e libertam outros Kazuyas. Finalmente livre, você percebe que esta foi apenas a primeira batalha em uma guerra maior.",
    options: [
      StoryOption(text: "[Fim do Capítulo 1] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 35,
    text: "Você volta para a sala e procura por suprimentos, mas não encontra nada além da cama e do bilhete rasgado. Você se sente frustrado.",
    options: [
      StoryOption(text: "Seguir pelo corredor", next: 34, icon: "walking", color: "blue"),
      StoryOption(text: "Esperar para ver quem aparece", next: 36, icon: "user-clock", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 36,
    text: "Você espera no corredor. Depois de um tempo, um guarda aparece e te vê. Ele te imobiliza e te leva de volta para a sala.",
    options: [
      StoryOption(text: "[Fim do Capítulo 1] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
];


