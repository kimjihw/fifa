import 'dart:math';

class Enforce {
  final int nowEnforce;
  final double progress;

  Enforce(this.nowEnforce, this.progress);

  bool isResult() {
    final random = Random();
    switch (progress) {
      case 1:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 1;
        } else if (nowEnforce == 2)
          return random.nextDouble() <= 0.81;
        else if (nowEnforce == 3)
          return random.nextDouble() <= 0.64;
        else if (nowEnforce == 4)
          return random.nextDouble() <= 0.5;
        else if (nowEnforce == 5)
          return random.nextDouble() <= 0.26;
        else if (nowEnforce == 6)
          return random.nextDouble() <= 0.15;
        else if (nowEnforce == 7)
          return random.nextDouble() <= 0.07;
        else if (nowEnforce == 8)
          return random.nextDouble() <= 0.04;
        else if (nowEnforce == 9) return random.nextDouble() <= 0.02;
        break;
      case 0.98:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.98;
        } else if (nowEnforce == 2)
          return random.nextDouble() <= 0.7938;
        else if (nowEnforce == 3)
          return random.nextDouble() <= 0.6272;
        else if (nowEnforce == 4)
          return random.nextDouble() <= 0.49;
        else if (nowEnforce == 5)
          return random.nextDouble() <= 0.2548;
        else if (nowEnforce == 6)
          return random.nextDouble() <= 0.147;
        else if (nowEnforce == 7)
          return random.nextDouble() <= 0.0686;
        else if (nowEnforce == 8)
          return random.nextDouble() <= 0.0392;
        else if (nowEnforce == 9) return random.nextDouble() <= 0.0196;
        break;
      case 0.96:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.96;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.7776;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.6144;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.48;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2496;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.144;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0672;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0384;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0192;
        }
        break;
      case 0.94:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.94;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.7614;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.6016;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.47;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2444;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.141;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0658;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0376;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0188;
        }
        break;
      case 0.92:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.92;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.7452;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.5888;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.46;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2392;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.138;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0644;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0368;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0184;
        }
        break;
      case 0.9:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.9;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.729;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.576;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.45;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.234;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.135;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0626;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0352;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0176;
        }
        break;
      case 0.88:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.88;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.7128;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.5632;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.44;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2288;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.132;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0612;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0352;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0172;
        }
        break;
      case 0.86:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.86;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.6966;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.5504;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.43;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2236;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.129;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0598;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0344;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0172;
        }
        break;
      case 0.84:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.84;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.6804;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.5376;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.42;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2184;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.126;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0584;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0336;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0168;
        }
        break;
      case 0.82:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.82;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.6642;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.5248;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.41;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2132;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.123;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0568;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0328;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0164;
        }
        break;
      case 0.8:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.8;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.648;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.512;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.4;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.208;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.12;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0556;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.032;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.016;
        }
        break;
      case 0.78:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.78;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.6318;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4992;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.39;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.2028;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.117;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0544;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0312;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0156;
        }
        break;
      case 0.76:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.76;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.6156;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4864;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.38;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1976;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.114;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0528;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0304;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0152;
        }
        break;
      case 0.74:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.74;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5994;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4736;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.37;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1924;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.111;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0512;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0296;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0148;
        }
        break;
      case 0.72:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.72;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5832;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4608;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.36;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1872;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.108;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0496;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0288;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0144;
        }
        break;
      case 0.7:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.7;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.567;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.448;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.35;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.182;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.105;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0488;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.028;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.014;
        }
        break;
      case 0.68:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.68;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5508;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4352;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.34;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1768;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.102;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0472;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0272;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0136;
        }
        break;
      case 0.66:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.66;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5346;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4224;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.33;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1716;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.099;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0462;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0264;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0132;
        }
        break;
      case 0.64:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.64;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5184;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.4096;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.32;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1664;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.096;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0444;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0256;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0128;
        }
        break;
      case 0.62:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.62;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.5022;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3968;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.31;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1612;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.093;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0432;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0248;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0124;
        }
        break;
      case 0.6:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.6;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.486;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.384;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.3;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.156;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.09;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0418;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.024;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.012;
        }
        break;
      case 0.58:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.58;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.4698;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3712;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.29;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1508;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.087;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0404;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0232;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0116;
        }
        break;
      case 0.56:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.56;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.4536;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3584;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.28;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1456;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.084;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0388;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0224;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0112;
        }
        break;
      case 0.54:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.54;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.4374;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3456;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.27;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1404;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.081;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0376;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0216;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0108;
        }
        break;
      case 0.52:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.52;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.4212;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3328;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.26;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1352;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.078;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0364;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0208;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0104;
        }
        break;
      case 0.5:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.5;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.405;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.32;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.25;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.13;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.075;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0348;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.02;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.01;
        }
        break;
      case 0.48:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.48;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.3882;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.3072;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.24;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1248;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.072;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0332;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0192;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0096;
        }
        break;
      case 0.46:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.46;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.3726;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2944;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.23;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1196;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.069;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0322;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0184;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0092;
        }
        break;
      case 0.44:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.44;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.357;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2816;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.22;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1144;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.066;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0306;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0176;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0088;
        }
        break;
      case 0.42:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.42;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.3402;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2688;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.21;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.1092;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.063;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0292;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0168;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0084;
        }
        break;
      case 0.4:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.4;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.324;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.256;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.2;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.104;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.06;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0278;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.016;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.008;
        }
        break;
      case 0.38:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.38;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.3078;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2432;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.19;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0988;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.057;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0264;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0152;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0076;
        }
        break;
      case 0.36:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.36;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.2916;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2304;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.18;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0936;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.054;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.025;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0144;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0072;
        }
        break;
      case 0.34:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.34;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.2754;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2176;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.17;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0884;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.051;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0236;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0136;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0068;
        }
        break;
      case 0.32:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.32;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.2592;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.2048;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.16;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0832;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.048;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0222;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0128;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0064;
        }
        break;
      case 0.3:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.3;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.243;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.192;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.15;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.078;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.045;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0208;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.012;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.006;
        }
        break;
      case 0.28:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.28;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.2268;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1792;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.14;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0728;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.042;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0194;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0112;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0056;
        }
        break;
      case 0.26:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.26;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.2106;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1664;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.13;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0676;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.039;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0182;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0104;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0052;
        }
        break;
      case 0.24:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.24;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.1944;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1536;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.12;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0624;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.036;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0166;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0096;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0048;
        }
        break;
      case 0.22:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.22;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.1782;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1408;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.11;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0572;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.033;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0154;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0088;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0044;
        }
        break;
      case 0.2:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.2;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.162;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.128;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.1;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.052;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.03;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0139;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.008;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.004;
        }
        break;
      case 0.18:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.18;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.1458;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1152;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.09;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0468;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.027;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0124;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0072;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0036;
        }
        break;
      case 0.16:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.16;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.1296;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.1024;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.08;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0416;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.024;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0111;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0064;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0032;
        }
        break;
      case 0.14:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.14;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.1134;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0896;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.07;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0364;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.021;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0098;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0056;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0028;
        }
        break;
      case 0.12:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.12;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.0972;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0768;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.06;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0312;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.018;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0083;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0048;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0024;
        }
        break;
      case 0.1:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.1;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.081;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.064;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.05;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.026;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.015;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0069;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.004;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.002;
        }
        break;
      case 0.08:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.08;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.0648;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0512;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.04;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0208;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.012;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0056;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0032;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0016;
        }
        break;
      case 0.06:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.06;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.0486;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0384;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.03;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0156;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.009;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0042;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0024;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0012;
        }
        break;
      case 0.04:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.04;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.0324;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0256;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.02;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0104;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.006;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0028;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0016;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0008;
        }
        break;
      case 0.02:
        if (nowEnforce == 1) {
          return random.nextDouble() <= 0.02;
        } else if (nowEnforce == 2) {
          return random.nextDouble() <= 0.0162;
        } else if (nowEnforce == 3) {
          return random.nextDouble() <= 0.0128;
        } else if (nowEnforce == 4) {
          return random.nextDouble() <= 0.01;
        } else if (nowEnforce == 5) {
          return random.nextDouble() <= 0.0052;
        } else if (nowEnforce == 6) {
          return random.nextDouble() <= 0.003;
        } else if (nowEnforce == 7) {
          return random.nextDouble() <= 0.0014;
        } else if (nowEnforce == 8) {
          return random.nextDouble() <= 0.0008;
        } else if (nowEnforce == 9) {
          return random.nextDouble() <= 0.0004;
        }
        break;
      default:
        return false;
    }
    return false;
  }

  double enforcePercent() {
    switch(progress){
      case 1 :
        if (nowEnforce == 1){
          return 100;
        }
        else if (nowEnforce == 2){
          return 81;
        }
        else if (nowEnforce == 3){
          return 64;
        }
        else if (nowEnforce == 4){
          return 50;
        }
        else if (nowEnforce == 5){
          return 26;
        }
        else if (nowEnforce == 6){
          return 15;
        }
        else if (nowEnforce == 7){
          return 7;
        }
        else if (nowEnforce == 8){
          return 4;
        }
        else if (nowEnforce == 9){
          return 2;
        }
        break;
      case 0.98 :
        if (nowEnforce == 1){
          return 98;
        }
        else if (nowEnforce == 2){
          return 79.38;
        }
        else if (nowEnforce == 3){
          return 62.72;
        }
        else if (nowEnforce == 4){
          return 49;
        }
        else if (nowEnforce == 5){
          return 25.48;
        }
        else if (nowEnforce == 6){
          return 14.7;
        }
        else if (nowEnforce == 7){
          return 6.86;
        }
        else if (nowEnforce == 8){
          return 3.92;
        }
        else if (nowEnforce == 9){
          return 1.96;
        }
        break;
      case 0.96 :
        if (nowEnforce == 1){
          return 96;
        }
        else if (nowEnforce == 2){
          return 77.76;
        }
        else if (nowEnforce == 3){
          return 61.44;
        }
        else if (nowEnforce == 4){
          return 48;
        }
        else if (nowEnforce == 5){
          return 24.96;
        }
        else if (nowEnforce == 6){
          return 14.4;
        }
        else if (nowEnforce == 7){
          return 6.72;
        }
        else if (nowEnforce == 8){
          return 3.84;
        }
        else if (nowEnforce == 9){
          return 1.92;
        }
        break;
      case 0.94 :
        if (nowEnforce == 1){
          return 94;
        }
        else if (nowEnforce == 2){
          return 76.14;
        }
        else if (nowEnforce == 3){
          return 60.16;
        }
        else if (nowEnforce == 4){
          return 47;
        }
        else if (nowEnforce == 5){
          return 24.44;
        }
        else if (nowEnforce == 6){
          return 14.1;
        }
        else if (nowEnforce == 7){
          return 6.58;
        }
        else if (nowEnforce == 8){
          return 3.76;
        }
        else if (nowEnforce == 9){
          return 1.88;
        }
        break;
      case 0.92 :
        if (nowEnforce == 1){
          return 92;
        }
        else if (nowEnforce == 2){
          return 74.52;
        }
        else if (nowEnforce == 3){
          return 58.88;
        }
        else if (nowEnforce == 4){
          return 46;
        }
        else if (nowEnforce == 5){
          return 23.92;
        }
        else if (nowEnforce == 6){
          return 13.8;
        }
        else if (nowEnforce == 7){
          return 6.44;
        }
        else if (nowEnforce == 8){
          return 3.68;
        }
        else if (nowEnforce == 9){
          return 1.84;
        }
        break;
      case 0.9 :
        if (nowEnforce == 1){
          return 90;
        }
        else if (nowEnforce == 2){
          return 72.9;
        }
        else if (nowEnforce == 3){
          return 57.6;
        }
        else if (nowEnforce == 4){
          return 45;
        }
        else if (nowEnforce == 5){
          return 23.4;
        }
        else if (nowEnforce == 6){
          return 13.5;
        }
        else if (nowEnforce == 7){
          return 6.3;
        }
        else if (nowEnforce == 8){
          return 3.6;
        }
        else if (nowEnforce == 9){
          return 1.8;
        }
        break;
      case 0.88 :
        if (nowEnforce == 1){
          return 88;
        }
        else if (nowEnforce == 2){
          return 71.28;
        }
        else if (nowEnforce == 3){
          return 56.32;
        }
        else if (nowEnforce == 4){
          return 44;
        }
        else if (nowEnforce == 5){
          return 22.88;
        }
        else if (nowEnforce == 6){
          return 13.2;
        }
        else if (nowEnforce == 7){
          return 6.16;
        }
        else if (nowEnforce == 8){
          return 3.52;
        }
        else if (nowEnforce == 9){
          return 1.76;
        }
        break;
      case 0.86 :
        if (nowEnforce == 1){
          return 86;
        }
        else if (nowEnforce == 2){
          return 69.66;
        }
        else if (nowEnforce == 3){
          return 55.04;
        }
        else if (nowEnforce == 4){
          return 43;
        }
        else if (nowEnforce == 5){
          return 22.36;
        }
        else if (nowEnforce == 6){
          return 12.9;
        }
        else if (nowEnforce == 7){
          return 6.02;
        }
        else if (nowEnforce == 8){
          return 3.44;
        }
        else if (nowEnforce == 9){
          return 1.72;
        }
        break;
      case 0.84 :
        if (nowEnforce == 1){
          return 84;
        }
        else if (nowEnforce == 2){
          return 68.04;
        }
        else if (nowEnforce == 3){
          return 53.76;
        }
        else if (nowEnforce == 4){
          return 42;
        }
        else if (nowEnforce == 5){
          return 21.84;
        }
        else if (nowEnforce == 6){
          return 12.6;
        }
        else if (nowEnforce == 7){
          return 5.88;
        }
        else if (nowEnforce == 8){
          return 3.36;
        }
        else if (nowEnforce == 9){
          return 1.68;
        }
        break;
      case 0.82 :
        if (nowEnforce == 1){
          return 82;
        }
        else if (nowEnforce == 2){
          return 66.42;
        }
        else if (nowEnforce == 3){
          return 52.48;
        }
        else if (nowEnforce == 4){
          return 41;
        }
        else if (nowEnforce == 5){
          return 21.32;
        }
        else if (nowEnforce == 6){
          return 12.3;
        }
        else if (nowEnforce == 7){
          return 5.74;
        }
        else if (nowEnforce == 8){
          return 3.28;
        }
        else if (nowEnforce == 9){
          return 1.64;
        }
        break;
      case 0.8 :
        if (nowEnforce == 1){
          return 80;
        }
        else if (nowEnforce == 2){
          return 64.8;
        }
        else if (nowEnforce == 3){
          return 51.2;
        }
        else if (nowEnforce == 4){
          return 40;
        }
        else if (nowEnforce == 5){
          return 20.8;
        }
        else if (nowEnforce == 6){
          return 12;
        }
        else if (nowEnforce == 7){
          return 5.6;
        }
        else if (nowEnforce == 8){
          return 3.2;
        }
        else if (nowEnforce == 9){
          return 1.6;
        }
        break;
      case 0.78 :
        if (nowEnforce == 1){
          return 78;
        }
        else if (nowEnforce == 2){
          return 63.18;
        }
        else if (nowEnforce == 3){
          return 49.92;
        }
        else if (nowEnforce == 4){
          return 39;
        }
        else if (nowEnforce == 5){
          return 20.28;
        }
        else if (nowEnforce == 6){
          return 11.7;
        }
        else if (nowEnforce == 7){
          return 5.46;
        }
        else if (nowEnforce == 8){
          return 3.12;
        }
        else if (nowEnforce == 9){
          return 1.56;
        }
        break;
      case 0.76 :
        if (nowEnforce == 1){
          return 76;
        }
        else if (nowEnforce == 2){
          return 61.56;
        }
        else if (nowEnforce == 3){
          return 48.64;
        }
        else if (nowEnforce == 4){
          return 38;
        }
        else if (nowEnforce == 5){
          return 19.76;
        }
        else if (nowEnforce == 6){
          return 11.4;
        }
        else if (nowEnforce == 7){
          return 5.32;
        }
        else if (nowEnforce == 8){
          return 3.04;
        }
        else if (nowEnforce == 9){
          return 1.52;
        }
        break;
      case 0.74 :
        if (nowEnforce == 1){
          return 74;
        }
        else if (nowEnforce == 2){
          return 59.94;
        }
        else if (nowEnforce == 3){
          return 47.36;
        }
        else if (nowEnforce == 4){
          return 37;
        }
        else if (nowEnforce == 5){
          return 19.24;
        }
        else if (nowEnforce == 6){
          return 11.1;
        }
        else if (nowEnforce == 7){
          return 5.18;
        }
        else if (nowEnforce == 8){
          return 2.96;
        }
        else if (nowEnforce == 9){
          return 1.48;
        }
        break;
      case 0.72 :
        if (nowEnforce == 1){
          return 72;
        }
        else if (nowEnforce == 2){
          return 58.32;
        }
        else if (nowEnforce == 3){
          return 46.08;
        }
        else if (nowEnforce == 4){
          return 36;
        }
        else if (nowEnforce == 5){
          return 18.72;
        }
        else if (nowEnforce == 6){
          return 10.8;
        }
        else if (nowEnforce == 7){
          return 5.04;
        }
        else if (nowEnforce == 8){
          return 2.88;
        }
        else if (nowEnforce == 9){
          return 1.44;
        }
        break;
      case 0.7 :
        if (nowEnforce == 1){
          return 70;
        }
        else if (nowEnforce == 2){
          return 56.7;
        }
        else if (nowEnforce == 3){
          return 44.8;
        }
        else if (nowEnforce == 4){
          return 35;
        }
        else if (nowEnforce == 5){
          return 18.2;
        }
        else if (nowEnforce == 6){
          return 10.5;
        }
        else if (nowEnforce == 7){
          return 4.9;
        }
        else if (nowEnforce == 8){
          return 2.8;
        }
        else if (nowEnforce == 9){
          return 1.4;
        }
        break;
      case 0.68 :
        if (nowEnforce == 1){
          return 68;
        }
        else if (nowEnforce == 2){
          return 55.08;
        }
        else if (nowEnforce == 3){
          return 43.52;
        }
        else if (nowEnforce == 4){
          return 34;
        }
        else if (nowEnforce == 5){
          return 17.68;
        }
        else if (nowEnforce == 6){
          return 10.2;
        }
        else if (nowEnforce == 7){
          return 4.76;
        }
        else if (nowEnforce == 8){
          return 2.72;
        }
        else if (nowEnforce == 9){
          return 1.36;
        }
        break;
      case 0.66 :
        if (nowEnforce == 1){
          return 66;
        }
        else if (nowEnforce == 2){
          return 53.46;
        }
        else if (nowEnforce == 3){
          return 42.24;
        }
        else if (nowEnforce == 4){
          return 33;
        }
        else if (nowEnforce == 5){
          return 17.16;
        }
        else if (nowEnforce == 6){
          return 9.9;
        }
        else if (nowEnforce == 7){
          return 4.62;
        }
        else if (nowEnforce == 8){
          return 2.64;
        }
        else if (nowEnforce == 9){
          return 1.32;
        }
        break;
      case 0.64 :
        if (nowEnforce == 1){
          return 64;
        }
        else if (nowEnforce == 2){
          return 51.84;
        }
        else if (nowEnforce == 3){
          return 40.96;
        }
        else if (nowEnforce == 4){
          return 32;
        }
        else if (nowEnforce == 5){
          return 16.64;
        }
        else if (nowEnforce == 6){
          return 9.6;
        }
        else if (nowEnforce == 7){
          return 4.48;
        }
        else if (nowEnforce == 8){
          return 2.56;
        }
        else if (nowEnforce == 9){
          return 1.28;
        }
        break;
      case 0.62 :
        if (nowEnforce == 1){
          return 62;
        }
        else if (nowEnforce == 2){
          return 50.22;
        }
        else if (nowEnforce == 3){
          return 39.68;
        }
        else if (nowEnforce == 4){
          return 31;
        }
        else if (nowEnforce == 5){
          return 16.12;
        }
        else if (nowEnforce == 6){
          return 9.3;
        }
        else if (nowEnforce == 7){
          return 4.34;
        }
        else if (nowEnforce == 8){
          return 2.48;
        }
        else if (nowEnforce == 9){
          return 1.24;
        }
        break;
      case 0.6 :
        if (nowEnforce == 1){
          return 60;
        }
        else if (nowEnforce == 2){
          return 48.6;
        }
        else if (nowEnforce == 3){
          return 38.4;
        }
        else if (nowEnforce == 4){
          return 30;
        }
        else if (nowEnforce == 5){
          return 15.6;
        }
        else if (nowEnforce == 6){
          return 9;
        }
        else if (nowEnforce == 7){
          return 4.2;
        }
        else if (nowEnforce == 8){
          return 2.4;
        }
        else if (nowEnforce == 9){
          return 1.2;
        }
        break;
      case 0.58 :
        if (nowEnforce == 1){
          return 58;
        }
        else if (nowEnforce == 2){
          return 46.98;
        }
        else if (nowEnforce == 3){
          return 37.12;
        }
        else if (nowEnforce == 4){
          return 29;
        }
        else if (nowEnforce == 5){
          return 15.08;
        }
        else if (nowEnforce == 6){
          return 8.7;
        }
        else if (nowEnforce == 7){
          return 4.06;
        }
        else if (nowEnforce == 8){
          return 2.32;
        }
        else if (nowEnforce == 9){
          return 1.16;
        }
        break;
      case 0.56 :
if (nowEnforce == 1){
          return 56;
        }
        else if (nowEnforce == 2){
          return 45.36;
        }
        else if (nowEnforce == 3){
          return 35.84;
        }
        else if (nowEnforce == 4){
          return 28;
        }
        else if (nowEnforce == 5){
          return 14.56;
        }
        else if (nowEnforce == 6){
          return 8.4;
        }
        else if (nowEnforce == 7){
          return 3.92;
        }
        else if (nowEnforce == 8){
          return 2.24;
        }
        else if (nowEnforce == 9){
          return 1.12;
        }
        break;
      case 0.54 :
        if (nowEnforce == 1){
          return 54;
        }
        else if (nowEnforce == 2){
          return 43.74;
        }
        else if (nowEnforce == 3){
          return 34.56;
        }
        else if (nowEnforce == 4){
          return 27;
        }
        else if (nowEnforce == 5){
          return 14.04;
        }
        else if (nowEnforce == 6){
          return 8.1;
        }
        else if (nowEnforce == 7){
          return 3.78;
        }
        else if (nowEnforce == 8){
          return 2.16;
        }
        else if (nowEnforce == 9){
          return 1.08;
        }
        break;
      case 0.52 :
        if (nowEnforce == 1){
          return 52;
        }
        else if (nowEnforce == 2){
          return 42.12;
        }
        else if (nowEnforce == 3){
          return 33.28;
        }
        else if (nowEnforce == 4){
          return 26;
        }
        else if (nowEnforce == 5){
          return 13.52;
        }
        else if (nowEnforce == 6){
          return 7.8;
        }
        else if (nowEnforce == 7){
          return 3.64;
        }
        else if (nowEnforce == 8){
          return 2.08;
        }
        else if (nowEnforce == 9){
          return 1.04;
        }
        break;
      case 0.5 :
        if (nowEnforce == 1){
          return 50;
        }
        else if (nowEnforce == 2){
          return 40.5;
        }
        else if (nowEnforce == 3){
          return 32;
        }
        else if (nowEnforce == 4){
          return 25;
        }
        else if (nowEnforce == 5){
          return 13;
        }
        else if (nowEnforce == 6){
          return 7.5;
        }
        else if (nowEnforce == 7){
          return 3.5;
        }
        else if (nowEnforce == 8){
          return 2;
        }
        else if (nowEnforce == 9){
          return 1;
        }
        break;
      case 0.48 :
        if (nowEnforce == 1){
          return 48;
        }
        else if (nowEnforce == 2){
          return 38.88;
        }
        else if (nowEnforce == 3){
          return 30.72;
        }
        else if (nowEnforce == 4){
          return 24;
        }
        else if (nowEnforce == 5){
          return 12.48;
        }
        else if (nowEnforce == 6){
          return 7.2;
        }
        else if (nowEnforce == 7){
          return 3.36;
        }
        else if (nowEnforce == 8){
          return 1.92;
        }
        else if (nowEnforce == 9){
          return 0.96;
        }
        break;
      case 0.46 :
        if (nowEnforce == 1){
          return 46;
        }
        else if (nowEnforce == 2){
          return 37.26;
        }
        else if (nowEnforce == 3){
          return 29.44;
        }
        else if (nowEnforce == 4){
          return 23;
        }
        else if (nowEnforce == 5){
          return 11.96;
        }
        else if (nowEnforce == 6){
          return 6.9;
        }
        else if (nowEnforce == 7){
          return 3.22;
        }
        else if (nowEnforce == 8){
          return 1.84;
        }
        else if (nowEnforce == 9){
          return 0.92;
        }
        break;
      case 0.44 :
        if (nowEnforce == 1){
          return 44;
        }
        else if (nowEnforce == 2){
          return 35.64;
        }
        else if (nowEnforce == 3){
          return 28.16;
        }
        else if (nowEnforce == 4){
          return 22;
        }
        else if (nowEnforce == 5){
          return 11.44;
        }
        else if (nowEnforce == 6){
          return 6.6;
        }
        else if (nowEnforce == 7){
          return 3.08;
        }
        else if (nowEnforce == 8){
          return 1.76;
        }
        else if (nowEnforce == 9){
          return 0.88;
        }
        break;
      case 0.42 :
        if (nowEnforce == 1){
          return 42;
        }
        else if (nowEnforce == 2){
          return 34.02;
        }
        else if (nowEnforce == 3){
          return 26.88;
        }
        else if (nowEnforce == 4){
          return 21;
        }
        else if (nowEnforce == 5){
          return 10.92;
        }
        else if (nowEnforce == 6){
          return 6.3;
        }
        else if (nowEnforce == 7){
          return 2.94;
        }
        else if (nowEnforce == 8){
          return 1.68;
        }
        else if (nowEnforce == 9){
          return 0.84;
        }
        break;
      case 0.4 :
        if (nowEnforce == 1){
          return 40;
        }
        else if (nowEnforce == 2){
          return 32.4;
        }
        else if (nowEnforce == 3){
          return 25.6;
        }
        else if (nowEnforce == 4){
          return 20;
        }
        else if (nowEnforce == 5){
          return 10.4;
        }
        else if (nowEnforce == 6){
          return 6;
        }
        else if (nowEnforce == 7){
          return 2.8;
        }
        else if (nowEnforce == 8){
          return 1.6;
        }
        else if (nowEnforce == 9){
          return 0.8;
        }
        break;
      case 0.38 :
        if (nowEnforce == 1){
          return 38;
        }
        else if (nowEnforce == 2){
          return 30.78;
        }
        else if (nowEnforce == 3){
          return 24.32;
        }
        else if (nowEnforce == 4){
          return 19;
        }
        else if (nowEnforce == 5){
          return 9.88;
        }
        else if (nowEnforce == 6){
          return 5.7;
        }
        else if (nowEnforce == 7){
          return 2.66;
        }
        else if (nowEnforce == 8){
          return 1.52;
        }
        else if (nowEnforce == 9){
          return 0.76;
        }
        break;
      case 0.36 :
        if (nowEnforce == 1){
          return 36;
        }
        else if (nowEnforce == 2){
          return 29.16;
        }
        else if (nowEnforce == 3){
          return 23.04;
        }
        else if (nowEnforce == 4){
          return 18;
        }
        else if (nowEnforce == 5){
          return 9.36;
        }
        else if (nowEnforce == 6){
          return 5.4;
        }
        else if (nowEnforce == 7){
          return 2.52;
        }
        else if (nowEnforce == 8){
          return 1.44;
        }
        else if (nowEnforce == 9){
          return 0.72;
        }
        break;
      case 0.34 :
        if (nowEnforce == 1){
          return 34;
        }
        else if (nowEnforce == 2){
          return 27.54;
        }
        else if (nowEnforce == 3){
          return 21.76;
        }
        else if (nowEnforce == 4){
          return 17;
        }
        else if (nowEnforce == 5){
          return 8.84;
        }
        else if (nowEnforce == 6){
          return 5.1;
        }
        else if (nowEnforce == 7){
          return 2.38;
        }
        else if (nowEnforce == 8){
          return 1.36;
        }
        else if (nowEnforce == 9){
          return 0.68;
        }
        break;
      case 0.32 :
        if (nowEnforce == 1){
          return 32;
        }
        else if (nowEnforce == 2){
          return 25.92;
        }
        else if (nowEnforce == 3){
          return 20.48;
        }
        else if (nowEnforce == 4){
          return 16;
        }
        else if (nowEnforce == 5){
          return 8.32;
        }
        else if (nowEnforce == 6){
          return 4.8;
        }
        else if (nowEnforce == 7){
          return 2.24;
        }
        else if (nowEnforce == 8){
          return 1.28;
        }
        else if (nowEnforce == 9){
          return 0.64;
        }
        break;
      case 0.3 :
        if (nowEnforce == 1){
          return 30;
        }
        else if (nowEnforce == 2){
          return 24.3;
        }
        else if (nowEnforce == 3){
          return 19.2;
        }
        else if (nowEnforce == 4){
          return 15;
        }
        else if (nowEnforce == 5){
          return 7.8;
        }
        else if (nowEnforce == 6){
          return 4.5;
        }
        else if (nowEnforce == 7){
          return 2.1;
        }
        else if (nowEnforce == 8){
          return 1.2;
        }
        else if (nowEnforce == 9){
          return 0.6;
        }
        break;
      case 0.28 :
        if (nowEnforce == 1){
          return 28;
        }
        else if (nowEnforce == 2){
          return 22.68;
        }
        else if (nowEnforce == 3){
          return 17.92;
        }
        else if (nowEnforce == 4){
          return 14;
        }
        else if (nowEnforce == 5){
          return 7.32;
        }
        else if (nowEnforce == 6){
          return 4.2;
        }
        else if (nowEnforce == 7){
          return 1.96;
        }
        else if (nowEnforce == 8){
          return 1.12;
        }
        else if (nowEnforce == 9){
          return 0.56;
        }
        break;
      case 0.26 :
if (nowEnforce == 1){
          return 26;
        }
        else if (nowEnforce == 2){
          return 21.06;
        }
        else if (nowEnforce == 3){
          return 16.64;
        }
        else if (nowEnforce == 4){
          return 13;
        }
        else if (nowEnforce == 5){
          return 6.84;
        }
        else if (nowEnforce == 6){
          return 3.9;
        }
        else if (nowEnforce == 7){
          return 1.82;
        }
        else if (nowEnforce == 8){
          return 1.04;
        }
        else if (nowEnforce == 9){
          return 0.52;
        }
        break;
      case 0.24 :
        if (nowEnforce == 1){
          return 24;
        }
        else if (nowEnforce == 2){
          return 19.44;
        }
        else if (nowEnforce == 3){
          return 15.36;
        }
        else if (nowEnforce == 4){
          return 12;
        }
        else if (nowEnforce == 5){
          return 6.24;
        }
        else if (nowEnforce == 6){
          return 3.6;
        }
        else if (nowEnforce == 7){
          return 1.68;
        }
        else if (nowEnforce == 8){
          return 0.96;
        }
        else if (nowEnforce == 9){
          return 0.48;
        }
        break;
      case 0.22 :
        if (nowEnforce == 1){
          return 22;
        }
        else if (nowEnforce == 2){
          return 17.82;
        }
        else if (nowEnforce == 3){
          return 14.08;
        }
        else if (nowEnforce == 4){
          return 11;
        }
        else if (nowEnforce == 5){
          return 5.64;
        }
        else if (nowEnforce == 6){
          return 3.3;
        }
        else if (nowEnforce == 7){
          return 1.54;
        }
        else if (nowEnforce == 8){
          return 0.88;
        }
        else if (nowEnforce == 9){
          return 0.44;
        }
        break;
      case 0.2 :
        if (nowEnforce == 1){
          return 20;
        }
        else if (nowEnforce == 2){
          return 16.2;
        }
        else if (nowEnforce == 3){
          return 12.8;
        }
        else if (nowEnforce == 4){
          return 10;
        }
        else if (nowEnforce == 5){
          return 5.2;
        }
        else if (nowEnforce == 6){
          return 3;
        }
        else if (nowEnforce == 7){
          return 1.4;
        }
        else if (nowEnforce == 8){
          return 0.8;
        }
        else if (nowEnforce == 9){
          return 0.4;
        }
        break;
      case 0.18 :
        if (nowEnforce == 1){
          return 18;
        }
        else if (nowEnforce == 2){
          return 14.58;
        }
        else if (nowEnforce == 3){
          return 11.52;
        }
        else if (nowEnforce == 4){
          return 9;
        }
        else if (nowEnforce == 5){
          return 4.68;
        }
        else if (nowEnforce == 6){
          return 2.7;
        }
        else if (nowEnforce == 7){
          return 1.26;
        }
        else if (nowEnforce == 8){
          return 0.72;
        }
        else if (nowEnforce == 9){
          return 0.36;
        }
        break;
      case 0.16 :
        if (nowEnforce == 1){
          return 16;
        }
        else if (nowEnforce == 2){
          return 12.96;
        }
        else if (nowEnforce == 3){
          return 10.24;
        }
        else if (nowEnforce == 4){
          return 8;
        }
        else if (nowEnforce == 5){
          return 4.16;
        }
        else if (nowEnforce == 6){
          return 2.4;
        }
        else if (nowEnforce == 7){
          return 1.12;
        }
        else if (nowEnforce == 8){
          return 0.64;
        }
        else if (nowEnforce == 9){
          return 0.32;
        }
        break;
      case 0.14 :
        if (nowEnforce == 1){
          return 14;
        }
        else if (nowEnforce == 2){
          return 11.34;
        }
        else if (nowEnforce == 3){
          return 8.96;
        }
        else if (nowEnforce == 4){
          return 7;
        }
        else if (nowEnforce == 5){
          return 3.64;
        }
        else if (nowEnforce == 6){
          return 2.1;
        }
        else if (nowEnforce == 7){
          return 0.98;
        }
        else if (nowEnforce == 8){
          return 0.56;
        }
        else if (nowEnforce == 9){
          return 0.28;
        }
        break;
      case 0.12 :
        if (nowEnforce == 1){
          return 12;
        }
        else if (nowEnforce == 2){
          return 9.72;
        }
        else if (nowEnforce == 3){
          return 7.68;
        }
        else if (nowEnforce == 4){
          return 6;
        }
        else if (nowEnforce == 5){
          return 3.12;
        }
        else if (nowEnforce == 6){
          return 1.8;
        }
        else if (nowEnforce == 7){
          return 0.84;
        }
        else if (nowEnforce == 8){
          return 0.48;
        }
        else if (nowEnforce == 9){
          return 0.24;
        }
        break;
      case 0.1 :
        if (nowEnforce == 1){
          return 10;
        }
        else if (nowEnforce == 2){
          return 8.1;
        }
        else if (nowEnforce == 3){
          return 6.4;
        }
        else if (nowEnforce == 4){
          return 5;
        }
        else if (nowEnforce == 5){
          return 2.6;
        }
        else if (nowEnforce == 6){
          return 1.5;
        }
        else if (nowEnforce == 7){
          return 0.7;
        }
        else if (nowEnforce == 8){
          return 0.4;
        }
        else if (nowEnforce == 9){
          return 0.2;
        }
        break;
      case 0.08 :
        if (nowEnforce == 1){
          return 8;
        }
        else if (nowEnforce == 2){
          return 6.48;
        }
        else if (nowEnforce == 3){
          return 5.12;
        }
        else if (nowEnforce == 4){
          return 4;
        }
        else if (nowEnforce == 5){
          return 2.08;
        }
        else if (nowEnforce == 6){
          return 1.2;
        }
        else if (nowEnforce == 7){
          return 0.56;
        }
        else if (nowEnforce == 8){
          return 0.32;
        }
        else if (nowEnforce == 9){
          return 0.16;
        }
        break;
      case 0.06 :
        if (nowEnforce == 1){
          return 6;
        }
        else if (nowEnforce == 2){
          return 4.86;
        }
        else if (nowEnforce == 3){
          return 3.84;
        }
        else if (nowEnforce == 4){
          return 3;
        }
        else if (nowEnforce == 5){
          return 1.56;
        }
        else if (nowEnforce == 6){
          return 0.9;
        }
        else if (nowEnforce == 7){
          return 0.42;
        }
        else if (nowEnforce == 8){
          return 0.24;
        }
        else if (nowEnforce == 9){
          return 0.12;
        }
        break;
      case 0.04 :
        if (nowEnforce == 1){
          return 4;
        }
        else if (nowEnforce == 2){
          return 3.24;
        }
        else if (nowEnforce == 3){
          return 2.56;
        }
        else if (nowEnforce == 4){
          return 2;
        }
        else if (nowEnforce == 5){
          return 1.04;
        }
        else if (nowEnforce == 6){
          return 0.6;
        }
        else if (nowEnforce == 7){
          return 0.28;
        }
        else if (nowEnforce == 8){
          return 0.16;
        }
        else if (nowEnforce == 9){
          return 0.08;
        }
        break;
      case 0.02 :
        if (nowEnforce == 1){
          return 2;
        }
        else if (nowEnforce == 2){
          return 1.62;
        }
        else if (nowEnforce == 3){
          return 1.28;
        }
        else if (nowEnforce == 4){
          return 1;
        }
        else if (nowEnforce == 5){
          return 0.52;
        }
        else if (nowEnforce == 6){
          return 0.3;
        }
        else if (nowEnforce == 7){
          return 0.14;
        }
        else if (nowEnforce == 8){
          return 0.08;
        }
        else if (nowEnforce == 9){
          return 0.04;
        }
        break;
    }
    return 0;
  }
}
