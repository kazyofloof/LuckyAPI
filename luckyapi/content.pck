GDPC                                                                            !       res://valgos-content-pack/mod.gd�
      	                      "   res://valgos-content-pack/mod.json�      �                       /   res://valgos-content-pack/symbols/BananaTree.gd�      �                      1   res://valgos-content-pack/symbols/banana_tree.png�      �                       )   res://valgos-content-pack/symbols/Bank.gd]      �                      *   res://valgos-content-pack/symbols/bank.png�      �                       +   res://valgos-content-pack/symbols/Banker.gd�      �                      ,   res://valgos-content-pack/symbols/banker.pngp      �                       *   res://valgos-content-pack/symbols/Cloud.gdc      �                      +   res://valgos-content-pack/symbols/cloud.png!      �                       0   res://valgos-content-pack/symbols/CoconutTree.gd�!      �                      2   res://valgos-content-pack/symbols/coconut_tree.pngq$      �                       +   res://valgos-content-pack/symbols/Dragon.gd=%                            ,   res://valgos-content-pack/symbols/dragon.pngS*      �                       0   res://valgos-content-pack/symbols/Dragonfruit.gdE+      �                      1   res://valgos-content-pack/symbols/dragonfruit.png�,      �                       0   res://valgos-content-pack/symbols/GoldenGoose.gd�-      �                      2   res://valgos-content-pack/symbols/golden_goose.png�1      �                       2   res://valgos-content-pack/symbols/LightningBolt.gd�2      �                      4   res://valgos-content-pack/symbols/lightning_bolt.pngK7      �                       6   res://valgos-content-pack/symbols/patches/GoldenEgg.gd�7                            .   res://valgos-content-pack/symbols/Pineapple.gd�9                            /   res://valgos-content-pack/symbols/pineapple.png=      �                       .   res://valgos-content-pack/symbols/PotOfGold.gd�=      �                      1   res://valgos-content-pack/symbols/pot_of_gold.pngcA                            ,   res://valgos-content-pack/symbols/Rainbow.gdhB      3                      -   res://valgos-content-pack/symbols/rainbow.png�G      �                       1   res://valgos-content-pack/symbols/ThunderCloud.gd�H      �                      3   res://valgos-content-pack/symbols/thunder_cloud.png�M      �                       .   res://valgos-content-pack/symbols/TotemPole.gdbN      4                      0   res://valgos-content-pack/symbols/totem_pole.png�Q                            1   res://valgos-content-pack/valgos-content-pack.png�R      �                      )   res://valgos-content-pack/vanilla-sfx.txt�[      �                      extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Pineapple.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/BananaTree.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/CoconutTree.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Bank.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Banker.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/TotemPole.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Rainbow.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Cloud.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/ThunderCloud.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/GoldenGoose.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Dragon.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/Dragonfruit.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/PotOfGold.gd")
    modloader.add_mod_symbol("res://valgos-content-pack/symbols/LightningBolt.gd")

    modloader.add_symbol_patch("res://valgos-content-pack/symbols/patches/GoldenEgg.gd"){
    "id": "valgos-content-pack",
    "version": "1.0.0",
    "authors": ["Valgo"],
    "name": "Valgo's Content Pack",
    "description": "Adds new symbols and items to Luck be a Landlord",
    "dependencies": [],
    "load-after": []
}extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "banana_tree"
    self.value = 2
    self.values = [20]
    self.rarity = "uncommon"
    self.groups = ["farmerlikes", "plant"]
    add_sfx_redirect("farmer")

    self.texture = load_texture("res://valgos-content-pack/symbols/banana_tree.png")
    self.name = "Banana Tree"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_banana>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("banana").animate("bounce"))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(����� E�5�7K�����*�H���e_q1�@�/!�����ˎ?����s�x�;n��\�Zj}:�)��}%��!�jl��Y4
%{I1T���n )���L�) �Ϸ��r^�̥!q,Ï0]P[3�'�x"?F�]��ĥF    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "bank"
    self.value = 1
    self.values = [5, 4, 1]
    self.rarity = "uncommon"
    self.groups = []
    add_sfx_redirect("oyster", "default", "spawn")

    self.texture = load_texture("res://valgos-content-pack/symbols/bank.png")
    self.name = "Bank"
    self.description = "Permanently gives <icon_coin><color_FBF236><value_3><end> more after every <color_E14A68><value_2> turns<end>. Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("coin").animate("bounce", "spawn"))
    symbol.add_effect(effect().if_property_at_least("times_displayed", values[1]).add_permanent_bonus(values[2]))
    symbol.add_effect(effect().if_property_at_least("times_displayed", values[1]).set_value("times_displayed", 0).animate("shake"))

func update_value_text(symbol, values):
    symbol.value_text = symbol.permanent_bonus
    symbol.value_text_color = "<color_FBF236>"�PNG

   IHDR         Vu\�   sRGB ���   }IDAT(�cd������8p��vb````�r��PˈM���(ÛW�142200�GW(#)��������+�,�� :����`&�L0�޼z����k�l�R �50200�?u�:Q���5Q#�  ^Y0Ow�    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "banker"
    self.value = 3
    self.values = [2]
    self.rarity = "rare"
    self.groups = ["organism", "human"]
    add_sfx_redirect("mrs_fruit")

    self.texture = load_texture("res://valgos-content-pack/symbols/banker.png")
    self.name = "Banker"
    self.description = "Adjacent <icon_bank> give <color_E14A68><value_1>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("bank").change_value_multiplier(values[0]).animate("bounce", "default", [symbol, i]))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(�����0E�Q$�t=�'`*�:�����30R�\�JG�)��l���¾���Y!�(�R]3K��Sp ��5؟7��~]3���E�@?�����I�Џ�$�=�I�~�t�do�`� �/�$s��wHU��90Ǔ��_�Y�1 8k��d�%	�$VQx@} ��g�e�i    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "cloud"
    self.value = 2
    self.values = [2, 10]
    self.rarity = "uncommon"
    self.groups = []
    add_sfx_redirect("mrs_fruit")
    add_sfx_redirect("rain", "default", "transform")

    self.texture = load_texture("res://valgos-content-pack/symbols/cloud.png")
    self.name = "Cloud"
    self.description = "Adjacent <icon_rainbow> give <color_E14A68><value_1>x<end> more <icon_coin>. Has a <color_E14A68><value_2>%<end> chance of transforming into <icon_thunder_cloud>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("rainbow").change_value_multiplier(values[0]).animate("bounce", "default", [symbol, i]))
    symbol.add_effect(effect().if_value_random(1).change_type("thunder_cloud").animate("shake", "transform"))�PNG

   IHDR         Kpl_   sRGB ���   eIDAT(���A� ��G����?�C�Qk�vN C?�%��3&��j�77��R
���1R�$۶�'���<
; �K���Fz"�ii��1Ź���.���|���~Q�    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "coconut_tree"
    self.value = 2
    self.values = [20]
    self.rarity = "uncommon"
    self.groups = ["farmerlikes", "plant"]
    add_sfx_redirect("farmer")

    self.texture = load_texture("res://valgos-content-pack/symbols/coconut_tree.png")
    self.name = "Coconut Tree"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_coconut>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("coconut").animate("bounce"))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(�}��� Ǵp%PC�<�ǽx��{��=����|/�� +���x� ����4:�{���9=��j��o��s�逊���G�8.��֒�{���TK~DiLae�5j�V�LA ����oHM�r`������`jS)�I�^    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "dragon"
    self.value = 5
    self.values = [3, 1]
    self.rarity = "very_rare"
    self.groups = ["organism", "animal"]
    add_sfx_redirect("beastmaster")

    self.texture = load_texture("res://valgos-content-pack/symbols/dragon.png")
    self.name = "Dragon"
    self.description = "Adjacent <icon_dragon> give <color_E14A68><value_1>x<end> more <icon_coin>. <color_E14A68>Destroys<end> adjacent <icon_dragonfruit>. Permanently gives <icon_coin><color_FBF236><value_2><end> for each symbol <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("dragon").change_value_multiplier(values[0]).animate("circle", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("dragonfruit").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("dragonfruit").set_target(symbol).add_permanent_bonus(values[1]).animate("shake", "default", [symbol, i]))
    
func update_value_text(symbol, values):
    symbol.value_text = symbol.permanent_bonus
    symbol.value_text_color = "<color_FBF236>"�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(�����@D���S��`��ç`H�����A`	���zwm��fvg�p��z?Q�]�ܪ	�e����q�u�np���X�v8`�b��z�J
���7�����F��-�YNQ9�.*׸UJͤ� ��<k,M��}�j���Y!��?���:����    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "dragonfruit"
    self.value = 3
    self.values = []
    self.rarity = "rare"
    self.groups = ["farmerlikes", "plant", "food", "fruit"]

    self.texture = load_texture("res://valgos-content-pack/symbols/dragonfruit.png")
    self.name = "Dragonfruit"
    self.description = ""�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(�u���0ƿ���Q�C�'f{�*��2��L��SSY�W�B8T/[{=��?�\��[�����>�I�!+� �tu)�m ��	��7QlH���+�qCXx�h� �7�3��:��)x�3<i�K���Q��0�S( uu���i�&�r�XM�TO��>�� �w���6��x�    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "golden_goose"
    self.value = 4
    self.values = [20, 3]
    self.rarity = "very_rare"
    self.groups = ["organism", "animal", "bird"]
    add_sfx_redirect("goose")
    add_sfx_redirect("mrs_fruit", "default", "boost")

    self.texture = load_texture("res://valgos-content-pack/symbols/golden_goose.png")
    self.name = "Golden Goose"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_golden_egg>. Adjacent <icon_golden_egg> give <color_E14A68><value_2>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("golden_egg").animate("shake"))
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("golden_egg").change_value_multiplier(values[1]).animate("bounce", "boost", [symbol, i]))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(���1B1C_�?��ց�#qVFvf�r���,���~KU�(��sh� |�D�i&�$���JNr�̡�y?uB6s�U�Gm��d� ����4[iO� [Z�`��/9!�>G{�04X_��I�P~�v�{>���� `o�Dv��o�    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "lightning_bolt"
    self.value = 2
    self.values = [2, 3]
    self.rarity = "rare"
    self.groups = []
    add_sfx_redirect("sun", "default", "default")

    self.texture = load_texture("res://valgos-content-pack/symbols/lightning_bolt.png")
    self.name = "Lightning Bolt"
    self.description = "<color_E14A68>Destroys<end> itself after <color_E14A68><value_2><end> turns. Adjacent symbols give <color_E14A68><value_1>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    var animate := [symbol]
    for i in adjacent:
        if i.type == "empty":
            continue
        symbol.add_effect_for_symbol(i, effect().change_value_multiplier(values[0]))
        animate.push_back(i)
    symbol.add_effect(effect().animate("shake", "default", animate))
    symbol.add_effect(effect().if_property_at_least("times_displayed", values[1]).set_destroyed().animate("shake"))

func update_value_text(symbol, values):
    symbol.value_text = values[1] - symbol.times_displayed
    symbol.value_text_color = "<color_E14A68>"�PNG

   IHDR         Vu\�   sRGB ���   XIDAT(��N� !��ۑ�/Ѐc^�
�C�?ڛg���_��
�:q­�K���
��3��X��%{�S2�4��
22;h� �L�t�    IEND�B`�extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "golden_egg"

func patch_values(values):
    values.push_back(5)
    return values

func patch_description(description):
    return join(description, "Has a <color_E14A68><value_1>%<end> chance to grow into <icon_golden_goose>.")

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).change_type("golden_goose").animate("shake"))extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "pineapple"
    self.value = 2
    self.values = [1]
    self.rarity = "uncommon"
    self.groups = ["farmerlikes", "fruitlikes", "monkeylikes", "plant", "food", "fruit"]
    add_sfx_redirect("mrs_fruit")

    self.texture = load_texture("res://valgos-content-pack/symbols/pineapple.png")
    self.name = "Pineapple"
    self.description = "Adjacent <group_fruit> and <last_fruit> give <icon_coin><color_FBF236><value_1><end> more."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("fruit").change_value_bonus(values[0]).animate("bounce", "default", [symbol, i]))�PNG

   IHDR         Vu\�   sRGB ���   kIDAT(����� D_��3�g��9�8;�@PZ�����޵i���;`(l�����T�L�E�C�W�Z�f��L���O�l�k�Wz`_<=���瀛=�d�_JyYҵT�E    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "pot_of_gold"
    self.value = 5
    self.values = [3, 2]
    self.rarity = "very_rare"
    self.groups = []
    add_sfx_redirect("king_midas")

    self.texture = load_texture("res://valgos-content-pack/symbols/pot_of_gold.png")
    self.name = "Pot of Gold"
    self.description = "Adjacent <icon_rainbow> give <color_E14A68><value_1>x<end> more <icon_coin>. Worth <color_E14A68><value_2>x<end> more for every adjacent <icon_rainbow>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("rainbow").change_value_multiplier(values[0]).animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("rainbow").set_target(symbol).change_value_multiplier(values[1]).animate("circle"))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(���1�@E�
;+�=�Ҙ�(�<�g�Pر�G���#Ha�$c�������d���KV1��9���( ]�""�]��� ��AD������
�0�D~Xj7��hu�?f��rOn��SI�����br2�U����n � 1� ���qb�}9��	P���/��)�=N����ˀR�n�[��� �EDpN�    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "rainbow"
    self.value = 5
    self.values = [4]
    self.rarity = "very_rare"
    self.groups = []
    add_sfx_redirect("oyster")

    self.texture = load_texture("res://valgos-content-pack/symbols/rainbow.png")
    self.name = "Rainbow"
    self.description = "If every <color_E14A68>adjacent symbol<end> is <color_E14A68>different<end>, adjacent symbols give <color_E14A68><value_1>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    var adjacent_symbols := []
    var adjacent_positions := []
    var all_different := true
    for adjacent_symbol in adjacent:
        if adjacent_symbol.type == "empty":
            continue
        if adjacent_symbols.find(adjacent_symbol.type) != -1:
            all_different = false
            break
        adjacent_symbols.push_back(adjacent_symbol.type)
    
    if all_different:
        var animate := [symbol]
        for i in adjacent:
            if i.type == "empty":
                continue
            symbol.add_effect_for_symbol(i, effect().change_value_multiplier(values[0]))
            animate.push_back(i)
        symbol.add_effect(effect().animate("circle", "default", animate))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(���1
�0����^pqA��Y'��!<In ��Wpk�`�8A�G�CM�
�7���{$y�?��َa]�ܢh�ܴmR!�~.\��"� �ÉiD�]���-|���� HL#N����u��|�frV������\H���f�o(��8�?Ut��}K�Z;���O���z~>5�O#5    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "thunder_cloud"
    self.value = 3
    self.values = [15, 25, 30, 2]
    self.rarity = "rare"
    self.groups = []
    add_sfx_redirect("sun", "default", "transform")

    self.texture = load_texture("res://valgos-content-pack/symbols/thunder_cloud.png")
    self.name = "Thunder Cloud"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of turning into <icon_cloud>. When turning into <icon_cloud>, has a <color_E14A68><value_4>%<end> chance of adding <icon_rainbow>. Has a <color_E14A68><value_2>%<end> chance of <color_E14A68>adding<end> <icon_rain>. Also has a <color_E14A68><value_3>%<end> chance of <color_E14A68>adding<end> <icon_lightning_bolt>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(1).add_symbol_type("rain").animate("shake"))
    symbol.add_effect(effect().if_value_random(2).add_symbol_type("lightning_bolt").animate("shake"))
    randomize()
    if values[0] > rand_range(0, 100):
        symbol.add_effect(effect().change_type("cloud").animate("circle"))
        symbol.add_effect(effect().if_value_random(3).add_symbol_type("rainbow"))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(���1� E�8�2�>Y"POS���>��q�ȝ���x��z��2���z�ԅ8�c�Xs�)��hl� ��)&��m���e;L! `�ݲ��zL97�K�O�e׹�2�d!� ���LP�'�C�㝱����9��I;    IEND�B`�extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "totem_pole"
    self.value = 1
    self.values = [4]
    self.rarity = "common"
    self.groups = []
    add_sfx_redirect("beastmaster")

    self.texture = load_texture("res://valgos-content-pack/symbols/totem_pole.png")
    self.name = "Totem Pole"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> more for <color_E14A68>each other<end> <icon_totem_pole> in the same column."

func add_conditional_effects(symbol, adjacent):
    for y in range(modloader.globals.reels.reel_height):
        if y != symbol.grid_position.y:
            symbol.add_effect_to_symbol(y, symbol.grid_position.x, effect().if_type("totem_pole").change_value_bonus(values[0]))�PNG

   IHDR         Vu\�   sRGB ���   �IDAT(�}��
�0EOD*qյ��n������Kg'w�����[�B��&"R��9hj��;���rϻ����R us�w	#�ry�l{��53=�|����F�T@�8`�� �x �� �i��� ��� �&��5�<������%q�l�NP5���K��K�ā��dY&Z��ā�-�C��L[��'A���z�#�|NF���EU�A�'��0h�Ђ�    IEND�B`��PNG

   IHDR   �   �   >U�   sRGB ���  �IDATx���[�]U�ߑ��XPZ!X��Ep*v0xI���@L�Dx��		�DI�h����K|���ZMP�V�^:ZF�b��R���2e�pf��s����%M�Yg�u������=���"�kԶ��7�0s�g!}z�����o0�q*�<׭m���گ߾,�?m�r�̡<�H���/����_�4Ir��s��W�.�t��{�O�$�_���s�s�)��#��́�q_��U9��[���y0�|�/�~���ۘ�`._�"I���s��͒׌��Vsx����������}�?=�F�?�k<��[2p�/�$�O���'��w���-��~��5�b��([��-�-.�?Z�}�4�V�Ǵ=�k����S[���w�ͧ�/��?8�ɖ��u��r�ͧ�C\$�Yg��];V!���[�i��xhٲ΃���'�l�_������~w���뫆�7���:x&�C��s��#�gb��$ɞ�́��ʞ�M���헲�k�營�S׹W���肋$��<�Ń�3�yM��X�l���_ӛ����������Vj����ܳuI�X��$ɝ��ˊ�CIz��|�$ox��l~�s�ڃ��W��$y���I�'��Kr�"�u��-�=q薮!�	p#I���U��7��$Y���$ɓێ$I����g�'��ɱ��wF˼��>��
q˘zx�9��ر#I�o�%���Ù��HR�޿]Q�Tp�lxمI�w���~�q�c;������?{몜���٩^�QE���$w&�~���k�+�|jw��_y���*��3P�n$)�|��vy�.��/���GsE�f��A��[�N��4�s��R��3.�XV�kq������[:ښ>�1n��K����a8<yB�=�LG�zx������~��L��HZ��^�3>>�ڤ��j����W����ٸi8����s�j���]�w����'��������Ȇ�]��'?�-O�$Y{�������;�ter�Le����X��{�پ}{��mE.ɚ�`��d[r���\��W$y�c�{��y�������>޳_YU�l]��mX����Ɋ�C=ύ���.L�s�P~�k����c����9��[�tv��U�$y�{?^��"I�\���3շ��вe-��íw$I^wݕI�_�qE&O}���exK;v�hy\M�h�2���WoN�lܴ�����X�O튤��M:�oK���r��l���W����/ZT5^���I�~.\�+����.�v��w��2n� ��s���zx�=.՗�咹����[s��-ն޿m}�\�)����剽����}}�K�>��n��uo?�v̮�����ޑ��́��VA�M{%�g�՛�qӺ�]3Z�l�ۗ�ѣ}N��ީb�
��-ʥ?:i�SΪ8zAGU���ٻt���[W՟�~]�-�S�~ߺr(�c�>�4�?	u�Op�\�*���C���Ȼg����D����%g֫p�dǃ��ד�=���=[���dQ�Q����tT��
\Vߤy������M�Up۪�\�Q�r{b��l:<��M'I6��ҕ]/^]���r��GR��^��ùi�����#����޽{�*\W���{������c�5�^}:|莩��(e՝Y"w����ڵ��'�ٵ��O�>>���$i�����q[���ם^�g����Fj�ʢhf��h�lϨ~�ڿ�cccٰaC6nZW���`�\^<�����<�v�#�ex۷۝�I#jL����۟;!�=����?q%-�|��U���{����+�ݬ��d����nr�׫cҬ�]�׳=�`��{�i�ܯSM�ƚ!.�^�Q���&��.��r���~%:i.���C�٭�&In}i�ӹ��#Ic�<x��o��\�f���s������.�B.b�e%���跄��E�d��֪�Bn��u��?뎴���N�*��{���;[�T����Q���E���GC��L���_�����ٿ����`=�]o�ޅ����|��s���̧����J����o�|oO]������O>�                                                                                                                                                             ��R���                                                      ����xD����{    IEND�B`�archaeologist-default0.wav.import
banana_peel-default0.wav.import
bar_of_soap-default0.wav.import
bartender-default0.wav.import
bartender-default1.wav.import
bartender-default2.wav.import
bear-default0.wav.import
beastmaster-default0.wav.import
bee-default0.wav.import
beehive-default0.wav.import
big_ore-default0.wav.import
big_ore-default1.wav.import
big_ore-default2.wav.import
big_urn-default0.wav.import
big_urn-default1.wav.import
billionaire-default0.wav.import
billionaire-die0.wav.import
bounty_hunter-default0.wav.import
bounty_hunter-default1.wav.import
bronze_arrow-default0.wav.import
bubble-default0.wav.import
buffing_powder-default0.wav.import
card_shark-default0.wav.import
card_shark-default1.wav.import
cat-default0.wav.import
chef-default0.wav.import
chef-default1.wav.import
chemical_seven-default0.wav.import
chick-default0.wav.import
chick-default1.wav.import
chick-default2.wav.import
chicken-default0.wav.import
chicken-default1.wav.import
chicken-default2.wav.import
coal-default0.wav.import
coal-default1.wav.import
cow-default0.wav.import
d3-default0.wav.import
d3-default1.wav.import
d3-default2.wav.import
d3-default3.wav.import
d3-default4.wav.import
d3-default5.wav.import
d3-default6.wav.import
d3-default7.wav.import
d3-default8.wav.import
d3-default9.wav.import
d5-default0.wav.import
d5-default1.wav.import
d5-default2.wav.import
d5-default3.wav.import
d5-default4.wav.import
d5-default5.wav.import
d5-default6.wav.import
d5-default7.wav.import
d5-default8.wav.import
d5-default9.wav.import
dame-default0.wav.import
dame-drink0.wav.import
dame-drink1.wav.import
dame-drink2.wav.import
diver-default0.wav.import
dog-default0.wav.import
dog-pet0.wav.import
dwarf-anvil0.wav.import
dwarf-default0.wav.import
dwarf-default1.wav.import
dwarf-default2.wav.import
egg-default0.wav.import
egg-default1.wav.import
egg-frying_pan0.wav.import
egg-frying_pan1.wav.import
eldritch_beast-default0.wav.import
eldritch_beast-default1.wav.import
eldritch_beast-default2.wav.import
farmer-default0.wav.import
farmer-default1.wav.import
frozen_fossil-default0.wav.import
general_zaroff-default0.wav.import
general_zaroff-default1.wav.import
golden_arrow-default0.wav.import
golem-default0.wav.import
goose-default0.wav.import
hex_of_destruction-default0.wav.import
hex_of_draining-default0.wav.import
hex_of_emptiness-default0.wav.import
hex_of_hoarding-default0.wav.import
hex_of_midas-default0.wav.import
hex_of_thievery-default0.wav.import
hooligan-default0.wav.import
hustler-default0.wav.import
hustler-default1.wav.import
item_capsule-default0.wav.import
item_capsule-default1.wav.import
joker-default0.wav.import
key-default0.wav.import
key-default1.wav.import
king_midas-default0.wav.import
king_midas-shine0.wav.import
light_bulb-default0.wav.import
lockbox-default0.wav.import
lockbox-default1.wav.import
lucky_capsule-default0.wav.import
lucky_capsule-default1.wav.import
magic_key-default0.wav.import
magic_key-default1.wav.import
matryoshka_doll_1-default0.wav.import
matryoshka_doll_1-default1.wav.import
matryoshka_doll_1-default2.wav.import
matryoshka_doll_2-default0.wav.import
matryoshka_doll_2-default1.wav.import
matryoshka_doll_2-default2.wav.import
matryoshka_doll_3-default0.wav.import
matryoshka_doll_3-default1.wav.import
matryoshka_doll_3-default2.wav.import
matryoshka_doll_4-default0.wav.import
matryoshka_doll_4-default1.wav.import
matryoshka_doll_4-default2.wav.import
mega_chest-default0.wav.import
mega_chest-default1.wav.import
midas_bomb-default0.wav.import
midas_bomb-default1.wav.import
mine-default0.wav.import
miner-default0.wav.import
missing.wav.import
monkey-default0.wav.import
monkey-default1.wav.import
monkey-default2.wav.import
moon-default0.wav.import
mouse-default0.wav.import
mrs_fruit-default0.wav.import
ninja-default0.wav.import
ore-default0.wav.import
ore-default1.wav.import
ore-default2.wav.import
oyster-default0.wav.import
pirate-default0.wav.import
rabbit-default0.wav.import
rain-default0.wav.import
rain-default1.wav.import
rain-default2.wav.import
rarity_capsule-default0.wav.import
rarity_capsule-default1.wav.import
removal_capsule-default0.wav.import
removal_capsule-default1.wav.import
reroll_capsule-default0.wav.import
reroll_capsule-default1.wav.import
robin_hood-default0.wav.import
robin_hood-hates0.wav.import
robin_hood-hates1.wav.import
safe-default0.wav.import
safe-default1.wav.import
seed-default0.wav.import
seed-default1.wav.import
silver_arrow-default0.wav.import
spirit-default0.wav.import
spirit-default1.wav.import
sun-default0.wav.import
target-default0.wav.import
tedium_capsule-default0.wav.import
tedium_capsule-default1.wav.import
text0.wav.import
text1.wav.import
text2.wav.import
text3.wav.import
text4.wav.import
text5.wav.import
text6.wav.import
text7.wav.import
text8.wav.import
text9.wav.import
toddler-default0.wav.import
tomb-default0.wav.import
tomb-default1.wav.import
treasure_chest-default0.wav.import
treasure_chest-default1.wav.import
urn-default0.wav.import
urn-default1.wav.import
void_creature-default0.wav.import
void_stone-default0.wav.import
witch-default0.wav.import