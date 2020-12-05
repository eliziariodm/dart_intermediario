import 'dart:collection';

void main() {
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  Set listaSemDuplicados = pessoas.toSet();

  print('1 - Remover os duplicados');
  print('');

  listaSemDuplicados.forEach((e) {
    print(e);
  });

  print('');
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  print(' ');

  var listaComMasculinos =
      listaSemDuplicados.where((e) => e.contains('Masculino'));
  print('Pessoas do sexo masculino: ${listaComMasculinos.length}');

  var listaComFemininos =
      listaSemDuplicados.where((e) => e.contains('Feminino'));
  print('Pessoas do sexo feminino: ${listaComFemininos.length}');

  print('');
  print('''3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
   e mostre a quantidade de pessoas com mais de 18 anos''');
  print('');

  List listaSemPipe = [];
  List listaComMaioridade = [];
  int idade = 0;
  SplayTreeSet listaMaisVelho = SplayTreeSet();

  for (var lista in listaSemDuplicados) {
    listaSemPipe = lista.split('|');
    listaMaisVelho.add(listaSemPipe[1]);
    idade = int.parse(listaSemPipe[1]);
    if (idade > 18) {
      listaComMaioridade.add(listaSemPipe.join('|'));
    }
  }

  listaComMaioridade.forEach((e) {
    print(e);
  });

  print('');
  print(
      'Quantidade de pessoas maiores de 18 anos: ${listaComMaioridade.length}');

  print('');
  print('4 - Encontre a pessoa mais velha');
  print('');
  for (var lista in listaSemDuplicados) {
    listaSemPipe = lista.split('|');
    if (listaSemPipe.any((e) => e == listaMaisVelho.last)) {
      print(listaSemPipe);
    }
  }
}
