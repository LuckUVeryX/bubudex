import 'package:flutter/painting.dart';

import '../../utils/utils.dart';

class Palette {
  // Poke type colors
  static const kBug = Color(0xff8cb230);
  static const kDark = Color(0xff58575f);
  static const kDragon = Color(0xff0f6ac0);
  static const kElectric = Color(0xffeed535);
  static const kFairy = Color(0xffed6ec7);
  static const kFighting = Color(0xffd04164);
  static const kFire = Color(0xfffd7d24);
  static const kFlying = Color(0xff748fc9);
  static const kGhost = Color(0xff556aae);
  static const kGrass = Color(0xff62b957);
  static const kGround = Color(0xffdd7748);
  static const kIce = Color(0xff61cec0);
  static const kNormal = Color(0xff9da0aa);
  static const kPoison = Color(0xffa552cc);
  static const kPsychic = Color(0xffea5d60);
  static const kRock = Color(0xffbaab82);
  static const kSteel = Color(0xff417d9a);
  static const kWater = Color(0xff4a90da);

  static Color getTypeColor(PokeTypes pokeType) {
    switch (pokeType) {
      case PokeTypes.bug:
        return kBug;
      case PokeTypes.dark:
        return kDark;
      case PokeTypes.dragon:
        return kDragon;
      case PokeTypes.electric:
        return kElectric;
      case PokeTypes.fairy:
        return kFairy;
      case PokeTypes.fighting:
        return kFighting;
      case PokeTypes.fire:
        return kFire;
      case PokeTypes.flying:
        return kFlying;
      case PokeTypes.ghost:
        return kGhost;
      case PokeTypes.grass:
        return kGrass;
      case PokeTypes.ground:
        return kGround;
      case PokeTypes.ice:
        return kIce;
      case PokeTypes.normal:
        return kNormal;
      case PokeTypes.poison:
        return kPoison;
      case PokeTypes.psychic:
        return kPsychic;
      case PokeTypes.rock:
        return kRock;
      case PokeTypes.steel:
        return kSteel;
      case PokeTypes.water:
        return kWater;
    }
  }

  // Poke background type colors
  static const kBackgroundBug = Color(0xff88d674);
  static const kBackgroundDark = Color(0xff6f6e78);
  static const kBackgroundDragon = Color(0xff7383b9);
  static const kBackgroundElectric = Color(0xfff2cb55);
  static const kBackgroundFairy = Color(0xffeba8c3);
  static const kBackgroundFighting = Color(0xffeb4871);
  static const kBackgroundFire = Color(0xffffa756);
  static const kBackgroundFlying = Color(0xff83a2e3);
  static const kBackgroundGhost = Color(0xff8571be);
  static const kBackgroundGrass = Color(0xff8bbe8a);
  static const kBackgroundGround = Color(0xfff78551);
  static const kBackgroundIce = Color(0xff91d8df);
  static const kBackgroundNormal = Color(0xffb5b9c4);
  static const kBackgroundPoison = Color(0xff9f6e97);
  static const kBackgroundPsychic = Color(0xffff6568);
  static const kBackgroundRock = Color(0xffd4c294);
  static const kBackgroundSteel = Color(0xff4c91b2);
  static const kBackgroundWater = Color(0xff58abf6);

  static Color getBackgroundTypeColor(PokeTypes pokeType) {
    switch (pokeType) {
      case PokeTypes.bug:
        return kBackgroundBug;
      case PokeTypes.dark:
        return kBackgroundDark;
      case PokeTypes.dragon:
        return kBackgroundDragon;
      case PokeTypes.electric:
        return kBackgroundElectric;
      case PokeTypes.fairy:
        return kBackgroundFairy;
      case PokeTypes.fighting:
        return kBackgroundFighting;
      case PokeTypes.fire:
        return kBackgroundFire;
      case PokeTypes.flying:
        return kBackgroundFlying;
      case PokeTypes.ghost:
        return kBackgroundGhost;
      case PokeTypes.grass:
        return kBackgroundGrass;
      case PokeTypes.ground:
        return kBackgroundGround;
      case PokeTypes.ice:
        return kBackgroundIce;
      case PokeTypes.normal:
        return kBackgroundNormal;
      case PokeTypes.poison:
        return kBackgroundPoison;
      case PokeTypes.psychic:
        return kBackgroundPsychic;
      case PokeTypes.rock:
        return kBackgroundRock;
      case PokeTypes.steel:
        return kBackgroundSteel;
      case PokeTypes.water:
        return kBackgroundWater;
    }
  }

  static Color getHeightColor(PokeHeight pokeHeight) {
    switch (pokeHeight) {
      case PokeHeight.short:
        return kShortHeight;
      case PokeHeight.medium:
        return kMediumHeight;
      case PokeHeight.tall:
        return kTallHeight;
    }
  }

  static Color getWeightColor(PokeWeight pokeWeight) {
    switch (pokeWeight) {
      case PokeWeight.light:
        return kLightWeight;
      case PokeWeight.normal:
        return kNormalWeight;
      case PokeWeight.heavy:
        return kHeavyWeight;
    }
  }

  // Height colors
  static const kShortHeight = Color(0xffffc5e6);
  static const kMediumHeight = Color(0xffaebfd7);
  static const kTallHeight = Color(0xffaaacb8);

  // Weight colors
  static const kLightWeight = Color(0xff99cd7c);
  static const kNormalWeight = Color(0xff57b2dc);
  static const kHeavyWeight = Color(0xff5a92a5);

  // Background colors
  static const kWhite = Color(0xffffffff);
  static const kDefaultInput = Color(0xfff2f2f2);
  static const kPressedInput = Color(0xffe2e2e2);
  static const kModal = Color(0x40000000);

  // Text colors
  static const kTextNumber = Color(0x9917171B);

  // TextField Colors
  static const kDefaultField = Color(0xfff2f2f2);
}

class FilterColor {
  Color background;
  Color icon;

  FilterColor({required this.background, required this.icon});
}
