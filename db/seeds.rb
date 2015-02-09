# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faculty.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('faculties')

faculties = Faculty.create([
  {name: "Faculté de théologie", abv: 'TECO'},
  {name: "Faculté de droit et de criminologie", abv: 'DRT'},
  {name: "Faculté des sciences économiques, sociales, politiques et de communication", abv: 'ESPO'},
  {name: "Louvain School of Management", abv: 'LSM'},
  {name: "Faculté de philosophie, arts et lettres", abv: 'FIAL'},
  {name: "Faculté de psychologie et des sciences de l'éducation", abv: 'PSP'},
  {name: "Faculté de médecine et médecine dentaire", abv: 'MEDE'},
  {name: "Faculté de pharmacie et des sciences biomédicales", abv: 'FASB'},
  {name: "Faculté de santé publique", abv: 'FSP'},
  {name: "Faculté des sciences de la motricité", abv: 'FSM'},
  {name: "Faculté des Sciences", abv: 'SC'},
  {name: "École Polytechnique de Louvain", abv: 'EPL'},
  {name: "Faculté d'architecture, d'ingénierie architecturale, d'urbanisme", abv: 'LOCI'},
  {name: "Ingénierie biologique, agronomique et environnementale", abv: 'AGRO'},
  {name: "Autres", abv: 'AUTRES'},
  {name: "Ecole de Communication", abv: "COMU"},
  {name: "Economics School of Louvain", abv: "ECON"},
  {name: "Ecole des Sciences politiques et sociales", abv: "PSAD"}
])
