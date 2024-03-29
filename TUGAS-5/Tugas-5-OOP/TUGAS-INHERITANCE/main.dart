import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';
void main(List<String> args) {
Human h = Human();
ArmorTitan art = ArmorTitan();
AttackTitan at = AttackTitan();
BeastTitan bt = BeastTitan();
bt.powerPoint = 10;
print("Beast TItan ${bt.powerPoint}");
Titan titan = ArmorTitan();
List<Titan> titans = [];
titans.add(ArmorTitan());
titans.add(AttackTitan());
titans.add(BeastTitan());
titans.add(ArmorTitan());
print((titan as ArmorTitan).terjang());
}