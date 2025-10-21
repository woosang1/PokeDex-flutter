import 'package:flutter/material.dart';
import 'dart:math' as math;

class ParticleBackground extends StatefulWidget {
  final Widget child;
  final Color particleColor;
  final int particleCount;

  const ParticleBackground({
    super.key,
    required this.child,
    this.particleColor = Colors.white,
    this.particleCount = 20,
  });

  @override
  State<ParticleBackground> createState() => _ParticleBackgroundState();
}

class _ParticleBackgroundState extends State<ParticleBackground>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<Particle> _particles;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    );
    
    _particles = List.generate(
      widget.particleCount,
      (index) => Particle.random(),
    );
    
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        widget.child,
        Positioned.fill(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: ParticlePainter(
                  particles: _particles,
                  animationValue: _controller.value,
                  particleColor: widget.particleColor,
                ),
                size: Size.infinite,
              );
            },
          ),
        ),
      ],
    );
  }
}

class Particle {
  double x;
  double y;
  double size;
  double speed;
  double opacity;
  double angle;

  Particle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
    required this.angle,
  });

  factory Particle.random() {
    final random = math.Random();
    return Particle(
      x: random.nextDouble(),
      y: random.nextDouble(),
      size: random.nextDouble() * 3 + 1,
      speed: random.nextDouble() * 0.5 + 0.1,
      opacity: random.nextDouble() * 0.5 + 0.2,
      angle: random.nextDouble() * 2 * math.pi,
    );
  }
}

class ParticlePainter extends CustomPainter {
  final List<Particle> particles;
  final double animationValue;
  final Color particleColor;

  ParticlePainter({
    required this.particles,
    required this.animationValue,
    required this.particleColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = particleColor
      ..style = PaintingStyle.fill;

    for (final particle in particles) {
      final x = (particle.x + particle.speed * animationValue) % 1.0;
      final y = (particle.y + particle.speed * animationValue * 0.5) % 1.0;
      
      paint.color = particleColor.withOpacity(
        particle.opacity * (0.5 + 0.5 * math.sin(animationValue * 2 * math.pi)),
      );
      
      canvas.drawCircle(
        Offset(x * size.width, y * size.height),
        particle.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FloatingPokemonCard extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const FloatingPokemonCard({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 3),
  });

  @override
  State<FloatingPokemonCard> createState() => _FloatingPokemonCardState();
}

class _FloatingPokemonCardState extends State<FloatingPokemonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 10 * math.sin(_animation.value * 2 * math.pi)),
          child: widget.child,
        );
      },
    );
  }
}

class GlowingContainer extends StatelessWidget {
  final Widget child;
  final Color glowColor;
  final double blurRadius;
  final EdgeInsets padding;

  const GlowingContainer({
    super.key,
    required this.child,
    required this.glowColor,
    this.blurRadius = 20,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: glowColor.withOpacity(0.3),
            blurRadius: blurRadius,
            spreadRadius: 2,
            offset: const Offset(0, 0),
          ),
          BoxShadow(
            color: glowColor.withOpacity(0.1),
            blurRadius: blurRadius * 2,
            spreadRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}

class TypeEffectivenessChart extends StatelessWidget {
  final String pokemonType;
  final List<String> strongAgainst;
  final List<String> weakAgainst;
  final List<String> noEffectAgainst;

  const TypeEffectivenessChart({
    super.key,
    required this.pokemonType,
    required this.strongAgainst,
    required this.weakAgainst,
    required this.noEffectAgainst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.9),
            Colors.white.withOpacity(0.7),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Strong Against
          Expanded(
            child: _buildEffectivenessSection(
              '강함',
              strongAgainst,
              Colors.red.shade400,
              Icons.trending_up,
            ),
          ),
          const SizedBox(width: 16),
          // Weak Against
          Expanded(
            child: _buildEffectivenessSection(
              '약함',
              weakAgainst,
              Colors.blue.shade400,
              Icons.trending_down,
            ),
          ),
          const SizedBox(width: 16),
          // No Effect
          Expanded(
            child: _buildEffectivenessSection(
              '무효',
              noEffectAgainst,
              Colors.grey.shade400,
              Icons.block,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEffectivenessSection(String title, List<String> types, Color color, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '${types.length}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '타입',
          style: TextStyle(
            fontSize: 10,
            color: color.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
