import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kazuya/models/character.dart';

class CharacterCreationScreen extends StatefulWidget {
  final ValueChanged<Character> onCreateCharacter;

  const CharacterCreationScreen({super.key, required this.onCreateCharacter});

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

  @override
  Widget build(BuildContext context) {
    // You should replace this with your actual UI code.
    // Here is a minimal placeholder to resolve the error:
    return Scaffold(
      appBar: AppBar(title: const Text('Criação de Personagem')),
      body: Center(child: Text('Construa sua UI aqui!')),
    );
  }

  void _updateCharacterClass() {
    setState(() {
      switch (_selectedClass) {
        case 'beta':
          _stats = {'strength': 15, 'speed': 10, 'psychic': 3, 'fear': 8};
          break;
        case 'alpha':
          _stats = {'strength': 8, 'speed': 12, 'psychic': 15, 'fear': 10};
          break;
        case 'sigma':
          _stats = {'strength': 10, 'speed': 10, 'psychic': 18, 'fear': 15};
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

  // ... (O restante do build e métodos de UI permanecem os mesmos)

  Widget _buildClassSelection(
    String classValue,
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    final bool isSelected = _selectedClass == classValue;
    return Flexible(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedClass = classValue;
            _updateCharacterClass();
          });
        },
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: isSelected ? color : Colors.grey[700]!,
              width: isSelected ? 3 : 2,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: color.withOpacity(0.4),
                      blurRadius: 12,
                      spreadRadius: 3,
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
                  fontSize: 18,
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

  // ... (buildStatRow e outros métodos de UI permanecem)

  // MÉTODOS ATUALIZADOS COM A NOVA LORE
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
    return _getAbilityBorderColor();
  }

  IconData _getAbilityIcon() {
    switch (_selectedClass) {
      case 'beta':
        return FontAwesomeIcons.fistRaised;
      case 'alpha':
        return FontAwesomeIcons.brain;
      case 'sigma':
        return FontAwesomeIcons.infinity;
      default:
        return FontAwesomeIcons.question;
    }
  }

  String _getAbilityName() {
    switch (_selectedClass) {
      case 'beta':
        return 'Fúria Beta';
      case 'alpha':
        return 'Mente Dominante';
      case 'sigma':
        return 'Vontade do Sigma';
      default:
        return 'Habilidade Desconhecida';
    }
  }

  String _getAbilityDescription() {
    switch (_selectedClass) {
      case 'beta':
        return 'Canaliza o ódio em força e velocidade brutas, tornando-se uma imparável força da natureza.';
      case 'alpha':
        return 'Combina proeza física com poder psíquico para dominar a mente e o corpo de seus oponentes.';
      case 'sigma':
        return 'O poder de um Sigma é limitado apenas por sua imaginação. Altera a realidade ao seu redor.';
      default:
        return 'Nenhuma descrição disponível.';
    }
  }

  // O restante do código da classe (build, etc.) não foi alterado e pode ser omitido por brevidade.
  // ...
  // Cole o restante do código original de character_creation_screen.dart aqui
}
