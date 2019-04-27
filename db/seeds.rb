# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Admin", address: "Shinagawa-ku, Tokyo", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "admin@email.com", password: "123456", role: "admin")
User.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    gender: Faker::Gender.binary_type,
    phone: Faker::PhoneNumber.phone_number,
    email: "quan@email.com",
    password: "123456",
    role: "user",
)

20.times do
    User.create!(
        name: Faker::Name.name,
        address: Faker::Address.full_address,
        gender: Faker::Gender.binary_type,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        password: "123456",
        role: "user",
    )
end

places = Place.create!([
    {
        name: "Công viên thống nhất",
        description: "Nằm tại vị trí rất đẹp, tiếp giáp giữa 4 con phố Đại Cồ Việt, Lê Duẩn, Trần Nhân Tông và Nguyễn Đình Chiểu… hoạt động chính của công viên Thống Nhất là chăm sóc vườn hoa, thảm cỏ để phục vụ nhu cầu tham quan, vui chơi giải trí, thư giãn của người dân và khách du lịch. Công viên cũng được sử dụng cho thuê tổ chức các sự kiện và cho thuê kinh doanh một số nhà hàng bên trong khuôn viên…  ",
        latitude: "21.011816",
        longitude: "105.843592",
    },
    {
        name: "Rạp xiếc trung ương",
        description: "Rạp xiếc trung ương là nơi gắn rất nhiều tới kỉ niệm tuổi thơ",
        latitude: "21.017357",
        longitude: "105.842347",
    },
    {
        name: "Phố đi bộ Hà Nội",
        description: "Đến thời điểm hiện tại, phố đi bộ Hà Nội quanh Hồ Gươm đã và đang dần trở thành một trong những điểm nhấn du lịch của thủ đô, là nơi để mọi người hẹn hò, vui chơi, và chậm lại giữa những con đường hối hả đông đúc.",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Lăng Chủ Tịch Hồ Chí Minh",
        description: "Lăng chủ tịch Hồ Chí Minh, địa điểm thu hút khách du lịch nổi tiếng Hà Nội",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Hoàng Thành Thăng Long",
        description: "Địa điểm văn hóa lịch sử, nghìn năm văn hiến",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Vịnh Hạ Long",
        description: "Danh Lam thắng cảnh, một trong 7 kì quan thế giới",
        latitude: "20.8437292",
        longitude: "107.0095396",
    },
    {
        name: "Bãi biển Nha Trang",
        description: "Bạn muốn tắm biển, hãy tới Nha Trang",
        latitude: "12.2597701",
        longitude: "109.106413",
    },
    {
        name: "Phú Quốc",
        description: "Thiên đường nghĩ dưỡng",
        latitude: "10.2294015",
        longitude: "103.6772185",
    },
    {
        name: "Đà Lạt",
        description: "Thành Phố của những cặp đôi thích chia tay",
        latitude: "11.9040702",
        longitude: "108.3806815",
    },
    {
        name: "Sầm Sơn, Thanh Hóa",
        description: "Bạn muốn thưởng thức những muốn hải sản thơm ngon, hãy đến với Sầm Sơn",
        latitude: "19.7519955",
        longitude: "105.8729829",
    },
    {
        name: "Tam Đảo, Vĩnh Phúc",
        description: "Không gian mát mẻ, thích hợp những chuyến đi ngắn cuối tuần cùng Gia đình, bạn bè",
        latitude: "21.4553802",
        longitude: "105.447376",
    },
    {
        name: "Làng gốm Bát Tràng",
        description: "Cái nôi của nghề gốm sứ Việt Nam",
        latitude: "20.9761368",
        longitude: "105.9115487",
    },
    {
        name: "Chùa Một Cột",
        description: "Di tích thắng cảnh",
        latitude: "21.0358615",
        longitude: "105.8314297",
    },
    {
        name: "Hồ Ba Bể",
        description: "Cảnh quan thiên nhiên hùng vĩ, nước non trùng điệp",
        latitude: "22.4203528",
        longitude: "105.5808538",
    },
    {
        name: "Hoàng thành Huế",
        description: "Xứ Huệ mộng mơ",
        latitude: "16.4535435",
        longitude: "107.5070721",
    },
    {
        name: "Thành phố Đà Nẵng",
        description: "Festival Du lịch, thành phố du lịch miền Trung",
        latitude: "16.0472484",
        longitude: "108.1716863",
    },
    {
        name: "Vườn quốc gia Ba Vì",
        description: "Không có gì tuyệt vời hơn khi hòa mình vào không gian thiên nhiên nơi đây",
        latitude: "21.0822394",
        longitude: "105.3674493",
    },
    {
        name: "Thung Lũng Mường Hoa",
        description: "Thung lũng xinh đẹp nổi tiếng với những lối đi leo bộ xuyên qua những thửa ruộng bậc thang & làng cổ.",
        latitude: "22.3282987",
        longitude: "103.8454444",
    },
    {
        name: "Sapa, Lào Cai",
        description: "Khí hậu ôn hòa, mát mẻ...",
        latitude: "22.3476867",
        longitude: "103.7819187",
    },
    {
        name: "Cung Hữu Nghị Việt-Xô",
        description: "Nơi diễn ra những hoạt động ngày trẻ em 1/6",
        latitude: "21.0222916",
        longitude: "105.84205347",
    },
    {
        name: "Phố đi bộ Hà Nội",
        description: "Nơi diễn ra những hoạt động mới của người dân thủ đô",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Tượng Đài Lý Thái Tổ",
        description: "Nơi diễn ra những hoạt động mới của người dân thủ đô",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Bảo tàng phòng không-không quân",
        description: "Bảo tàng lịch sử ngành phòng không, không quân quân đội nhân dân Việt Nam",
        latitude: "20.9990548",
        longitude: "105.8268894",
    },
    {
        name: "Hồ Tây",
        description: "Nơi diễn ra các sự kiện văn hóa của người dân thủ đô",
        latitude: "21.0580311",
        longitude: "105.8063122",
    },
    {
        name: "Sân vận động",
        description: "Nơi diễn ra các trận đấu nhi đồng mùa hè này",
        latitude: "21.0580311",
        longitude: "105.8063122",
    },
    {
        name: "Công Viên Nước Hồ Tây",
        description: "Giải tỏa cơn nóng mùa hè",
        latitude: "21.0580311",
        longitude: "105.8063122",
    },
    {
        name: "Công Viên Bách Thảo",
        description: "Sở Thú Hà Nội",
        latitude: "21.0305802",
        longitude: "105.8033129",
    },
    {
        name: "Đại Học Bách Khoa Hà Nội",
        description: "Trường Đại Học Bách Khoa Hà Nội!",
        latitude: "21.0051014",
        longitude: "105.8434403",
    },
    {
        name: "Thung lũng Bản Xôi",
        description: "Phong cảnh thiên nhiên tuyệt đẹp, thích hợp với những buổi dã ngoại cuối tuần",
        latitude: "21.0227792",
        longitude: "104.8598688",
    },
    {
        name: "Khu du lịch Suối Tiên",
        description: "Cùng trải nghiệm những trò chơi cuối tuần",
        latitude: "10.8659051",
        longitude: "106.8007542",
    },
    {
        name: "Đồng Bằng Sông Cửu Long",
        description: "Vùng đất của Hoa Trái",
        latitude: "9.1753578",
        longitude: "105.1171302",
    },
    {
        name: "Sông Hương",
        description: "Xứ Huệ mộng mơ",
        latitude: "16.4535435",
        longitude: "107.5070721",
    },
    {
        name: "Văn Miếu- Quốc Tử Giám",
        description: "Trường Đại học đầu tiên ở Việt Nam",
        latitude: "21.0293646",
        longitude: "105.8339746",
    },
    {
        name: "Hội Lim - Bắc Ninh",
        description: "Vùng đất quan họ",
        latitude: "21.1166089",
        longitude: "105.9594107",
    },
    {
        name: "Cung Thiếu Nhi Hà Nội",
        description: "Nơi diễn ra các hoạt động giành cho thiếu nhi Hà Nội",
        latitude: "21.0285318",
        longitude: "105.853127",
    },
    {
        name: "Làng Văn Hóa các Dân Tộc",
        description: "Nơi diễn ra các hoạt động văn hóa của 54 dân tộc Việt Nam",
        latitude: "21.0373008",
        longitude: "105.4531714",
    },
    {
        name: "Làng Sen-Quê Bác",
        description: "Quê Hương Bác Hồ",
        latitude: "18.6751944",
        longitude: "105.5513191",
    },
    {
        name: "Khu du lịch Đại Nam-Bình Dương",
        description: "Trung tâm vui chơi, giải trí vùng Đông Nam Bộ",
        latitude: "11.0410641",
        longitude: "106.6251009",
    },
    {
        name: "Đền Hùng-Phú Thọ",
        description: "Nơi các vua Hùng dựng nước Văn Lang",
        latitude: "21.3664305",
        longitude: "105.3264564",
    },
    {
        name: "Time-City Vĩnh Tuy, Hai Bà Trưng Hà Nội",
        description: "Nơi tham quan, mua sắm cho gia đình dịp cuối tuần",
        latitude: "20.9943777",
        longitude: "105.8635175",
    },
    {
        name: "Bà Nà Hill",
        description: "Một Không gian tuyệt vời cho cả gia đình ngày cuối tuần",
        latitude: "15.9833329",
        longitude: "107.9789557",
    },
    {
        name: "Rạp Chiếu Phim Kim Đồng",
        description: "Nơi chiếu những bộ phim dành tặng trẻ nhỏ ngày Quốc tế Thiếu Nhi",
        latitude: "21.5833329",
        longitude: "105.7789557",
    },
    {
        name: "Phố cổ Hà Nội",
        description: "Một nơi bạn không thể không đến trong ngày cuối tuần",
        latitude: "21.5833329",
        longitude: "105.7789557",
    },
    {
        name: "Làng Tranh Đông Hồ",
        description: "Nơi những bức tranh cổ truyền vẫn được lưu giữ đến tận ngày nay",
        latitude: "21.069073",
        longitude: "106.073277",
    },
    {
        name: "Đồ sơn - Hải Phòng",
        description: "Những bãi cát vàng...",
        latitude: "20.659106",
        longitude: "106.6218291",
    },
    {
        name: "Vườn quốc gia Cúc Phương",
        description: "Vườn quốc gia đầu tiên Việt Nam, nơi bảo tồn hệ sinh thái đặc biệt",
        latitude: "20.319106",
        longitude: "105.6065419",
    },
    {
        name: "Công viên Yên Sở",
        description: "Công viên rộng nhất Hà Nội",
        latitude: "21.011816",
        longitude: "105.843592",
    },
    {
        name: "Bảo tàng lịch sử",
        description: "Nơi lưu giữ những hiện vật lịch sử",
        latitude: "21.011816",
        longitude: "105.843592",
    },
#    viet 50 cai place
])
events = Event.create!([
    {
        name: "Trải nghiệm Yosakoi",
        description: "Đây là sự kiện diễn ra nhằm giới thiệu cho các em thiếu nhi về 1 nét văn hoá của Nhật Bản",
        place_id: 3,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 1,
    }, {
        name: "Dã ngoại ở công viên Thống Nhất",
        description: "Với cây xanh và hồ trong sạch, cùng trải nghiệm các hoạt động ngoài trời",
        place_id: 1,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 5,
    }, {
        name: "Chương tình xiếc đặc biệt",
        description: "Chương trình có sự tham gia của rất nhiều nghệ sĩ xiếc nổi tiếng trong và ngoài nước. Giữa chương trình có các tiết mục biểu diễn hài và ca nhạc. Buổi diễn chỉ bán vé cho các gia đình có con nhỏ",
        place_id: 2,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan lăng Chủ Tịch Hồ Chí Minh",
        description: "129 năm ngày sinh Chủ Tịch Hồ Chí Minh(19/5/1890-19/5/2019)",
        place_id: 4,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Hội Sách Thăng Long",
        description: "Lễ hội Sách Mùa Xuân, nâng cao văn hóa đọc cho trẻ em",
        place_id: 5,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Carnaval Du Lịch Hạ Long 2018",
        description: "Lễ hội của Biển chiêm ngưỡng những màn diễu hành đường phố",
        place_id: 6,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Du Lịch Biển Nha Trang",
        description: "Tháng Du lịch Hè",
        place_id: 7,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Du Lịch Biển Phú Quốc",
        description: "Lễ Khai Mạc Du Lịch biển Phú Quốc",
        place_id: 8,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Hoa Đà Lạt",
        description: "Lễ hội Hoa Đà Lạt 2018, hòa mình vào những sắc hoa, thiên nhiên Đà Lạt",
        place_id: 9,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Du lịch Sầm Sơn",
        description: "Khai mạc Lễ hội Biển Sầm Sơn",
        place_id: 10,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Cắm trại cùng gia đình ở Tam Đảo",
        description: "Tam Đảo, địa điểm cắm trại lý tưởng cuối tuần",
        place_id: 11,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiểm Làm Gốm",
        description: "Những nét đẹp truyền thống cần được giữ gìn",
        place_id: 12,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan du lịch chùa một cột",
        description: "Địa điểm du lịch văn hóa lịch sử Hà Nội",
        place_id: 13,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "ngắm cảnh hồ ba bể",
        description: "Cùng nhau khám phá, thăm quan du lịch sinh thái hồ ba bể",
        place_id: 14,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },  {
        name: "Lễ hội du lịch miền Trung",
        description: "Cùng du lịch miền trung, cùng nhau tham quan những bãi tắm mới lạ",
        place_id: 15,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Khai mạc pháo hoa quốc tế Đà Nẵng",
        description: "Sắc đẹp Pháo hoa, cùng chiêm ngưỡng những màn pháo hoa đẹp sắc cùng gia đình",
        place_id: 16,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Cắm trại Ba Vì",
        description: "Một địa điểm khác cho những chuyến đi du lịch cuối tuần gần Hà Nội",
        place_id: 17,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiệm ngắm cảnh mường hoa",
        description: "Cùng bạn bè ngắm cảnh trên cao bằng cáp treo, một trải nghiệm khó quên",
        place_id: 18,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Chợ phiên vùng cao",
        description: "Cùng nhau đi chợ phiên!, hiểu thêm nét văn hóa dân tộc vùng cao",
        place_id: 19,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Chương trình dành cho trẻ em",
        description: "Một chương trình đặc biệt dành cho trẻ em trong ngày quốc tế trẻ em 1/6",
        place_id: 20,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Rước đèn trung thu",
        description: "Rước đèn trung thu quanh hồ Hoàn Kiếm, tạo sân chơi ngoài trời cho trẻ",
        place_id: 21,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Ngắm hoa anh đào",
        description: "Bạn thân và Gia Đình có thể chiêm ngưỡng hoa anh đào ngay tại Hà Nội trong mùa xuân này",
        place_id: 22,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tìm hiểu không quân Việt Nam",
        description: "Nâng cao hiểu biết Lịch Sử cho trẻ",
        place_id: 23,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Giao lưu văn hóa Việt-Hàn",
        description: "Giao lưu văn hóa ẩm thực Hàn Quốc",
        place_id: 24,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Giao lưu bóng đá nhi đồng toàn quốc",
        description: "Giao lưu bóng đá, tăng cường các hoạt động ngoài trời cho trẻ",
        place_id: 25,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Công viên nước",
        description: "Địa điểm không thể thiếu cho con trẻ trong mùa hè",
        place_id: 26,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan sở thú Hà Nội",
        description: "Cùng con trẻ làm quen với những con vật, một chuyến đi bổ ích dịp cuối tuần",
        place_id: 27,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Oshougatsu 2019",
        description: "Cùng tham gia lễ hội chào đón năm mới tại Nhật Bản",
        place_id: 28,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Cắm trại du lịch",
        description: "Cùng Gia Đình cắm trại dịp cuối tuần",
        place_id: 29,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    {
        name: "Khu du lịch Văn Hóa Suối Tiên",
        description: "Địa điểm du lịch, chơi trò chơi cho cả gia đình vào dịp ngày lễ",
        place_id: 30,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    {
        name: "Trải nghiệm thực tế cuộc sống miệt vườn miền Tây",
        description: "Tránh xa những ồn ào của thành phố? Bạn có muốn thử làm người nông dân? Hãy thử và cảm nhận!",
        place_id: 31,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    {
        name: "Nhã Nhạc cung đình",
        description: "Những nét đẹp truyền thống Việt Nam",
        place_id: 32,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Xin chữ đầu năm",
        description: "Một Nét đẹp văn hóa đầu năm người Việt Nam",
        place_id: 33,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Hát quan họ Bắc Ninh",
        description: "Nét đẹp truyền thống người Kinh Bắc, lưu giữ và bảo vệ nét đẹp dân tộc cho thế hệ trẻ",
        place_id: 34,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Triển lãm tranh Thiếu Nhi",
        description: "Triển lãm tranh Thiếu nhi Hà Nội. Sắc màu tuổi thơ",
        place_id: 35,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiệm văn hóa dân tộc",
        description: "Một chuyến tham quan thú vị và bổ ích, nơi các em có thể hiểu thêm những nét đặc sắc văn hóa dân tộc việt nam",
        place_id: 36,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    {
        name: "Về Thăm Quê Bác",
        description: "Một chuyến dã ngoại về thăm làng quê",
        place_id: 37,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    {
        name: "Vui chơi ở Đại Nam",
        description: "Nơi cả gia đình bạn có thể thoải mái vui chơi ngày cuối tuần",
        place_id: 38,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Về thăm quê cha đất tổ",
        description: "Tham quan, chiêm ngưỡng đỉnh núi Nghĩa Lĩnh, nơi các vua Hùng dựng nước và giữ nước",
        place_id: 39,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Chiêm ngưỡng đại dương trong khu trung tâm thương mại",
        description: "Bể cá lớn nhất Hà Nội",
        place_id: 40,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Bà nà Hill",
        description: "Thăm quan và nghỉ dưỡng cùng gia đình tại Bà nà Hill",
        place_id: 41,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Xem Phim Hoạt Hình",
        description: "Các Bộ phim Hoạt Hình hài hước, mang tính chất giáo dục",
        place_id: 42,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Ẩm thực phố Cổ",
        description: "Cùng gia đình ăn cả Hà Nội <3",
        place_id: 43,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiệm làm tranh Đông Hồ",
        description: "Cùng các bé trải nghiệm nghệ thuật làm tranh Đông Hồ",
        place_id: 44,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tắm Biển ĐỒ SƠN",
        description: "Nào ta cùng bơi!!!",
        place_id: 45,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan vườn Quốc Gia Cúc Phương",
        description: "Trải nghiệm thực tế khó quên, nơi các thành viên gia đình thể hiện sự gắn bó",
        place_id: 46,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Chào mừng ngày Quốc Tế Thiếu Nhi",
        description: "Nơi diễn ra các hoạt động ngoài trời, vui chơi giải trí dành cho trẻ nhỏ",
        place_id: 47,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tìm hiểu lịch sử Việt Nam",
        description: "Dân ta phải biết sử ta...",
        place_id: 48,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },
    # 50 cai event
])
# event tu 0 den 50. moi event them lay 1 anh
events[0].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '1.jpg')),
        filename: '1.jpg',
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'img0183-15220782296711431315793.jpg')),
        filename: 'img0183-15220782296711431315793.jpg',
    }
])
events[2].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '3.jpg')),
        filename: '3.jpg'
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '4.jpg')),
        filename: '4.jpg',
    }
])
events[1].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '2.jpg')),
    filename: '2.jpg'
])
events[3].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'lang_chu_tich.jpg')),
    filename: 'lang_chu_tich.jpg'
])
events[4].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoi-sach.jpg')),
    filename: 'hoi-sach.jpg'
])
events[5].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'Carnaval.jpg')),
    filename: 'Carnaval.jpg'
])
events[6].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'nha-trang.jpg')),
    filename: 'nha-trang.jpg'
])
events[7].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'nam-du-lich-bien-phu-quoc.jpg')),
    filename: 'nam-du-lich-bien-phu-quoc.jpg'
])

events[8].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoa-da-lat.jpg')),
    filename: 'hoa-da-lat.jpg'
])
events[9].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'le-hoi-sam-son.JPG')),
    filename: 'le-hoi-sam-son.JPG'
])
events[10].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cam-trai-tam-dao.jpg')),
    filename: 'cam-trai-tam-dao.jpg'
])
events[11].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'trai-nghiem-lam-gom.jpg')),
    filename: 'trai-nghiem-lam-gom.jpg'
])
events[12].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-du-lich.jpg')),
    filename: 'tham-quan-du-lich.jpg'
])
events[13].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'di-thuyen-tren-ho-ba-be.jpg')),
    filename: 'di-thuyen-tren-ho-ba-be.jpg'
])
events[14].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'du-lich-mien-trung.jpg')),
    filename: 'du-lich-mien-trung.jpg'
])
events[15].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'phao-hoa.jpg')),
    filename: 'phao-hoa.jpg'
])
events[16].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cam-trai-ba-vi.jpg')),
    filename: 'cam-trai-ba-vi.jpg'
])
events[17].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'kham-pha-muong-hoa.jpg')),
    filename: 'kham-pha-muong-hoa.jpg'
])
events[18].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cho-phien.jpg')),
    filename: 'cho-phien.jpg'
])
events[19].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'quoc-te-thieu-nhi.jpg')),
    filename: 'quoc-te-thieu-nhi.jpg'
])
events[20].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'mua-lan.jpg')),
    filename: 'mua-lan.jpg'
])
events[21].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoa-anh-dao.jpg')),
    filename: 'hoa-anh-dao.jpg'
])
events[22].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-bao-tang-phong-khong.Jpeg')),
    filename: 'tham-quan-bao-tang-phong-khong.Jpeg'
])
events[23].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'am-thuc-viet-han.jpeg')),
    filename: 'am-thuc-viet-han.jpeg'
])
events[24].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'giao-luu-bong-da-nhi-dong.jpg')),
    filename: 'giao-luu-bong-da-nhi-dong.jpg'
])
events[25].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cong-vien-nuoc-ho-tay.jpg')),
    filename: 'cong-vien-nuoc-ho-tay.jpg'
])
events[26].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'so-thu-ha-noi.jpg')),
    filename: 'so-thu-ha-noi.jpg'
])
events[27].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hedspi.jpg')),
    filename: 'hedspi.jpg'
])
events[28].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cam-trai.jpg')),
    filename: 'cam-trai.jpg'
])
events[29].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'suoi-tien-2.jpg')),
    filename: 'suoi-tien-2.jpg'
])
events[30].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'miet-vuon.jpg')),
    filename: 'miet-vuon.jpg'
])
events[31].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'nha-nhac-cung-dinh-hue.jpg')),
    filename: 'nha-nhac-cung-dinh-hue.jpg'
])
events[32].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'xin-chu.jpg')),
    filename: 'xin-chu.jpg'
])
events[33].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoi-lim.jpg')),
    filename: 'hoi-lim.jpg'
])
events[34].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tranh-thieu-nhi.jpg')),
    filename: 'tranh-thieu-nhi.jpg'
])
events[35].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'trai-nghiem-van-hoa.jpg')),
    filename: 'trai-nghiem-van-hoa.jpg'
])
events[36].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 've-tham-lang-sen.jpg')),
    filename: 've-tham-lang-sen.jpg'
])
events[37].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'choi-o-dai-nam.jpg')),
    filename: 'choi-o-dai-nam.jpg'
])
events[38].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-den-hung.jpg')),
    filename: 'tham-quan-den-hung.jpg'
])
events[38].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-den-hung.jpg')),
    filename: 'tham-quan-den-hung.jpg'
])
events[39].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'thuy-cung-time.jpg')),
    filename: 'thuy-cung-time.jpg'
])
events[40].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'ba-na-hill.jpg')),
    filename: 'ba-na-hill.jpg'
])
events[41].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'chieu-film.jpg')),
    filename: 'chieu-film.jpg'
])
events[42].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'am-thuc-pho-co.jpg')),
    filename: 'am-thuc-pho-co.jpg'
])
events[43].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'lam-tranh-dong-ho.jpg')),
    filename: 'lam-tranh-dong-ho.jpg'
])
events[44].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tam-bien-do-son.jpg')),
    filename: 'tam-bien-do-son.jpg'
])
events[45].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-cuc-phuong.jpg')),
    filename: 'tham-quan-cuc-phuong.jpg'
])
events[46].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'vui-choi-ngoai-troi.jpg')),
    filename: 'vui-choi-ngoai-troi.jpg'
])
events[47].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'bao-tang-lich-su.jpg')),
    filename: 'bao-tang-lich-su.jpg'
])

#place tu 0 den. them anh
#anh va su kien lay o iko-yo
places[0].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'Ho_7_Mau_4.jpg')),
    filename: 'Ho_7_Mau_4.jpg',
)
places[1].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'rap-xiec.jpeg')),
    filename: 'rap-xiec.jpeg',
)
places[2].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'pho-di-bo-ha-noi-.jpg')),
    filename: 'pho-di-bo-ha-noi-.jpg',
)
places[3].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'lang.jpg')),
    filename: 'lang.jpg',
)
places[4].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'hoang-thanh-thang-long.jpg')),
    filename: 'hoang-thanh-thang-long.jpg',
)
places[5].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ha-long-bay.jpg')),
    filename: 'ha-long-bay.jpg',
)
places[6].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'Nha_Trang.jpg')),
    filename: 'Nha_Trang.jpg',
)
places[7].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'phu_quoc.jpg')),
    filename: 'phu_quoc.jpg',
)
places[8].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'dalat.jpg')),
    filename: 'dalat.jpg',
)
places[9].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'sam-son.jpg')),
    filename: 'sam-son.jpg',
)
places[10].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'tam-dao.jpg')),
    filename: 'tam-dao.jpg',
)
places[11].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bat-trang.jpg')),
    filename: 'bat-trang.jpg',
)
places[12].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'chua-mot-c.jpg')),
    filename: 'chua-mot-c.jpg',
)
places[13].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ho-ba-be.jpg')),
    filename: 'ho-ba-be.jpg',
)
places[14].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'kinhthanhhue.jpg')),
    filename: 'kinhthanhhue.jpg',
)
places[15].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'da-nang.jpg')),
    filename: 'da-nang.jpg',
)
places[16].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ba-vi.jpg')),
    filename: 'ba-vi.jpg',
)
places[17].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'muong-hoa.jpg')),
    filename: 'muong-hoa.jpg',
)
places[18].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'sapa.jpg')),
    filename: 'sapa.jpg',
)
places[19].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cung-huu-nghi-viet-xo.jpg')),
    filename: 'cung-huu-nghi-viet-xo.jpg',
)
places[20].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ho-hoan-kiem.jpg')),
    filename: 'ho-hoan-kiem.jpg',
)
places[21].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ly-thai-to.jpg')),
    filename: 'ly-thai-to.jpg',
)
places[22].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bao-tang-khong-quan.jpg')),
    filename: 'bao-tang-khong-quan.jpg',
)
places[23].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ho-tay.jpg')),
    filename: 'ho-tay.jpg',
)
places[24].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'san-van-dong.jpg')),
    filename: 'san-van-dong.jpg',
)
places[25].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cong-vien-ho-tay.jpg')),
    filename: 'cong-vien-ho-tay.jpg',
)
places[26].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cong-vien-thu-le.jpg')),
    filename: 'cong-vien-thu-le.jpg',
)
places[27].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'hust.jpg')),
    filename: 'hust.jpg',
)
places[28].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ban-xoi.jpg')),
    filename: 'ban-xoi.jpg',
)
places[29].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'suoi-tien.jpg')),
    filename: 'suoi-tien.jpg',
)
places[30].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'mien-tay.png')),
    filename: 'mien-tay.png',
)
places[31].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'kinhthanhhue.jpg')),
    filename: 'kinhthanhhue.jpg',
)
places[32].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'Van-Mieu-2.jpg')),
    filename: 'Van-Mieu-2.jpg',
)
places[33].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bac-ninh.png')),
    filename: 'bac-ninh.png',
)
places[34].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cung-thieu-nhi.jpg')),
    filename: 'cung-thieu-nhi.jpg',
)
places[35].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'lang-van-hoa-dan-toc.jpg')),
    filename: 'lang-van-hoa-dan-toc.jpg',
)
places[36].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'lang-sen.jpg')),
    filename: 'lang-sen.jpg',
)
places[37].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'dai-nam.jpg')),
    filename: 'dai-nam.jpg',
)
places[38].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'den-hung.jpg')),
    filename: 'den-hung.jpg',
)
places[39].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'time-city.jpg')),
    filename: 'time-city.jpg',
)
places[40].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ba-na-hill.jpeg')),
    filename: 'ba-na-hill.jpeg',
)
places[41].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'film.jpg')),
    filename: 'film.jpg',
)
places[42].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ho-hoan-kiem-1.png')),
    filename: 'ho-hoan-kiem-1.png',
)
places[43].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'lang-tranh-dong-ho.jpg')),
    filename: 'lang-tranh-dong-ho.jpg',
)
places[44].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'do-son.jpg')),
    filename: 'do-son.jpg',
)
places[45].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cuc-phuong.jpg')),
    filename: 'cuc-phuong.jpg',
)
places[46].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'cong-vien-yen-so.jpg')),
    filename: 'cong-vien-yen-so.jpg',
)
places[47].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bao-tang-lích-su.png')),
    filename: 'bao-tang-lich-su.png',
)
