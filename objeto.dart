void main() {

Personagem heroi = Personagem();
Personagem golem = Personagem();


heroi.nome = "VV";
golem.nome = "JJ";

heroi.ataque(golem);
golem.ataque(heroi);

heroi.cura(heroi);
golem.cura(golem);



}





class Personagem {

  String nome = "";
  int vida = 200;

  void ataque(Personagem alvo) {

    print("${this.nome} atacou ${alvo.nome}");
    alvo.vida -= 20;
    print("O dano foi de 20 e sua vida é ${alvo.vida}");

    print("Sua vida : ${alvo.vida}");


  



  }

  void cura(Personagem alvo) {
    alvo.vida += 20;

    print("Você foi curado - Vida : ${alvo.vida}");
    
  }

}