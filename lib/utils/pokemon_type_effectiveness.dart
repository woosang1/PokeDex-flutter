class PokemonTypeEffectiveness {
  static const Map<String, Map<String, double>> _typeEffectiveness = {
    'normal': {
      'fighting': 2.0,
      'ghost': 0.0,
    },
    'fire': {
      'fire': 0.5,
      'water': 2.0,
      'grass': 0.5,
      'ice': 0.5,
      'ground': 2.0,
      'bug': 0.5,
      'rock': 2.0,
      'dragon': 0.5,
      'steel': 0.5,
    },
    'water': {
      'fire': 0.5,
      'water': 0.5,
      'electric': 2.0,
      'grass': 2.0,
      'ice': 0.5,
      'steel': 0.5,
    },
    'electric': {
      'electric': 0.5,
      'flying': 0.5,
      'ground': 2.0,
      'steel': 0.5,
    },
    'grass': {
      'fire': 2.0,
      'water': 0.5,
      'electric': 0.5,
      'grass': 0.5,
      'ice': 2.0,
      'poison': 2.0,
      'ground': 0.5,
      'flying': 2.0,
      'bug': 2.0,
    },
    'ice': {
      'fire': 2.0,
      'ice': 0.5,
      'fighting': 2.0,
      'rock': 2.0,
      'steel': 2.0,
    },
    'fighting': {
      'flying': 2.0,
      'poison': 2.0,
      'psychic': 2.0,
      'bug': 0.5,
      'rock': 0.5,
      'dark': 0.5,
      'steel': 2.0,
      'fairy': 2.0,
    },
    'poison': {
      'grass': 0.5,
      'fighting': 0.5,
      'poison': 0.5,
      'ground': 2.0,
      'psychic': 2.0,
      'bug': 0.5,
      'fairy': 0.5,
    },
    'ground': {
      'water': 2.0,
      'electric': 0.0,
      'grass': 2.0,
      'ice': 2.0,
      'poison': 0.5,
      'rock': 0.5,
    },
    'flying': {
      'electric': 2.0,
      'grass': 0.5,
      'ice': 2.0,
      'fighting': 0.5,
      'bug': 0.5,
      'rock': 2.0,
    },
    'psychic': {
      'fighting': 0.5,
      'poison': 2.0,
      'psychic': 0.5,
      'dark': 2.0,
      'steel': 0.5,
    },
    'bug': {
      'fire': 2.0,
      'grass': 0.5,
      'fighting': 0.5,
      'poison': 2.0,
      'flying': 2.0,
      'psychic': 2.0,
      'ghost': 0.5,
      'dark': 2.0,
      'steel': 0.5,
      'fairy': 0.5,
    },
    'rock': {
      'normal': 0.5,
      'fire': 0.5,
      'water': 2.0,
      'grass': 2.0,
      'fighting': 2.0,
      'poison': 0.5,
      'ground': 2.0,
      'flying': 0.5,
      'steel': 2.0,
    },
    'ghost': {
      'normal': 0.0,
      'fighting': 0.0,
      'poison': 0.5,
      'bug': 0.5,
      'ghost': 2.0,
      'dark': 2.0,
    },
    'dragon': {
      'fire': 0.5,
      'water': 0.5,
      'electric': 0.5,
      'grass': 0.5,
      'ice': 2.0,
      'dragon': 2.0,
      'steel': 0.5,
      'fairy': 2.0,
    },
    'dark': {
      'fighting': 2.0,
      'psychic': 0.0,
      'bug': 2.0,
      'ghost': 0.5,
      'dark': 0.5,
      'fairy': 2.0,
    },
    'steel': {
      'normal': 0.5,
      'fire': 2.0,
      'water': 0.5,
      'electric': 0.5,
      'ice': 0.5,
      'fighting': 2.0,
      'poison': 0.0,
      'ground': 2.0,
      'flying': 0.5,
      'psychic': 0.5,
      'bug': 0.5,
      'rock': 0.5,
      'dragon': 0.5,
      'steel': 0.5,
      'fairy': 0.5,
    },
    'fairy': {
      'fire': 0.5,
      'fighting': 0.5,
      'poison': 2.0,
      'dragon': 0.0,
      'dark': 0.5,
      'steel': 2.0,
    },
  };

  static List<String> getStrongAgainst(String defendingType) {
    final List<String> strongTypes = [];
    _typeEffectiveness.forEach((attackingType, effectiveness) {
      if (effectiveness.containsKey(defendingType)) {
        final effectivenessValue = effectiveness[defendingType]!;
        if (effectivenessValue > 1.0) {
          strongTypes.add(attackingType);
        }
      }
    });
    return strongTypes;
  }

  static List<String> getWeakAgainst(String defendingType) {
    final List<String> weakTypes = [];
    _typeEffectiveness.forEach((attackingType, effectiveness) {
      if (effectiveness.containsKey(defendingType)) {
        final effectivenessValue = effectiveness[defendingType]!;
        if (effectivenessValue < 1.0 && effectivenessValue > 0.0) {
          weakTypes.add(attackingType);
        }
      }
    });
    return weakTypes;
  }

  static List<String> getNoEffectAgainst(String defendingType) {
    final List<String> noEffectTypes = [];
    _typeEffectiveness.forEach((attackingType, effectiveness) {
      if (effectiveness.containsKey(defendingType)) {
        final effectivenessValue = effectiveness[defendingType]!;
        if (effectivenessValue == 0.0) {
          noEffectTypes.add(attackingType);
        }
      }
    });
    return noEffectTypes;
  }

  static double getEffectiveness(String attackingType, String defendingType) {
    return _typeEffectiveness[attackingType]?[defendingType] ?? 1.0;
  }

  static String getEffectivenessDescription(double effectiveness) {
    if (effectiveness == 0.0) {
      return '효과 없음';
    } else if (effectiveness < 1.0) {
      return '효과가 별로';
    } else if (effectiveness == 1.0) {
      return '보통';
    } else {
      return '효과가 굉장함';
    }
  }
}
