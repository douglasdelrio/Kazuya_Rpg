import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kazuya/models/character.dart';

class CharacterCreationScreen extends StatefulWidget {
  final ValueChanged<Character> onCreateCharacter;

  const CharacterCreationScreen({Key? key, required this.onCreateCharacter})
    : super(key: key);

  @override
  State<CharacterCreationScreen> createState() =>
      _CharacterCreationScreenState();
}

class _CharacterCreationScreenState extends State<CharacterCreationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController(
    text: '25',
  );
  final TextEditingController _backgroundController = TextEditingController();

  String _selectedClass = 'beta';
  Map<String, int> _stats = {};

  @override
  void initState() {
    super.initState();
    _updateCharacterClass(); // Set initial stats based on default class
  }

  void _updateCharacterClass() {
    setState(() {
      switch (_selectedClass) {
        case 'beta':
          _stats = {'strength': 15, 'speed': 10, 'psychic': 3, 'fear': 5};
          break;
        case 'alpha':
          _stats = {'strength': 8, 'speed': 12, 'psychic': 15, 'fear': 8};
          break;
        case 'sigma':
          _stats = {'strength': 10, 'speed': 8, 'psychic': 10, 'fear': 15};
          break;
      }
    });
  }

  void _createCharacter() {
    if (_nameController.text.isEmpty || _ageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Por favor, preencha pelo menos o nome e idade do personagem.',
          ),
        ),
      );
      return;
    }

    final character = Character(
      name: _nameController.text,
      age: int.parse(_ageController.text),
      characterClass: _selectedClass,
      background: _backgroundController.text,
      stats: _stats,
    );

    widget.onCreateCharacter(character);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image and Overlays
          Positioned.fill(
            child: Image.network(
              'https://images.unsplash.com/photo-1534447677768-be436bb09401?q=80&w=1000',
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0x4D1A237E), // from-blue-900/30
                    Color(0x4D4A148C), // via-purple-900/30
                    Color(0x4D7F0000), // to-red-900/30
                  ],
                ),
              ),
            ),
          ),

          // Content
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'CRIAR SEU KAZUYA',
                          style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader =
                                  const LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF64B5F6), // blue-400
                                      Color(0xFF9C27B0), // purple-500
                                      Color(0xFFF44336), // red-500
                                    ],
                                  ).createShader(
                                    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Escolha seu caminho',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 48),

                  // Character Creation Form
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxWidth: 800),
                    padding: const EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[900]!.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                      border: Border.all(color: Colors.grey[800]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Character Info Section
                        Text(
                          'Informações do Personagem',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 32,
                        ),
                        TextField(
                          controller: _nameController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Nome do Personagem',
                            labelStyle: TextStyle(color: Colors.grey[300]),
                            hintText: 'Ex: Kazuya Silva',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            filled: true,
                            fillColor: Colors.grey[800],
                            prefixIcon: Icon(
                              FontAwesomeIcons.idCard,
                              color: Colors.grey[500],
                              size: 18,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Idade',
                            labelStyle: TextStyle(color: Colors.grey[300]),
                            hintText: '25',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            filled: true,
                            fillColor: Colors.grey[800],
                            prefixIcon: Icon(
                              FontAwesomeIcons.birthdayCake,
                              color: Colors.grey[500],
                              size: 18,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Class Selection
                        Text(
                          'Classe',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildClassSelection(
                              'beta',
                              FontAwesomeIcons.shieldAlt,
                              'Beta',
                              'Força física e resistência',
                              Colors.blueAccent,
                            ),
                            _buildClassSelection(
                              'alpha',
                              FontAwesomeIcons.brain,
                              'Alpha',
                              'Poderes psíquicos',
                              Colors.purpleAccent,
                            ),
                            _buildClassSelection(
                              'sigma',
                              FontAwesomeIcons.fire,
                              'Sigma',
                              'Manipulação da realidade',
                              Colors.redAccent,
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Background Story
                        TextField(
                          controller: _backgroundController,
                          maxLines: 4,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'História Pessoal',
                            labelStyle: TextStyle(color: Colors.grey[300]),
                            hintText: 'Como você descobriu seus poderes?',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            filled: true,
                            fillColor: Colors.grey[800],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 48),

                        // Stats Display Section
                        Text(
                          'Atributos',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 32,
                        ),
                        _buildStatRow(
                          'Força',
                          _stats['strength'] ?? 0,
                          20,
                          FontAwesomeIcons.dumbbell,
                          Colors.blueAccent,
                        ),
                        _buildStatRow(
                          'Velocidade',
                          _stats['speed'] ?? 0,
                          20,
                          FontAwesomeIcons.running,
                          Colors.greenAccent,
                        ),
                        _buildStatRow(
                          'Poder Psíquico',
                          _stats['psychic'] ?? 0,
                          20,
                          FontAwesomeIcons.brain,
                          Colors.purpleAccent,
                        ),
                        _buildStatRow(
                          'Medo Gerado',
                          _stats['fear'] ?? 0,
                          20,
                          FontAwesomeIcons.skull,
                          Colors.redAccent,
                        ),
                        const SizedBox(height: 24),

                        // Initial Ability
                        Text(
                          'Habilidade Inicial',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: _getAbilityBorderColor(),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: _getAbilityIconColor().withOpacity(
                                        0.3,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(
                                      _getAbilityIcon(),
                                      color: _getAbilityIconColor(),
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    _getAbilityName(),
                                    style: TextStyle(
                                      color: _getAbilityIconColor(),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _getAbilityDescription(),
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 48),

                        // Create Character Button
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: _createCharacter,
                            icon: const Icon(FontAwesomeIcons.bolt, size: 20),
                            label: const Text(
                              'DESPERTAR O KAZUYA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style:
                                ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 32,
                                    vertical: 16,
                                  ),
                                  backgroundColor: Colors
                                      .transparent, // Make button transparent to show gradient
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ).copyWith(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color>((
                                        Set<MaterialState> states,
                                      ) {
                                        if (states.contains(
                                          MaterialState.pressed,
                                        )) {
                                          return Colors.red[700]!.withOpacity(
                                            0.5,
                                          );
                                        }
                                        return Colors.transparent;
                                      }),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassSelection(
    String classValue,
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedClass = classValue;
            _updateCharacterClass();
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: _selectedClass == classValue ? color : Colors.grey[700]!,
              width: _selectedClass == classValue ? 3 : 2,
            ),
            boxShadow: _selectedClass == classValue
                ? [
                    BoxShadow(
                      color: color.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(
    String label,
    int value,
    int maxValue,
    IconData icon,
    Color color,
  ) {
    final double percentage = value / maxValue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      label,
                      style: TextStyle(color: Colors.grey[300], fontSize: 14),
                    ),
                    Text(
                      '$value/$maxValue',
                      style: TextStyle(color: color, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                LinearProgressIndicator(
                  value: percentage,
                  backgroundColor: Colors.grey[800],
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getAbilityBorderColor() {
    switch (_selectedClass) {
      case 'beta':
        return Colors.blueAccent;
      case 'alpha':
        return Colors.purpleAccent;
      case 'sigma':
        return Colors.redAccent;
      default:
        return Colors.grey;
    }
  }

  Color _getAbilityIconColor() {
    switch (_selectedClass) {
      case 'beta':
        return Colors.blueAccent;
      case 'alpha':
        return Colors.purpleAccent;
      case 'sigma':
        return Colors.redAccent;
      default:
        return Colors.grey;
    }
  }

  IconData _getAbilityIcon() {
    switch (_selectedClass) {
      case 'beta':
        return FontAwesomeIcons.bolt;
      case 'alpha':
        return FontAwesomeIcons.brain;
      case 'sigma':
        return FontAwesomeIcons.fire;
      default:
        return FontAwesomeIcons.question;
    }
  }

  String _getAbilityName() {
    switch (_selectedClass) {
      case 'beta':
        return 'Super Força';
      case 'alpha':
        return 'Telepatia';
      case 'sigma':
        return 'Manipulação da Realidade';
      default:
        return 'Habilidade Desconhecida';
    }
  }

  String _getAbilityDescription() {
    switch (_selectedClass) {
      case 'beta':
        return 'Dobra sua força física temporariamente em momentos de necessidade extrema.';
      case 'alpha':
        return 'Lê mentes de alvos próximos e pode influenciar pensamentos simples.';
      case 'sigma':
        return 'Altera a realidade em pequena escala por curtos períodos de tempo.';
      default:
        return 'Nenhuma descrição disponível.';
    }
  }
}
