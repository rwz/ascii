# encoding: utf-8
require "spec_helper"

describe Ascii do
  PURE_ASCII = [
    "Vitrum edere possum; mihi non nocet.",               # Latin
    "Je puis mangier del voirre. Ne me nuit.",            # Old French
    "Kristala jan dezaket, ez dit minik ematen.",         # Basque
    "Kaya kong kumain nang bubog at hindi ako masaktan.", # Tagalog
    "Ich kann Glas essen, ohne mir weh zu tun.",          # German
    "I can eat glass and it doesn't hurt me.",            # English
  ]

  CONVERT = {
    "French" => [
      "Je peux manger du verre, ça ne me fait pas de mal.",
      "Je peux manger du verre, ca ne me fait pas de mal."
    ],

    "Romanian" => [
      "Pot să mănânc sticlă și ea nu mă rănește.",
      "Pot sa mananc sticla si ea nu ma raneste."
    ],

    "Icelandic" => [
      "Ég get etið gler án þess að meiða mig.",
      "Eg get etid gler an thess ad meida mig."
    ],

    "Albanian" => [
      "Unë mund të ha qelq dhe nuk më gjen gjë.",
      "Une mund te ha qelq dhe nuk me gjen gje."
    ],

    "Polish" => [
      "Mogę jeść szkło i mi nie szkodzi.",
      "Moge jesc szklo i mi nie szkodzi."
    ],

    "Russian" => [
      "Я могу есть стекло, оно мне не вредит.",
      "Ia moghu iest' stieklo, ono mnie nie vriedit."
    ],

    "Bulgarian" => [
      "Мога да ям стъкло, то не ми вреди.",
      "Mogha da iam stklo, to nie mi vriedi."
    ],

    "Anglo-Saxon" => [
      "ᛁᚳ᛫ᛗᚨᚷ᛫ᚷᛚᚨᛋ᛫ᛖᚩᛏᚪᚾ᛫ᚩᚾᛞ᛫ᚻᛁᛏ᛫ᚾᛖ᛫ᚻᛖᚪᚱᛗᛁᚪᚧ᛫ᛗᛖ᛬",
      "ic.mag.glas.eotacn.ond.hit.ne.heacrmiacth.me:"
    ],

    "Classical Greek" => [
      "ὕαλον ϕαγεῖν δύναμαι· τοῦτο οὔ με βλάπτει",
      "ualon phagein dunamai; touto ou me blaptei"
    ],

    "Hindi" => [
      "मैं काँच खा सकता हूँ और मुझे उससे कोई चोट नहीं पहुंचती",
      "maiN kaaNc khaa sktaa huuN aur mujhe usse koii cott nhiiN phuNctii"
    ],

    "Thai" => [
      "ฉันกินกระจกได้ แต่มันไม่ทำให้ฉันเจ็บ",
      "chankinkracchkaid aetmanaimthamaihchanecchb"
    ],

    "Chinese" => [
      "我能吞下玻璃而不伤身体。",
      "Wo Neng Tun Xia Bo Li Er Bu Shang Shen Ti ."
    ],

    "Japanese" => [
      "私はガラスを食べられます。それは私を傷つけません。",
      "Si hagarasuwoShi beraremasu. sorehaSi woShang tukemasen."
    ],

    "Persian" => [
      "من می توانم بدونِ احساس درد شيشه بخورم",
      "mn my twnm bdwni Hss drd shyshh bkhwrm"
    ],

    "Arabic" => [
      "أنا قادر على أكل الزجاج و هذا لا يؤلمن",
      "'n qdr 'l~ 'kl lzjj w hdh l yw'lmn"
    ],

    "Hebrew" => [
      "אני יכול לאכול זכוכית וזה לא מזיק לי",
      "ny ykvl lkvl zkvkyt vzh l mzyq ly"
    ]
  }

  PURE_ASCII.each do |phrase|
    it "does not modify an ASCII phrase #{phrase.inspect}" do
      expect(described_class.process(phrase)).to eq(phrase)
    end
  end

  CONVERT.each do |language, (input, expected)|
    it "converts a phrase in #{language} to ASCII" do
      expect(described_class.process(input)).to eq(expected)
    end
  end
end
