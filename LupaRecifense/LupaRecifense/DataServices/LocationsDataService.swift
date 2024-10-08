//
//  LocationsDataService.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import Foundation
import MapKit

class LocationsDataService{
    static let locations: [Location] = [
        //Pontos Turisticos
        Location(name: "Parque das Esculturas Francisco Brennand", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.064660, longitude: -34.869499), description: "Um verdadeiro museu a céu aberto, com esculturas gigantescas e paisagismo exuberante, criadas pelo renomado artista plástico Francisco Brennand.", adress: "Dique do Recife, Brasilia Teimosa, Recife - PE, 50030-150, Brazil", imageNames: ["parqueesculturas"], link: "", tagPlace: getTagPlace(tg: .pontos_turisticos)),
        Location(name: "Marco Zero", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.063167, longitude: -34.871143), description: "O Marco Zero é o coração pulsante do Recife, um ponto de referência obrigatório para quem visita a cidade. Localizado na confluência dos rios Capibaribe e Beberibe, este local histórico abriga o Pátio de São Pedro, um espaço cultural que reúne monumentos, museus e construções coloniais. É aqui que a história e a cultura pernambucana se encontram, oferecendo aos visitantes uma experiência única e autêntica.", adress: "Avenida Alfredo Lisboa, Centro, Recife - PE, 50030-150, Brazil", imageNames: ["marcozero"], link: "", tagPlace: getTagPlace(tg: .pontos_turisticos)),
        
        //Museus e Centros Culturais
        Location(
            name: "Instituto Ricardo Brennand",
            cityName: "Recife",
            coordinates: CLLocationCoordinate2D(latitude: -8.065678, longitude: -34.964536),
            description: "O Instituto Ricardo Brennand, também conhecido como Castelo de Brennand, é uma instituição cultural brasileira sem fins lucrativos localizada na cidade do Recife, capital do estado de Pernambuco. Foi eleito o melhor museu da América do Sul pelo site de viagens TripAdvisor.", adress: "Alameda Antônio Brennand, s/n Várzea, Recife - PE, 50741-904, Brasil", imageNames: ["institutoricardobrennand"], link: "http://www.institutoricardobrennand.org.br", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        Location(name: "Oficina Cerâmica Francisco Brennand", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.052983, longitude: -34.973645), description: "A Oficina Cerâmica Francisco Brennand é muito mais do que um simples ateliê. É um verdadeiro universo artístico, onde o visitante pode mergulhar na criatividade e na genialidade de um dos maiores artistas brasileiros. Localizada na antiga fábrica de tecidos Santa Cruz, a oficina abriga um conjunto de edificações e esculturas que formam um complexo arquitetônico único, com paisagens exuberantes e obras de arte espalhadas por todos os cantos.", adress: "Rua Diogo de Vasconcelos, S/N, Varzea, Recife - PE, 50980-410, Brazil", imageNames: ["oficinafranciscobrennand"], link: "https://ceramicabrennand.com/", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        Location(name: "Paço do Frevo", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.061487, longitude: -34.871609), description: "O Paço do Frevo é um espaço cultural dedicado à difusão, pesquisa, lazer e formação nas áreas da dança e música do frevo localizado na cidade do Recife, capital de Pernambuco, Brasil. Surgiu através de uma parceria entre a Prefeitura do Recife, a Fundação Roberto Marinho, o IPHAN e o Governo Federal.", adress: "Praça do Arsenal da Marinha, S/N, Centro, Recife - PE, 50030-360, Brazil", imageNames: ["pacofrevo"], link: "https://pacodofrevo.org.br", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        Location(name: "Cais do Sertão", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.060324, longitude: -34.869989), description: "O Cais do Sertão é um museu interativo que celebra a rica cultura do sertão nordestino, em especial a obra do Rei do Baião, Luiz Gonzaga. Localizado no antigo Armazém 10 do Porto do Recife, o museu oferece uma experiência imersiva, com exposições que exploram a música, a dança, a culinária e a história da região. Através de recursos audiovisuais e interativos, o visitante pode vivenciar a atmosfera do sertão e conhecer a vida e a obra de Luiz Gonzaga de forma emocionante e educativa.", adress: "Avenida Alfredo Lisboa, S/N, Recife Antigo, Recife - PE, 50030-150, Brasil", imageNames: ["caisdosertao"], link: "https://caisdosertao.pe.gov.br", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        Location(name: "Museu do Homem do Nordeste", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.030531, longitude: -34.925644), description: "O Museu do Homem do Nordeste é um verdadeiro tesouro cultural, localizado no coração do Recife. Com um acervo riquíssimo, o museu oferece uma jornada fascinante pela história, pela arte e pelas tradições do Nordeste brasileiro. Através de exposições permanentes e temporárias, o visitante pode conhecer a diversidade cultural da região, desde a religiosidade popular até as manifestações artísticas e as lutas sociais. Um passeio pelo Museu do Homem do Nordeste é uma experiência enriquecedora para quem busca entender a alma do povo nordestino.", adress: "Av. Dezessete de Agosto, 2187 - Casa Forte, Recife - PE, 52061-540", imageNames: ["homemdonordeste"], link: "https://www.instagram.com/museudohomemdonordeste/", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        Location(name: "Casa da Cultura de Pernambuco", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.066353, longitude: -34.883390), description: "A Casa da Cultura de Pernambuco é um dos ícones culturais do Recife, abrigando um rico patrimônio histórico e artístico em suas instalações. Construída no século XIX, inicialmente como a maior cadeia do Brasil, a edificação foi adaptada e reinaugurada em 1973 como um centro de comercialização de artesanato e espaço cultural.", adress: "Rua Tobias Barreto, 404, Santo Antonio, Recife - PE, 50020-700, Brazil", imageNames: ["casadacultura"], link: "https://www.cultura.pe.gov.br/pagina/espacosculturais/casa-da-cultura/", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        
        //Parques e Praças
        Location(name: "Parque das Graças", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.045994 , longitude: -34.902828), description: "O Parque das Graças é um dos maiores projetos de revitalização urbana de Recife, localizado às margens do Rio Capibaribe. Com extensa área verde, o parque oferece diversas opções de lazer, como playground, tirolesa, áreas para piquenique e um píer flutuante. É um espaço perfeito para quem busca contato com a natureza, atividades ao ar livre e momentos de relaxamento, tudo isso no coração da cidade.", adress: "Rua Medeiros de Albuquerque, 74, Gracas, Recife - PE, 52011-120, Brazil", imageNames: ["parquedasgracas"], link: "", tagPlace: getTagPlace(tg: .parque_pracas)),
        Location(name: "Parque da Jaqueira", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.036922, longitude: -34.904772), description: "O Parque da Jaqueira é um dos maiores parques urbanos do Recife e um dos locais mais populares para quem busca lazer e atividades ao ar livre. Com uma extensa área verde, diversas opções de atividades e uma localização privilegiada, o parque é um dos cartões postais da cidade.", adress: "Rua do Futuro, 959, Jaqueira, Recife - PE, 52050-010, Brazil", imageNames: ["parquejaqueira"], link: "", tagPlace: getTagPlace(tg: .parque_pracas)),
        Location(name: "Jardim do Baobá", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.041091, longitude: -34.904031), description: "O Jardim do Baobá é um oásis urbano em Recife, com um exuberante baobá como protagonista. Localizado às margens do Rio Capibaribe, o parque oferece um espaço tranquilo para relaxar e apreciar a natureza. Com uma infraestrutura que inclui bancos, áreas para piquenique e um píer flutuante, o jardim convida à contemplação da paisagem e à conexão com o meio ambiente. É um ponto de encontro para moradores e turistas, que buscam um momento de paz no coração da cidade.", adress: "Rua Madre Loyola, 2, Jaqueira, Recife - PE, 52050-001, Brazil", imageNames: ["jardimdobaoba"], link: "", tagPlace: getTagPlace(tg: .parque_pracas))
    
    ]
    
    static let tagsToFilter: [String : TagToFilter] = [
    
        "Cafés" : TagToFilter(tagInformation: getTagPlace(tg: .cafe), showOnMap: true),
        "Parques e Praças" : TagToFilter(tagInformation: getTagPlace(tg: .parque_pracas), showOnMap: true),
        "Museus e Cultura" : TagToFilter(tagInformation: getTagPlace(tg: .museus_centros_historicos), showOnMap: true),
        "Pontos Turísticos" : TagToFilter(tagInformation: getTagPlace(tg: .pontos_turisticos), showOnMap: true),
        "Restaurantes" : TagToFilter(tagInformation: getTagPlace(tg: .restaurante), showOnMap: true),
        "Bares e Baladas" : TagToFilter(tagInformation: getTagPlace(tg: .bares_baladas), showOnMap: true)
    
    ]
}
