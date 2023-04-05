//
//  User.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 05.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                firstName: "Ярослав",
                lastName: "Бельдин",
                age: "26",
                gender: .male,
                avatar: "Iaroslav",
                teacherName: "Алексей",
                biography: """
                Родился и вырос в Тольятти. Окончил 9 классов в физико-математическом лицее и получил специальность "Банковское дело" в колледже. Затем отбывал срочную службу в артиллерийском училище.
            
                С 18 лет и до вступления на службу зарабатывал играя в покер. После службы решил попробовать себя в предпринимательстве, оказывая услуги и изготавливая изделия на лазерном станке. Но мой "бизнес" не оправдал ожиданий, и мне пришлось найти работу, чтобы заработать на новый проект - летнюю точку со сладкой ватой и мороженым на набережной. Проработав по специальности два месяца и заняв денег, я смог успешно реализовать свою идею.
            
                После окончания сезона мой товарищ познакомил меня со ставками, и с тех пор я занимаюсь ими уже 4 года. В течение этого времени открывал нескольких магазинов с электронным сигаретами и кальянами, но спустя пол года из за изменения законодательства работать стало не удобно и решил закрыться.
            
                В какой то момент перебрались с женой ради смены обстановки в Санкт Петербург, но после отпуска в Турции, решили пожить некоторое время в Алании. Однако, в процессе пребывания мы осознали, что хотим вернуться в Санкт-Петербург и строить свою жизнь там.
            """
            )
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let age: String
    let gender: Gender
    let avatar: String
    let teacherName: String
    let biography: String
    
    enum Gender {
        case male
        case female
    }
}
