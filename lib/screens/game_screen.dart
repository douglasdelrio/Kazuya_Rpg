import 'package:flutter/material.dart';
import 'package:kazuya/models/character.dart';
import 'package:kazuya/models/story_segment.dart';
import 'package:kazuya/data/game_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameScreen extends StatefulWidget {
  final Character character;

  const GameScreen({Key? key, required this.character}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late StorySegment _currentSegment;
  List<int> _history = []; // To keep track of previous segments for navigation

  // Character stats (can be expanded)
  int _hp = 100;
  int _energy = 50;
  int _experience = 0;

  @override
  void initState() {
    super.initState();
    _currentSegment = storyData.firstWhere((segment) => segment.id == 1);
    _history.add(1);
  }

  void _handleOptionSelected(StoryOption option) {
    setState(() {
      if (option.isWrongChoice) {
        if (_history.length > 1) {
          _history.removeLast(); // Remove current segment from history
          int previousSegmentId =
              _history.last; // Get the actual previous question
          _currentSegment = storyData.firstWhere(
            (s) => s.id == previousSegmentId,
          );
        } else {
          // Cannot go back further, stay on current or go to start
          _currentSegment = storyData.firstWhere((s) => s.id == 1);
          _history = [1];
        }
      } else {
        // This part is for regular options, not chapter end buttons
        final nextSegment = storyData.firstWhere(
          (segment) => segment.id == option.next,
          orElse: () => _currentSegment,
        );
        _currentSegment = nextSegment;
        if (!_history.contains(nextSegment.id)) {
          _history.add(nextSegment.id);
        } else {
          // If we are going to an already visited segment (not the immediate previous one), clear history after it.
          int lastIndex = _history.indexOf(nextSegment.id);
          if (lastIndex < _history.length - 1) {
            _history = _history.sublist(0, lastIndex + 1);
          }
        }
      }
    });
  }

  bool _isChapterEndSegment(StorySegment segment) {
    return segment.options.any(
      (option) =>
          option.text.contains('[Fim do Capítulo') ||
          option.text.contains('[Fim do Jogo]'),
    );
  }

  void _goToNextChapter() {
    setState(() {
      final currentChapterEndOption = _currentSegment.options.firstWhere(
        (option) =>
            option.text.contains('[Fim do Capítulo') ||
            option.text.contains('[Fim do Jogo]'),
      );
      // Ensure the next segment ID is valid before attempting to find it
      final int nextSegmentId = currentChapterEndOption.next;
      _currentSegment = storyData.firstWhere(
        (segment) => segment.id == nextSegmentId,
        orElse: () => storyData.firstWhere(
          (s) => s.id == 1,
        ), // Fallback to game start if ID not found
      );
      _history = [_currentSegment.id]; // Reset history for new chapter
    });
  }

  IconData _getIconForString(String iconName) {
    switch (iconName) {
      case "search":
        return FontAwesomeIcons.search;
      case "door-open":
        return FontAwesomeIcons.doorOpen;
      case "hand-paper":
        return FontAwesomeIcons.handPaper;
      case "door-closed":
        return FontAwesomeIcons.doorClosed;
      case "window-restore":
        return FontAwesomeIcons.windowRestore;
      case "lightbulb":
        return FontAwesomeIcons.lightbulb;
      case "bed":
        return FontAwesomeIcons.bed;
      case "fist-raised":
        return FontAwesomeIcons.fistRaised;
      case "hourglass-half":
        return FontAwesomeIcons.hourglassHalf;
      case "bolt":
        return FontAwesomeIcons.bolt;
      case "undo":
        return FontAwesomeIcons.undo;
      case "hammer":
        return FontAwesomeIcons.hammer;
      case "moon":
        return FontAwesomeIcons.moon;
      case "pencil-alt":
        return FontAwesomeIcons.pencilAlt;
      case "user-md":
        return FontAwesomeIcons.userMd;
      case "trash":
        return FontAwesomeIcons.trash;
      case "running":
        return FontAwesomeIcons.running;
      case "video-slash":
        return FontAwesomeIcons.videoSlash;
      case "brain":
        return FontAwesomeIcons.brain;
      case "user-shield":
        return FontAwesomeIcons.userShield;
      case "eye-slash":
        return FontAwesomeIcons.eyeSlash;
      case "question":
        return FontAwesomeIcons.question;
      case "head-side-cough":
        return FontAwesomeIcons.headSideCough;
      case "flask":
        return FontAwesomeIcons.flask;
      case "lock":
        return FontAwesomeIcons.lock;
      case "users":
        return FontAwesomeIcons.users;
      case "fire":
        return FontAwesomeIcons.fire;
      case "hand-peace":
        return FontAwesomeIcons.handPeace;
      case "theater-masks":
        return FontAwesomeIcons.theaterMasks;
      case "grin-tongue-wink":
        return FontAwesomeIcons.grinTongueWink;
      case "question-circle":
        return FontAwesomeIcons.questionCircle;
      case "walking":
        return FontAwesomeIcons.walking;
      case "backpack":
        return FontAwesomeIcons.shoppingBag;
      case "user-clock":
        return FontAwesomeIcons.userClock;
      case "redo":
        return FontAwesomeIcons.redo;
      case "dumbbell":
        return FontAwesomeIcons.dumbbell;
      case "star":
        return FontAwesomeIcons.star;
      case "birthdayCake":
        return FontAwesomeIcons.birthdayCake;
      case "map":
        return FontAwesomeIcons.map;
      case "wind":
        return FontAwesomeIcons.wind;
      case "phone":
        return FontAwesomeIcons.phone;
      case "skull":
        return FontAwesomeIcons.skull;
      default:
        return FontAwesomeIcons.questionCircle;
    }
  }

  Color _getColorForString(String colorName) {
    switch (colorName.toLowerCase()) {
      case "blue":
        return Colors.blueAccent;
      case "green":
        return Colors.greenAccent;
      case "purple":
        return Colors.purpleAccent;
      case "red":
        return Colors.redAccent;
      case "gray":
        return Colors.grey;
      default:
        return Colors.white;
    }
  }

  Color _getCharacterClassColor() {
    switch (widget.character.characterClass.toLowerCase()) {
      case "guerreiro":
        return Colors.redAccent;
      case "mago":
        return Colors.blueAccent;
      case "ladino":
        return Colors.greenAccent;
      default:
        return Colors.grey;
    }
  }

  Widget _buildStatDisplay(
    String label,
    int currentValue,
    int maxValue,
    Color color,
    IconData icon,
  ) {
    double percentage = currentValue / maxValue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FaIcon(icon, color: color, size: 14),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                '$currentValue/$maxValue',
                style: TextStyle(color: Colors.grey[300], fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: percentage,
            backgroundColor: Colors.grey[700],
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ],
      ),
    );
  }

  Widget _buildAttributeRow(
    String label,
    String value,
    IconData icon, {
    Color? color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          FaIcon(icon, color: color ?? Colors.grey[400], size: 16),
          const SizedBox(width: 10),
          Text(
            '$label: ',
            style: TextStyle(color: Colors.grey[300], fontSize: 14),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCharacterSummaryPanel() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[900]!.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.character.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: _getCharacterClassColor().withOpacity(0.8),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              widget.character.characterClass.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildStatDisplay(
            "HP",
            _hp,
            100,
            Colors.redAccent,
            FontAwesomeIcons.heartbeat,
          ),
          _buildStatDisplay(
            "Energia",
            _energy,
            50,
            Colors.blueAccent,
            FontAwesomeIcons.bolt,
          ),
          _buildStatDisplay(
            "Experiência",
            _experience,
            100,
            Colors.purpleAccent,
            FontAwesomeIcons.star,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0f0f1a),
      appBar: AppBar(
        backgroundColor: Colors.grey[900]!.withOpacity(0.8),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blueAccent, Colors.purpleAccent],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.character.name.isNotEmpty
                    ? widget.character.name[0].toUpperCase()
                    : "K",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              "KAZUYA RPG",
              style: TextStyle(
                fontFamily: "Playfair Display",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cog, color: Colors.white70),
            onPressed: () {
              /* TODO: Settings */
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Story Text
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.only(bottom: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[900]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey[800]!),
                    ),
                    child: Text(
                      _currentSegment.text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                  // Story Options
                  ListView.builder(
                    shrinkWrap: true, // Important for nested list views
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable scrolling for inner list
                    itemCount: _currentSegment.options.length,
                    itemBuilder: (context, index) {
                      final option = _currentSegment.options[index];
                      // Hide chapter end options from the main list, they are handled by the button
                      if (option.text.contains('[Fim do Capítulo') ||
                          option.text.contains('[Fim do Jogo]')) {
                        return const SizedBox.shrink();
                      }
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        color: Colors.grey[800]!.withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: FaIcon(
                            _getIconForString(option.icon),
                            color: _getColorForString(option.color),
                            size: 20,
                          ),
                          title: Text(
                            option.text,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () => _handleOptionSelected(option),
                          tileColor: Colors.transparent,
                          hoverColor: _getColorForString(
                            option.color,
                          ).withOpacity(0.2),
                        ),
                      );
                    },
                  ),
                  if (_isChapterEndSegment(_currentSegment)) ...[
                    const SizedBox(height: 24),
                    Center(
                      child: ElevatedButton(
                        onPressed: _goToNextChapter, // Use the new handler
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blueAccent, // Cor de fundo do botão
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ), // Preenchimento
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Borda arredondada
                          ),
                        ),
                        child: Text(
                          _currentSegment.options
                                  .firstWhere(
                                    (option) =>
                                        option.text.contains(
                                          '[Fim do Capítulo',
                                        ) ||
                                        option.text.contains('[Fim do Jogo]'),
                                  )
                                  .text
                                  .contains('[Fim do Jogo]')
                              ? 'Jogar Novamente'
                              : 'Próximo Capítulo',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 24),
                  // Character Panel Summary for Mobile (Optional, can be expanded)
                  _buildCharacterSummaryPanel(),
                ],
              ),
            );
          } else {
            // Desktop/Tablet layout
            return Row(
              children: [
                // Character Panel (Left Side)
                Container(
                  width: 280,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[900]!.withOpacity(0.8),
                    border: Border(right: BorderSide(color: Colors.grey[800]!)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.blueAccent, Colors.purpleAccent],
                          ),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 2,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          widget.character.name.isNotEmpty
                              ? widget.character.name[0].toUpperCase()
                              : "U",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        widget.character.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: _getCharacterClassColor().withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          widget.character.characterClass.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      _buildStatDisplay(
                        "HP",
                        _hp,
                        100,
                        Colors.redAccent,
                        FontAwesomeIcons.heartbeat,
                      ),
                      _buildStatDisplay(
                        "Energia",
                        _energy,
                        50,
                        Colors.blueAccent,
                        FontAwesomeIcons.bolt,
                      ),
                      _buildStatDisplay(
                        "Experiência",
                        _experience,
                        100,
                        Colors.purpleAccent,
                        FontAwesomeIcons.star,
                      ),
                      const Divider(color: Colors.grey, height: 40),
                      Text(
                        "Atributos",
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildAttributeRow(
                        "Idade",
                        widget.character.age.toString(),
                        FontAwesomeIcons.birthdayCake,
                      ),
                      _buildAttributeRow(
                        "Força",
                        widget.character.stats["strength"].toString(),
                        FontAwesomeIcons.dumbbell,
                        color: Colors.blue.shade300,
                      ),
                      _buildAttributeRow(
                        "Velocidade",
                        widget.character.stats["speed"].toString(),
                        FontAwesomeIcons.running,
                        color: Colors.green.shade300,
                      ),
                      _buildAttributeRow(
                        "Psíquico",
                        widget.character.stats["psychic"].toString(),
                        FontAwesomeIcons.brain,
                        color: Colors.purple.shade300,
                      ),
                      _buildAttributeRow(
                        "Medo",
                        widget.character.stats["fear"].toString(),
                        FontAwesomeIcons.skull,
                        color: Colors.red.shade300,
                      ),
                      // TODO: Add Habilidades and Inventário sections
                    ],
                  ),
                ),

                // Game Content (Right Side)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Story Text
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.only(bottom: 24.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[900]!.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(color: Colors.grey[800]!),
                          ),
                          child: Text(
                            _currentSegment.text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ),
                        // Story Options
                        Expanded(
                          child: ListView.builder(
                            itemCount: _currentSegment.options.length,
                            itemBuilder: (context, index) {
                              final option = _currentSegment.options[index];
                              // Hide chapter end options from the main list, they are handled by the button
                              if (option.text.contains('[Fim do Capítulo') ||
                                  option.text.contains('[Fim do Jogo]')) {
                                return const SizedBox.shrink();
                              }
                              return Card(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                color: Colors.grey[800]!.withOpacity(0.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: FaIcon(
                                    _getIconForString(option.icon),
                                    color: _getColorForString(option.color),
                                    size: 20,
                                  ),
                                  title: Text(
                                    option.text,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onTap: () => _handleOptionSelected(option),
                                  tileColor: Colors.transparent,
                                  hoverColor: _getColorForString(
                                    option.color,
                                  ).withOpacity(0.2),
                                ),
                              );
                            },
                          ),
                        ),
                        if (_isChapterEndSegment(_currentSegment)) ...[
                          const SizedBox(height: 24),
                          Center(
                            child: ElevatedButton(
                              onPressed:
                                  _goToNextChapter, // Use the new handler
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blueAccent, // Cor de fundo do botão
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ), // Preenchimento
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), // Borda arredondada
                                ),
                              ),
                              child: Text(
                                _currentSegment.options
                                        .firstWhere(
                                          (option) =>
                                              option.text.contains(
                                                '[Fim do Capítulo',
                                              ) ||
                                              option.text.contains(
                                                '[Fim do Jogo]',
                                              ),
                                        )
                                        .text
                                        .contains('[Fim do Jogo]')
                                    ? 'Jogar Novamente'
                                    : 'Próximo Capítulo',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
