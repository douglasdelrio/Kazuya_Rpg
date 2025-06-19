import '../models/story_segment.dart';

final List<StorySegment> storyData = [
  // Capítulo 1
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
    text: "Você escapa da instalação e encontra a Resistência. Juntos, vocês planejam a próxima fase da luta contra a S.M.A. O mundo precisa de vocês.",
    options: [
      StoryOption(text: "[Fim do Capítulo 1] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 2: A Resistência
  StorySegment(
    id: 100,
    text: "Você se junta à Resistência, um grupo de Kazuyas e humanos comuns que lutam contra a S.M.A. Eles o recebem com cautela, mas reconhecem seu potencial. Seu primeiro objetivo é resgatar outros Kazuyas de uma instalação de detenção da S.M.A. Você está em um briefing com o líder da Resistência, um homem chamado 'Corvo'.",
    options: [
      StoryOption(text: "Perguntar sobre a instalação", next: 101, icon: "search", color: "blue"),
      StoryOption(text: "Perguntar sobre a S.M.A.", next: 102, icon: "question", color: "purple"),
      StoryOption(text: "Oferecer-se para liderar a missão", next: 103, icon: "fist-raised", color: "red"),
    ],
  ),
  StorySegment(
    id: 101,
    text: "Corvo explica que a instalação é uma antiga prisão de segurança máxima, adaptada para conter Kazuyas. 'É um inferno na terra', ele diz. 'Mas precisamos libertar nossos irmãos.'",
    options: [
      StoryOption(text: "Perguntar sobre o plano de ataque", next: 104, icon: "brain", color: "blue"),
      StoryOption(text: "Perguntar sobre os riscos", next: 105, icon: "skull", color: "red"),
      StoryOption(text: "Expressar confiança na missão", next: 106, icon: "hand-peace", color: "green"),
    ],
  ),
  StorySegment(
    id: 102,
    text: "'A S.M.A. é uma organização sombria que busca controlar os Kazuyas', explica Corvo. 'Eles nos veem como armas, não como seres humanos. Eles farão de tudo para nos suprimir.'",
    options: [
      StoryOption(text: "Perguntar sobre a origem da S.M.A.", next: 107, icon: "question-circle", color: "purple"),
      StoryOption(text: "Expressar ódio pela S.M.A.", next: 108, icon: "fire", color: "red"),
      StoryOption(text: "Perguntar como a Resistência se formou", next: 109, icon: "users", color: "blue"),
    ],
  ),
  StorySegment(
    id: 103,
    text: "Corvo sorri. 'Gosto da sua iniciativa, novato. Mas esta missão requer experiência. Você virá, mas sob meu comando.'",
    options: [
      StoryOption(text: "Aceitar a decisão de Corvo", next: 104, icon: "hand-peace", color: "green"),
      StoryOption(text: "Insistir em liderar", next: 110, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Perguntar sobre o plano de ataque", next: 104, icon: "brain", color: "blue"),
    ],
  ),
  StorySegment(
    id: 104,
    text: "O plano é simples: uma equipe de infiltração, incluindo você, entrará pelos túneis de serviço enquanto uma equipe de distração ataca a frente. Seu objetivo é desativar os geradores de energia.",
    options: [
      StoryOption(text: "Perguntar sobre os túneis", next: 111, icon: "search", color: "blue"),
      StoryOption(text: "Perguntar sobre os geradores", next: 112, icon: "bolt", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 105,
    text: "'Os riscos são altos', diz Corvo. 'Se formos pegos, seremos torturados e usados como cobaias. Mas a liberdade dos nossos irmãos vale o risco.'",
    options: [
      StoryOption(text: "Expressar determinação", next: 106, icon: "fist-raised", color: "green"),
      StoryOption(text: "Perguntar sobre rotas de fuga", next: 114, icon: "door-open", color: "blue"),
      StoryOption(text: "Expressar medo", next: 115, icon: "skull", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 106,
    text: "'Essa é a atitude!', Corvo sorri. 'Vamos mostrar a S.M.A. do que somos capazes.'",
    options: [
      StoryOption(text: "Perguntar sobre o plano de ataque", next: 104, icon: "brain", color: "blue"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 107,
    text: "'A S.M.A. surgiu das sombras, um grupo de cientistas e militares que acreditam na supremacia humana', revela Corvo. 'Eles temem o que não entendem.'",
    options: [
      StoryOption(text: "Perguntar sobre os fundadores", next: 116, icon: "user-md", color: "purple"),
      StoryOption(text: "Perguntar sobre seus métodos", next: 117, icon: "hammer", color: "red"),
      StoryOption(text: "Perguntar como a Resistência se formou", next: 109, icon: "users", color: "blue"),
    ],
  ),
  StorySegment(
    id: 108,
    text: "'O ódio é uma arma poderosa', diz Corvo, 'mas a esperança é mais forte. Lutamos por um futuro onde Kazuyas e humanos vivam em paz.'",
    options: [
      StoryOption(text: "Perguntar como a Resistência se formou", next: 109, icon: "users", color: "blue"),
      StoryOption(text: "Perguntar sobre o plano de ataque", next: 104, icon: "brain", color: "blue"),
    ],
  ),
  StorySegment(
    id: 109,
    text: "'A Resistência nasceu da necessidade', explica Corvo. 'Kazuyas e humanos que se recusaram a ser controlados se uniram. Somos uma família agora.'",
    options: [
      StoryOption(text: "Perguntar sobre o plano de ataque", next: 104, icon: "brain", color: "blue"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 110,
    text: "Você insiste em liderar, mas Corvo o repreende. 'A arrogância é o caminho para a derrota, novato. Aprenda a seguir antes de tentar liderar.'",
    options: [
      StoryOption(text: "Aceitar a decisão de Corvo", next: 104, icon: "hand-peace", color: "green"),
      StoryOption(text: "Pedir desculpas", next: 106, icon: "hand-peace", color: "green"),
    ],
  ),
  StorySegment(
    id: 111,
    text: "Os túneis são antigos e estreitos, usados para manutenção. 'Eles não esperam que alguém os use', diz Corvo. 'É nossa melhor chance de entrar sem ser detectado.'",
    options: [
      StoryOption(text: "Perguntar sobre a segurança dos túneis", next: 118, icon: "lock", color: "red"),
      StoryOption(text: "Perguntar sobre o que esperar lá dentro", next: 119, icon: "question", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 112,
    text: "Os geradores são a chave para desativar as defesas da instalação. 'Sem energia, eles estão cegos e surdos', explica Corvo. 'É quando atacamos.'",
    options: [
      StoryOption(text: "Perguntar sobre a localização dos geradores", next: 120, icon: "search", color: "blue"),
      StoryOption(text: "Perguntar sobre como desativá-los", next: 121, icon: "hammer", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 113,
    text: "Você se prepara para a missão. A adrenalina corre em suas veias. Esta é a sua chance de fazer a diferença.",
    options: [
      StoryOption(text: "[Fim do Capítulo 2] Próximo Capítulo", next: 200, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 114,
    text: "'Temos rotas de fuga de emergência, mas a prioridade é a missão', diz Corvo. 'Não podemos nos dar ao luxo de falhar.'",
    options: [
      StoryOption(text: "Expressar determinação", next: 106, icon: "fist-raised", color: "green"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 115,
    text: "Você expressa medo, e Corvo o olha com seriedade. 'O medo é natural, mas não podemos deixar que ele nos paralise. Lute por aqueles que não podem lutar por si mesmos.'",
    options: [
      StoryOption(text: "Expressar determinação", next: 106, icon: "fist-raised", color: "green"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 116,
    text: "'Os fundadores da S.M.A. são figuras sombrias, poucos sabem seus nomes', diz Corvo. 'Eles operam nas sombras, manipulando governos e corporações.'",
    options: [
      StoryOption(text: "Perguntar sobre seus métodos", next: 117, icon: "hammer", color: "red"),
      StoryOption(text: "Perguntar como a Resistência se formou", next: 109, icon: "users", color: "blue"),
    ],
  ),
  StorySegment(
    id: 117,
    text: "'Eles usam lavagem cerebral, tortura e experimentação', Corvo revela, sua voz endurecendo. 'Eles transformam Kazuyas em armas sem vontade própria.'",
    options: [
      StoryOption(text: "Expressar ódio pela S.M.A.", next: 108, icon: "fire", color: "red"),
      StoryOption(text: "Perguntar como a Resistência se formou", next: 109, icon: "users", color: "blue"),
    ],
  ),
  StorySegment(
    id: 118,
    text: "'Os túneis são monitorados, mas temos um especialista em desativação de segurança', Corvo assegura. 'Ele abrirá o caminho para vocês.'",
    options: [
      StoryOption(text: "Perguntar sobre o que esperar lá dentro", next: 119, icon: "question", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 119,
    text: "'Espere o inesperado', Corvo adverte. 'A S.M.A. é astuta. Pode haver armadilhas, guardas, ou até mesmo outros Kazuyas controlados.'",
    options: [
      StoryOption(text: "Perguntar sobre a segurança dos túneis", next: 118, icon: "lock", color: "red"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 120,
    text: "'Os geradores ficam no subsolo, em uma área de alta segurança', Corvo explica. 'Vocês precisarão de um mapa e de um plano para chegar lá.'",
    options: [
      StoryOption(text: "Perguntar sobre como desativá-los", next: 121, icon: "hammer", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 121,
    text: "'Eles são protegidos por escudos de energia', diz Corvo. 'Vocês precisarão de um pulso eletromagnético para sobrecarregá-los. Nosso especialista pode criar um.'",
    options: [
      StoryOption(text: "Perguntar sobre a localização dos geradores", next: 120, icon: "search", color: "blue"),
      StoryOption(text: "Preparar-se para a missão", next: 113, icon: "running", color: "green"),
    ],
  ),

  // Capítulo 3: Infiltração
  StorySegment(
    id: 200,
    text: "Você e sua equipe se infiltram na instalação da S.M.A. pelos túneis de serviço. O ar é úmido e o cheiro de mofo é forte. Vocês se movem silenciosamente, evitando as patrulhas de segurança. De repente, vocês ouvem vozes se aproximando.",
    options: [
      StoryOption(text: "Esconder-se nas sombras", next: 201, icon: "eye-slash", color: "blue"),
      StoryOption(text: "Preparar-se para o combate", next: 202, icon: "fist-raised", color: "red"),
      StoryOption(text: "Tentar distrair os guardas", next: 203, icon: "lightbulb", color: "purple"),
    ],
  ),
  StorySegment(
    id: 201,
    text: "Vocês se escondem nas sombras enquanto dois guardas da S.M.A. passam, conversando sobre a rotina tediosa. Eles não percebem sua presença. Vocês continuam avançando.",
    options: [
      StoryOption(text: "Seguir em frente", next: 204, icon: "walking", color: "green"),
      StoryOption(text: "Tentar pegar um dos guardas para interrogar", next: 205, icon: "user-md", color: "red", isWrongChoice: true),
      StoryOption(text: "Procurar por um mapa da instalação", next: 206, icon: "search", color: "blue"),
    ],
  ),
  StorySegment(
    id: 202,
    text: "Vocês se preparam para o combate, mas os guardas são muitos. Vocês são rapidamente dominados e capturados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 203,
    text: "Você tenta distrair os guardas, mas seu plano falha. Eles percebem sua presença e atiram. Vocês são forçados a recuar, mas um membro da equipe é ferido.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 204,
    text: "Vocês seguem em frente, aprofundando-se nos túneis. O caminho se torna mais complexo, com várias ramificações. Vocês precisam encontrar o caminho para os geradores.",
    options: [
      StoryOption(text: "Consultar o mapa da instalação", next: 207, icon: "map", color: "blue"),
      StoryOption(text: "Seguir o fluxo de ar", next: 208, icon: "wind", color: "green"),
      StoryOption(text: "Tentar se comunicar com a equipe de distração", next: 209, icon: "phone", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 205,
    text: "Você tenta pegar um dos guardas, mas ele é mais forte do que parece. Ele grita por reforços e vocês são cercados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 206,
    text: "Vocês procuram por um mapa, mas não encontram nada útil. O tempo está se esgotando.",
    options: [
      StoryOption(text: "Seguir em frente", next: 204, icon: "walking", color: "green"),
      StoryOption(text: "Tentar pegar um dos guardas para interrogar", next: 205, icon: "user-md", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 207,
    text: "Vocês consultam o mapa que o especialista da Resistência forneceu. Ele mostra a rota mais segura para os geradores. Vocês seguem as instruções, evitando armadilhas e patrulhas.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Próximo Capítulo", next: 300, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 208,
    text: "Vocês seguem o fluxo de ar, mas ele os leva para uma área de ventilação, não para os geradores. Vocês perdem tempo precioso e são detectados por um sensor de movimento.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 209,
    text: "Você tenta se comunicar com a equipe de distração, mas o sinal é bloqueado. Sua tentativa alerta os guardas próximos e vocês são emboscados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 3] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 4: O Coração da Besta
  StorySegment(
    id: 300,
    text: "Vocês chegam à sala dos geradores, o coração da instalação. É um lugar imponente, com máquinas zumbindo e luzes piscando. Dois guardas fortemente armados protegem a entrada.",
    options: [
      StoryOption(text: "Atacar os guardas", next: 301, icon: "fist-raised", color: "red"),
      StoryOption(text: "Tentar desativar os geradores silenciosamente", next: 302, icon: "hammer", color: "blue"),
      StoryOption(text: "Criar uma distração", next: 303, icon: "lightbulb", color: "purple"),
    ],
  ),
  StorySegment(
    id: 301,
    text: "Vocês atacam os guardas, mas eles são bem treinados e resistem. A luta é intensa e atrai mais reforços. Vocês são superados e capturados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 4] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 302,
    text: "Você tenta desativar os geradores silenciosamente, mas eles são protegidos por um campo de força. Você não consegue passar.",
    options: [
      StoryOption(text: "Atacar os guardas", next: 301, icon: "fist-raised", color: "red"),
      StoryOption(text: "Criar uma distração", next: 303, icon: "lightbulb", color: "purple"),
    ],
  ),
  StorySegment(
    id: 303,
    text: "Você cria uma distração, ativando um alarme falso em outra seção da instalação. Os guardas se movem para investigar, deixando a entrada dos geradores desprotegida.",
    options: [
      StoryOption(text: "Entrar na sala dos geradores", next: 304, icon: "door-open", color: "green"),
      StoryOption(text: "Esperar pelos guardas voltarem", next: 305, icon: "hourglass-half", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 304,
    text: "Vocês entram na sala dos geradores. O especialista da Resistência começa a preparar o pulso eletromagnético. Vocês precisam protegê-lo enquanto ele trabalha.",
    options: [
      StoryOption(text: "Montar guarda nas entradas", next: 306, icon: "user-shield", color: "blue"),
      StoryOption(text: "Ajudar o especialista", next: 307, icon: "hammer", color: "purple"),
      StoryOption(text: "Procurar por informações nos terminais", next: 308, icon: "search", color: "green"),
    ],
  ),
  StorySegment(
    id: 305,
    text: "Você espera pelos guardas voltarem, mas eles trazem reforços. Vocês são cercados e capturados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 4] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 306,
    text: "Vocês montam guarda nas entradas. Em poucos minutos, guardas da S.M.A. chegam, alertados pelo alarme. A batalha começa.",
    options: [
      StoryOption(text: "Lutar contra os guardas", next: 309, icon: "fist-raised", color: "red"),
      StoryOption(text: "Usar seus poderes para atrasá-los", next: 310, icon: "bolt", color: "blue"),
      StoryOption(text: "Tentar negociar", next: 311, icon: "hand-peace", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 307,
    text: "Você tenta ajudar o especialista, mas ele diz que precisa de concentração total. Sua ajuda atrapalha mais do que ajuda.",
    options: [
      StoryOption(text: "Montar guarda nas entradas", next: 306, icon: "user-shield", color: "blue"),
      StoryOption(text: "Procurar por informações nos terminais", next: 308, icon: "search", color: "green"),
    ],
  ),
  StorySegment(
    id: 308,
    text: "Você procura por informações nos terminais e encontra dados sobre outros Kazuyas detidos. É uma lista valiosa.",
    options: [
      StoryOption(text: "Montar guarda nas entradas", next: 306, icon: "user-shield", color: "blue"),
      StoryOption(text: "Ajudar o especialista", next: 307, icon: "hammer", color: "purple"),
    ],
  ),
  StorySegment(
    id: 309,
    text: "Vocês lutam bravamente, mas os guardas são muitos. Vocês são dominados e o especialista é capturado antes de desativar os geradores. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 4] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 310,
    text: "Você usa seus poderes para criar uma barreira de energia, atrasando os guardas. O especialista consegue ativar o pulso eletromagnético. As luzes da instalação piscam e se apagam.",
    options: [
      StoryOption(text: "[Fim do Capítulo 4] Próximo Capítulo", next: 400, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 311,
    text: "Você tenta negociar com os guardas, mas eles não estão interessados. Eles atacam sem hesitação e vocês são rapidamente dominados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 4] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 5: O Resgate
  StorySegment(
    id: 400,
    text: "Com os geradores desativados, a instalação mergulha no caos. Alarmes soam, mas as luzes estão apagadas. É a chance perfeita para resgatar os Kazuyas detidos. Vocês se movem rapidamente pelos corredores escuros.",
    options: [
      StoryOption(text: "Seguir o mapa para as celas", next: 401, icon: "map", color: "blue"),
      StoryOption(text: "Procurar por uma sala de controle", next: 402, icon: "search", color: "purple"),
      StoryOption(text: "Dividir a equipe para cobrir mais terreno", next: 403, icon: "users", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 401,
    text: "Vocês seguem o mapa para a área das celas. O caminho é complicado, mas a escuridão e o caos os ajudam a passar despercebidos. Vocês chegam a um bloco de celas, onde ouvem gemidos e sussurros.",
    options: [
      StoryOption(text: "Abrir todas as celas", next: 404, icon: "door-open", color: "green"),
      StoryOption(text: "Procurar por um painel de controle mestre", next: 405, icon: "hammer", color: "blue"),
      StoryOption(text: "Chamar pelos prisioneiros para verificar se são Kazuyas", next: 406, icon: "question", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 402,
    text: "Vocês procuram por uma sala de controle, mas acabam em uma área de laboratórios. Vocês encontram documentos confidenciais sobre experimentos da S.M.A. com Kazuyas.",
    options: [
      StoryOption(text: "Pegar os documentos", next: 407, icon: "pencil-alt", color: "blue"),
      StoryOption(text: "Destruir os documentos", next: 408, icon: "trash", color: "red", isWrongChoice: true),
      StoryOption(text: "Voltar e procurar as celas", next: 401, icon: "undo", color: "gray"),
    ],
  ),
  StorySegment(
    id: 403,
    text: "Vocês dividem a equipe, mas a comunicação falha no caos. Um dos grupos é emboscado e capturado. A missão está comprometida.",
    options: [
      StoryOption(text: "[Fim do Capítulo 5] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 404,
    text: "Vocês abrem todas as celas. Muitos prisioneiros estão fracos e desorientados, mas alguns são Kazuyas e reconhecem a Resistência. Vocês os guiam para a saída.",
    options: [
      StoryOption(text: "[Fim do Capítulo 5] Próximo Capítulo", next: 500, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 405,
    text: "Vocês procuram por um painel de controle mestre, mas ele está desativado devido à falta de energia. Vocês precisam abrir as celas manualmente.",
    options: [
      StoryOption(text: "Abrir todas as celas", next: 404, icon: "door-open", color: "green"),
      StoryOption(text: "Chamar pelos prisioneiros para verificar se são Kazuyas", next: 406, icon: "question", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 406,
    text: "Você chama pelos prisioneiros, mas o barulho atrai guardas da S.M.A. Vocês são forçados a lutar e perdem tempo precioso. Alguns prisioneiros são mortos no fogo cruzado.",
    options: [
      StoryOption(text: "[Fim do Capítulo 5] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 407,
    text: "Vocês pegam os documentos. Eles contêm informações cruciais sobre os planos da S.M.A. e a localização de outras instalações. É uma vitória de inteligência.",
    options: [
      StoryOption(text: "Voltar e procurar as celas", next: 401, icon: "undo", color: "gray"),
      StoryOption(text: "[Fim do Capítulo 5] Próximo Capítulo", next: 500, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 408,
    text: "Vocês destroem os documentos, mas percebem que perderam uma oportunidade valiosa de obter informações sobre a S.M.A. Um erro caro.",
    options: [
      StoryOption(text: "Voltar e procurar as celas", next: 401, icon: "undo", color: "gray"),
      StoryOption(text: "[Fim do Capítulo 5] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 6: A Fuga
  StorySegment(
    id: 500,
    text: "Com os Kazuyas resgatados, vocês precisam sair da instalação. O caos ainda reina, mas a S.M.A. está se reorganizando. Vocês se dirigem para o ponto de extração, onde um veículo da Resistência espera.",
    options: [
      StoryOption(text: "Seguir a rota mais rápida", next: 501, icon: "running", color: "green"),
      StoryOption(text: "Seguir a rota mais segura", next: 502, icon: "user-shield", color: "blue"),
      StoryOption(text: "Criar uma distração final", next: 503, icon: "fire", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 501,
    text: "Vocês seguem a rota mais rápida, mas encontram forte resistência. A S.M.A. montou uma emboscada. Vocês lutam para abrir caminho, sofrendo baixas.",
    options: [
      StoryOption(text: "Lutar até o fim", next: 504, icon: "fist-raised", color: "red"),
      StoryOption(text: "Usar seus poderes para abrir caminho", next: 505, icon: "bolt", color: "blue"),
      StoryOption(text: "Tentar uma rota alternativa", next: 506, icon: "undo", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 502,
    text: "Vocês seguem a rota mais segura, evitando confrontos diretos. O caminho é mais longo, mas vocês chegam ao ponto de extração sem incidentes maiores. O veículo da Resistência está esperando.",
    options: [
      StoryOption(text: "Entrar no veículo", next: 507, icon: "door-open", color: "green"),
      StoryOption(text: "Esperar por mais Kazuyas", next: 508, icon: "hourglass-half", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 503,
    text: "Você cria uma distração final, mas ela é muito grande e atrai a atenção de todas as forças da S.M.A. Vocês são cercados e não conseguem escapar. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 6] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 504,
    text: "Vocês lutam até o fim, mas são superados pelo número de inimigos. A S.M.A. recaptura os Kazuyas e vocês são feitos prisioneiros. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 6] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 505,
    text: "Você usa seus poderes para abrir caminho, criando uma explosão de energia que atordoa os guardas. Vocês conseguem passar e chegam ao ponto de extração. O veículo da Resistência está esperando.",
    options: [
      StoryOption(text: "Entrar no veículo", next: 507, icon: "door-open", color: "green"),
      StoryOption(text: "Esperar por mais Kazuyas", next: 508, icon: "hourglass-half", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 506,
    text: "Você tenta uma rota alternativa, mas ela leva a um beco sem saída. Vocês são encurralados e capturados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 6] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 507,
    text: "Vocês entram no veículo da Resistência. O motorista acelera, deixando a instalação da S.M.A. para trás. Vocês conseguiram. Os Kazuyas estão livres.",
    options: [
      StoryOption(text: "[Fim do Capítulo 6] Próximo Capítulo", next: 600, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 508,
    text: "Você espera por mais Kazuyas, mas a S.M.A. se reorganiza e cerca o ponto de extração. Vocês são forçados a lutar e são superados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 6] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 7: O Santuário
  StorySegment(
    id: 600,
    text: "Vocês chegam ao Santuário, a base secreta da Resistência. É um lugar seguro, escondido nas montanhas, onde Kazuyas e humanos vivem em harmonia. Você é recebido como um herói.",
    options: [
      StoryOption(text: "Explorar o Santuário", next: 601, icon: "search", color: "blue"),
      StoryOption(text: "Descansar e se recuperar", next: 602, icon: "bed", color: "green"),
      StoryOption(text: "Falar com Corvo sobre os próximos passos", next: 603, icon: "user-md", color: "purple"),
    ],
  ),
  StorySegment(
    id: 601,
    text: "Você explora o Santuário. Há áreas de treinamento, laboratórios, dormitórios e uma enfermaria. É uma comunidade autossuficiente, dedicada à causa da Resistência.",
    options: [
      StoryOption(text: "Visitar a área de treinamento", next: 604, icon: "running", color: "blue"),
      StoryOption(text: "Visitar os laboratórios", next: 605, icon: "flask", color: "purple"),
      StoryOption(text: "Descansar e se recuperar", next: 602, icon: "bed", color: "green"),
    ],
  ),
  StorySegment(
    id: 602,
    text: "Você descansa e se recupera. A paz do Santuário é um alívio após a tensão da missão. Você se sente revigorado e pronto para o próximo desafio.",
    options: [
      StoryOption(text: "Explorar o Santuário", next: 601, icon: "search", color: "blue"),
      StoryOption(text: "Falar com Corvo sobre os próximos passos", next: 603, icon: "user-md", color: "purple"),
    ],
  ),
  StorySegment(
    id: 603,
    text: "Corvo o parabeniza pela missão bem-sucedida. 'A S.M.A. está ferida, mas não derrotada', ele diz. 'Precisamos de mais informações sobre seus planos.'",
    options: [
      StoryOption(text: "Perguntar sobre a próxima missão", next: 606, icon: "question", color: "blue"),
      StoryOption(text: "Oferecer-se para uma missão de reconhecimento", next: 607, icon: "eye-slash", color: "purple"),
      StoryOption(text: "Perguntar sobre os documentos que você encontrou", next: 608, icon: "pencil-alt", color: "green"),
    ],
  ),
  StorySegment(
    id: 604,
    text: "Você visita a área de treinamento. Outros Kazuyas estão aprimorando suas habilidades. Você decide treinar um pouco para manter a forma.",
    options: [
      StoryOption(text: "Treinar força", next: 609, icon: "dumbbell", color: "blue"),
      StoryOption(text: "Treinar velocidade", next: 610, icon: "running", color: "green"),
      StoryOption(text: "Treinar poderes psíquicos", next: 611, icon: "brain", color: "purple"),
    ],
  ),
  StorySegment(
    id: 605,
    text: "Você visita os laboratórios. Cientistas da Resistência estão estudando as habilidades Kazuya e desenvolvendo contramedidas contra a S.M.A. Você aprende muito sobre seus poderes.",
    options: [
      StoryOption(text: "Perguntar sobre a origem dos poderes Kazuya", next: 612, icon: "question-circle", color: "blue"),
      StoryOption(text: "Perguntar sobre as fraquezas da S.M.A.", next: 613, icon: "skull", color: "red"),
      StoryOption(text: "Oferecer-se como cobaia para experimentos", next: 614, icon: "flask", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 606,
    text: "'Nossa próxima missão é infiltrar-se em um centro de dados da S.M.A. e roubar seus arquivos mais secretos', Corvo revela. 'Precisamos saber o que eles estão planejando.'",
    options: [
      StoryOption(text: "Perguntar sobre o centro de dados", next: 615, icon: "search", color: "blue"),
      StoryOption(text: "Perguntar sobre a equipe", next: 616, icon: "users", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 617, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 607,
    text: "Corvo aprecia sua iniciativa. 'Uma missão de reconhecimento seria útil, mas precisamos de você para a próxima grande operação. Descanse e se prepare.'",
    options: [
      StoryOption(text: "Perguntar sobre a próxima missão", next: 606, icon: "question", color: "blue"),
      StoryOption(text: "Explorar o Santuário", next: 601, icon: "search", color: "blue"),
    ],
  ),
  StorySegment(
    id: 608,
    text: "Corvo examina os documentos que você encontrou. 'Isso é ouro!', ele exclama. 'Temos a localização de outras instalações e os nomes de alguns dos líderes da S.M.A. Você fez um ótimo trabalho!'",
    options: [
      StoryOption(text: "Perguntar sobre a próxima missão", next: 606, icon: "question", color: "blue"),
      StoryOption(text: "Explorar o Santuário", next: 601, icon: "search", color: "blue"),
    ],
  ),
  StorySegment(
    id: 609,
    text: "Você treina sua força. Seus músculos doem, mas você sente que está ficando mais forte. Sua força aumenta em 5 pontos.",
    options: [
      StoryOption(text: "Treinar velocidade", next: 610, icon: "running", color: "green"),
      StoryOption(text: "Treinar poderes psíquicos", next: 611, icon: "brain", color: "purple"),
      StoryOption(text: "Descansar e se recuperar", next: 602, icon: "bed", color: "green"),
    ],
  ),
  StorySegment(
    id: 610,
    text: "Você treina sua velocidade. Você se sente mais ágil e rápido. Sua velocidade aumenta em 5 pontos.",
    options: [
      StoryOption(text: "Treinar força", next: 609, icon: "dumbbell", color: "blue"),
      StoryOption(text: "Treinar poderes psíquicos", next: 611, icon: "brain", color: "purple"),
      StoryOption(text: "Descansar e se recuperar", next: 602, icon: "bed", color: "green"),
    ],
  ),
  StorySegment(
    id: 611,
    text: "Você treina seus poderes psíquicos. Sua mente se torna mais focada e seus poderes mais potentes. Seu poder psíquico aumenta em 5 pontos.",
    options: [
      StoryOption(text: "Treinar força", next: 609, icon: "dumbbell", color: "blue"),
      StoryOption(text: "Treinar velocidade", next: 610, icon: "running", color: "green"),
      StoryOption(text: "Descansar e se recuperar", next: 602, icon: "bed", color: "green"),
    ],
  ),
  StorySegment(
    id: 612,
    text: "Os cientistas explicam que os poderes Kazuya são uma mutação genética rara, ativada por estresse extremo. 'É uma evolução', diz um cientista, 'mas a S.M.A. quer controlá-la.'",
    options: [
      StoryOption(text: "Perguntar sobre as fraquezas da S.M.A.", next: 613, icon: "skull", color: "red"),
      StoryOption(text: "Oferecer-se como cobaia para experimentos", next: 614, icon: "flask", color: "purple", isWrongChoice: true),
      StoryOption(text: "Falar com Corvo sobre os próximos passos", next: 603, icon: "user-md", color: "purple"),
    ],
  ),
  StorySegment(
    id: 613,
    text: "'A S.M.A. é vulnerável à desinformação e à desorganização', explica um cientista. 'Eles dependem de sua estrutura hierárquica. Se pudermos quebrar isso, eles cairão.'",
    options: [
      StoryOption(text: "Perguntar sobre a origem dos poderes Kazuya", next: 612, icon: "question-circle", color: "blue"),
      StoryOption(text: "Falar com Corvo sobre os próximos passos", next: 603, icon: "user-md", color: "purple"),
    ],
  ),
  StorySegment(
    id: 614,
    text: "Você se oferece como cobaia, mas os cientistas recusam. 'Não colocamos nossos aliados em risco desnecessário', diz um deles. 'Sua segurança é nossa prioridade.'",
    options: [
      StoryOption(text: "Perguntar sobre a origem dos poderes Kazuya", next: 612, icon: "question-circle", color: "blue"),
      StoryOption(text: "Perguntar sobre as fraquezas da S.M.A.", next: 613, icon: "skull", color: "red"),
    ],
  ),
  StorySegment(
    id: 615,
    text: "'O centro de dados é uma fortaleza digital', Corvo explica. 'É onde eles armazenam todos os seus segredos. Precisamos de um hacker para nos ajudar.'",
    options: [
      StoryOption(text: "Perguntar sobre a equipe", next: 616, icon: "users", color: "purple"),
      StoryOption(text: "Preparar-se para a missão", next: 617, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 616,
    text: "'Sua equipe será composta por você, um hacker chamado 'Cipher' e uma especialista em infiltração, 'Sombra'', Corvo revela. 'Vocês são os melhores para o trabalho.'",
    options: [
      StoryOption(text: "Perguntar sobre o centro de dados", next: 615, icon: "search", color: "blue"),
      StoryOption(text: "Preparar-se para a missão", next: 617, icon: "running", color: "green"),
    ],
  ),
  StorySegment(
    id: 617,
    text: "Você se prepara para a missão. A tensão é palpável, mas você está pronto para o desafio. O destino da Resistência depende de você.",
    options: [
      StoryOption(text: "[Fim do Capítulo 7] Próximo Capítulo", next: 700, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 8: O Centro de Dados
  StorySegment(
    id: 700,
    text: "Vocês chegam ao centro de dados da S.M.A. É um prédio imponente, com segurança de alta tecnologia. Cipher começa a trabalhar para desativar os sistemas de segurança externos.",
    options: [
      StoryOption(text: "Proteger Cipher", next: 701, icon: "user-shield", color: "blue"),
      StoryOption(text: "Procurar por pontos fracos na segurança", next: 702, icon: "search", color: "purple"),
      StoryOption(text: "Criar uma distração para os guardas", next: 703, icon: "lightbulb", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 701,
    text: "Você protege Cipher enquanto ele trabalha. Guardas da S.M.A. se aproximam, alertados por um sensor. Você se prepara para o combate.",
    options: [
      StoryOption(text: "Lutar contra os guardas", next: 704, icon: "fist-raised", color: "red"),
      StoryOption(text: "Usar seus poderes para imobilizá-los", next: 705, icon: "bolt", color: "blue"),
      StoryOption(text: "Tentar se esconder", next: 706, icon: "eye-slash", color: "gray", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 702,
    text: "Você procura por pontos fracos na segurança e encontra uma falha no sistema de vigilância. Você informa Cipher, que a explora para desativar mais câmeras.",
    options: [
      StoryOption(text: "Proteger Cipher", next: 701, icon: "user-shield", color: "blue"),
      StoryOption(text: "Ajudar Cipher a explorar a falha", next: 707, icon: "hammer", color: "purple"),
    ],
  ),
  StorySegment(
    id: 703,
    text: "Você cria uma distração, mas ela é muito barulhenta e atrai a atenção de todas as forças da S.M.A. Vocês são cercados e não conseguem entrar. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 8] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 704,
    text: "Vocês lutam bravamente, mas os guardas são muitos. Cipher é ferido e vocês são forçados a recuar. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 8] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 705,
    text: "Você usa seus poderes para imobilizar os guardas, criando um campo de força. Cipher consegue desativar os sistemas de segurança. Vocês entram no centro de dados.",
    options: [
      StoryOption(text: "[Fim do Capítulo 8] Próximo Capítulo", next: 800, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 706,
    text: "Você tenta se esconder, mas os guardas o encontram facilmente. Vocês são capturados e a missão falha.",
    options: [
      StoryOption(text: "[Fim do Capítulo 8] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 707,
    text: "Você ajuda Cipher a explorar a falha. Juntos, vocês desativam os sistemas de segurança rapidamente. Vocês entram no centro de dados sem serem detectados.",
    options: [
      StoryOption(text: "[Fim do Capítulo 8] Próximo Capítulo", next: 800, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 9: Os Segredos da S.M.A.
  StorySegment(
    id: 800,
    text: "Vocês estão dentro do centro de dados. Servidores zumbem e luzes piscam. Cipher começa a baixar os arquivos, mas a S.M.A. detecta a intrusão. Vocês têm pouco tempo.",
    options: [
      StoryOption(text: "Proteger Cipher a todo custo", next: 801, icon: "user-shield", color: "blue"),
      StoryOption(text: "Procurar por informações adicionais", next: 802, icon: "search", color: "purple"),
      StoryOption(text: "Preparar uma rota de fuga", next: 803, icon: "door-open", color: "green"),
    ],
  ),
  StorySegment(
    id: 801,
    text: "Você protege Cipher enquanto ele baixa os arquivos. Guardas da S.M.A. invadem a sala. A batalha é feroz, mas vocês conseguem segurá-los.",
    options: [
      StoryOption(text: "Lutar contra os guardas", next: 804, icon: "fist-raised", color: "red"),
      StoryOption(text: "Usar seus poderes para criar uma distração", next: 805, icon: "bolt", color: "blue"),
      StoryOption(text: "Tentar fugir com Cipher", next: 806, icon: "running", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 802,
    text: "Você procura por informações adicionais e encontra um arquivo criptografado com o nome 'Projeto Ragnarok'. Você informa Cipher, que tenta decifrá-lo.",
    options: [
      StoryOption(text: "Proteger Cipher a todo custo", next: 801, icon: "user-shield", color: "blue"),
      StoryOption(text: "Ajudar Cipher a decifrar o arquivo", next: 807, icon: "brain", color: "purple"),
    ],
  ),
  StorySegment(
    id: 803,
    text: "Você prepara uma rota de fuga, mas a S.M.A. já bloqueou todas as saídas. Vocês estão encurralados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 9] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 804,
    text: "Vocês lutam bravamente, mas os guardas são muitos. Cipher é atingido e os arquivos são perdidos. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 9] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 805,
    text: "Você usa seus poderes para criar uma distração massiva, atraindo todos os guardas para longe de Cipher. Ele consegue baixar os arquivos e vocês escapam.",
    options: [
      StoryOption(text: "[Fim do Capítulo 9] Próximo Capítulo", next: 900, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 806,
    text: "Você tenta fugir com Cipher, mas a S.M.A. os intercepta. Vocês são capturados e os arquivos são recuperados. A missão falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 9] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 807,
    text: "Você ajuda Cipher a decifrar o arquivo 'Projeto Ragnarok'. Ele revela ser um plano da S.M.A. para criar um exército de Kazuyas controlados mentalmente. É uma descoberta aterrorizante.",
    options: [
      StoryOption(text: "Proteger Cipher a todo custo", next: 801, icon: "user-shield", color: "blue"),
      StoryOption(text: "[Fim do Capítulo 9] Próximo Capítulo", next: 900, icon: "redo", color: "blue"),
    ],
  ),

  // Capítulo 10: O Confronto Final
  StorySegment(
    id: 900,
    text: "Com as informações do 'Projeto Ragnarok', a Resistência se prepara para o confronto final. A S.M.A. está prestes a ativar seu exército de Kazuyas controlados. Vocês devem detê-los antes que seja tarde demais. A batalha acontecerá na principal base da S.M.A.",
    options: [
      StoryOption(text: "Atacar a base de frente", next: 901, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Infiltrar-se na base e desativar o Projeto Ragnarok", next: 902, icon: "eye-slash", color: "blue"),
      StoryOption(text: "Criar uma distração massiva para a S.M.A.", next: 903, icon: "fire", color: "purple"),
    ],
  ),
  StorySegment(
    id: 901,
    text: "Vocês atacam a base de frente, mas a S.M.A. está preparada. Seu exército de Kazuyas controlados é ativado e vocês são esmagados. O mundo cai sob o controle da S.M.A. A Resistência falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 10] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 902,
    text: "Vocês se infiltram na base, movendo-se pelas sombras. O objetivo é chegar ao centro de controle do Projeto Ragnarok e desativá-lo. O caminho é cheio de perigos.",
    options: [
      StoryOption(text: "Evitar todos os confrontos", next: 904, icon: "running", color: "green"),
      StoryOption(text: "Lutar contra qualquer um que se oponha", next: 905, icon: "fist-raised", color: "red", isWrongChoice: true),
      StoryOption(text: "Usar seus poderes para abrir caminho", next: 906, icon: "bolt", color: "blue"),
    ],
  ),
  StorySegment(
    id: 903,
    text: "Vocês criam uma distração massiva, explodindo um dos prédios periféricos da base. As forças da S.M.A. se movem para investigar, abrindo uma janela para a infiltração.",
    options: [
      StoryOption(text: "Infiltrar-se na base e desativar o Projeto Ragnarok", next: 902, icon: "eye-slash", color: "blue"),
      StoryOption(text: "Atacar a base de frente", next: 901, icon: "fist-raised", color: "red", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 904,
    text: "Vocês evitam todos os confrontos, usando furtividade e inteligência. Vocês chegam ao centro de controle do Projeto Ragnarok sem serem detectados.",
    options: [
      StoryOption(text: "Desativar o Projeto Ragnarok", next: 907, icon: "hammer", color: "blue"),
      StoryOption(text: "Tentar reprogramar os Kazuyas controlados", next: 908, icon: "brain", color: "purple", isWrongChoice: true),
      StoryOption(text: "Procurar por mais informações", next: 909, icon: "search", color: "green", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 905,
    text: "Vocês lutam contra qualquer um que se oponha, mas o número de inimigos é esmagador. Vocês são dominados e o Projeto Ragnarok é ativado. A Resistência falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 10] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 906,
    text: "Você usa seus poderes para abrir caminho, superando as defesas da S.M.A. Vocês chegam ao centro de controle do Projeto Ragnarok, mas estão exaustos e feridos.",
    options: [
      StoryOption(text: "Desativar o Projeto Ragnarok", next: 907, icon: "hammer", color: "blue"),
      StoryOption(text: "Tentar reprogramar os Kazuyas controlados", next: 908, icon: "brain", color: "purple", isWrongChoice: true),
    ],
  ),
  StorySegment(
    id: 907,
    text: "Vocês desativam o Projeto Ragnarok. Os Kazuyas controlados são libertados e a S.M.A. entra em colapso. A Resistência venceu. O mundo está seguro, por enquanto.",
    options: [
      StoryOption(text: "[Fim do Jogo] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 908,
    text: "Você tenta reprogramar os Kazuyas controlados, mas o processo é complexo e leva tempo. A S.M.A. os intercepta e o Projeto Ragnarok é ativado. A Resistência falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 10] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
  StorySegment(
    id: 909,
    text: "Você procura por mais informações, mas perde tempo precioso. A S.M.A. os intercepta e o Projeto Ragnarok é ativado. A Resistência falhou.",
    options: [
      StoryOption(text: "[Fim do Capítulo 10] Jogar novamente", next: 1, icon: "redo", color: "blue"),
    ],
  ),
];


