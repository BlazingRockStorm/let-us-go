# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Admin", address: "Shinagawa-ku, Tokyo", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "admin@email.com", password: "123456", role: "admin")
User.create!(name: "organizer 1", address: "Hanoi", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "organizer1@email.com", password: "123456", role: "organizer")
User.create!(name: "organizer 2", address: "Hanoi", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "organizer2@email.com", password: "123456", role: "organizer")
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
    }, {
        name: "Rạp xiếc trung ương",
        description: "Rạp xiếc trung ương là nơi gắn rất nhiều tới kỉ niệm tuổi thơ",
        latitude: "21.017357",
        longitude: "105.842347",
    }, {
        name: "Phố đi bộ Hà Nội",
        description: "Đến thời điểm hiện tại, phố đi bộ Hà Nội quanh Hồ Gươm đã và đang dần trở thành một trong những điểm nhấn du lịch của thủ đô, là nơi để mọi người hẹn hò, vui chơi, và chậm lại giữa những con đường hối hả đông đúc.",
        latitude: "21.029914",
        longitude: "105.853507"
    }, {
        name: "Làng gốm Bát Tràng",
        description: "Làng gốm Bát Tràng nằm ở ven sông Hồng, thuộc huyện Gia Lâm ngoại thành Hà Nội. Cái tên Bát Tràng có nghĩa là “cái sân lớn”, và làng có lịch sử hình thành từ thời Lê. Đây là làng gốm lâu đời nổi tiếng nhất ở Việt Nam, cũng như là địa điểm mà du khách trong và ngoài nước không thể không một lần ghé thăm. Làng gốm Bát Tràng chuyên sản xuất những loại gốm sứ đa dạng cả về chủng loại lẫn kiểu dáng. Điều thú vị nhất khi đến Bát Tràng là các bạn có thể trực tiếp ngắm nhìn các nghệ nhân làm ra những sản phẩm gốm đầy tinh tế hay được tự tay nặn những sản phẩm theo ý thích.",
        latitude: "20.978423",
        longitude: "105.9115073"
    }, {
        name: "Cung Hữu Nghị Việt-Xô",
        description: "Cung Văn hoá Lao động Hữu nghị Việt - Xô nằm tại 91 phố Trần Hưng Đạo, quận Hoàn Kiếm, Hà Nội, Việt Nam là một công trình kiến trúc, văn hóa dành cho các buổi biểu diễn nghệ thuật, các hội nghị khoa học, triển lãm... Công trình được khởi công vào ngày 1 tháng 1 năm 1978 trên nền cũ của nhà Đấu Xảo Hà Nội (bị bom phá hủy trong Thế chiến lần thứ 2), tới ngày 1 tháng 9 năm 1985 thì hoàn thành. Nguồn tài chính xây dựng công trình do Hội đồng Trung ương các Công đoàn Liên Xô trước đây trao tặng nên được đặt tên là Cung Văn hoá Lao động Hữu nghị Việt - Xô. Công trình được kiến trúc sư Liên Xô G. G. Isakovich thiết kế. Cung văn hóa nằm trên một diện tích 3,2 ha, gồm ba khối nhà chính: nhà biểu diễn, nhà học tập, nhà kỹ thuật... với tổng cộng 120 phòng. Trong số này nhà biểu diễn là tòa nhà lớn nhất, cao 4 tầng, cao 33 mét, dài 96 mét, rộng 60 mét. Phía sau là nhà học tập cao 3 tầng, có cả thư viện và các phòng của các câu lạc bộ sinh hoạt thường xuyên theo chủ đề.",
        latitude: "21.0222916",
        longitude: "105.84205347",
    }, {
        name: "Tượng Đài Lý Thái Tổ",
        description: "Nơi diễn ra những hoạt động mới của người dân thủ đô",
        latitude: "21.029914",
        longitude: "105.853507",
    }, {
        name: "Bảo tàng phòng không-không quân",
        description: "Bảo tàng lịch sử ngành phòng không, không quân quân đội nhân dân Việt Nam",
        latitude: "20.9990548",
        longitude: "105.8268894",
    }, {
        name: "Công Viên Nước Hồ Tây",
        description: " Công viên Hồ Tây - Tổ hợp khu vui chơi giải trí hiện đại, đắc địa với hai mặt tiếp giáp hồ Tây thơ mộng và khuôn viên rộng với diện tích hơn 8,1 ha. Cơ hội để thỏa sức vui chơi và khám phá nhiều trò chơi thú vị phù hợp với mọi độ tuổi tại Công viên",
        latitude: "21.0580311",
        longitude: "105.8063122",
    }, {
        name: "Công Viên Bách Thảo",
        description: "Công viên Bách Thảo là một công viên cây xanh nằm ở phía tây bắc thủ đô Hà Nội, được thành lập từ những năm đầu người Pháp đặt chân đến Việt Nam trong cuộc xâm lăng đô hộ và thuộc địa. Hiện nay vườn được ví như lá phổi xanh của Hà Nội, nơi những người yêu thiên nhiên được đắm mình trong màu xanh cây lá và những âm thanh của rừng, với những cây cổ thụ lớn bằng vòng tay mấy người ôm là chứng nhân của nhiều biến cố trong lịch sử thủ đô.",
        latitude: "21.0403144",
        longitude: "105.8312917",
    }, {
        name: "Công Viên Thủ Lệ",
        description: "Hà Nội không chỉ là thủ đô cổ kính tập trung nhiều di sản văn hóa của đất nước mà nơi đây còn tập trung nhiều không gian xanh, sạch và thoáng mát. Trong số những địa điểm đó, có một nơi nằm giữa lòng thủ đô vừa có cây xanh vừa có ao rộng và luôn xanh mát, đó là công viên Thủ Lệ. Công viên là bán đảo nằm bên trong một hồ nước lớn. Muốn đi qua công viên du khách phải qua cầu. Vì hình dáng công viên là một mảnh đất hình oval rất giống một giọt lệ được bao bọc bởi hồ nước lớn nên người dân Hà Nội lấy cái tên Thủ Lệ đặt tên cho công viên, mang ý nghĩa bảo vệ giọt lệ xanh quý giá của thủ đô.",
        latitude: "21.0305802",
        longitude: "105.8055016",
    }, {
        name: "Vườn quốc gia Cúc Phương",
        description: "Vườn quốc gia đầu tiên Việt Nam, nơi bảo tồn hệ sinh thái đặc biệt",
        latitude: "20.319106",
        longitude: "105.6065419",
    }, {
        name: "Rạp Chiếu Phim Kim Đồng",
        description: "Nơi chiếu những bộ phim dành tặng trẻ nhỏ ngày Quốc tế Thiếu Nhi",
        latitude: "21.5833329",
        longitude: "105.7789557",
    }, {
        name: "Phố cổ Hà Nội",
        description: "Một nơi bạn không thể không đến trong ngày cuối tuần",
        latitude: "21.5833329",
        longitude: "105.7789557",
    }, {
        name: "Làng Tranh Đông Hồ",
        description: "Nơi những bức tranh cổ truyền vẫn được lưu giữ đến tận ngày nay",
        latitude: "21.069073",
        longitude: "106.073277",
    }, {
        name: "Hoàng Thành Thăng Long",
        description: "Địa điểm văn hóa lịch sử, nghìn năm văn hiến",
        latitude: "21.029914",
        longitude: "105.853507",
    }, {
        name: "Vườn quốc gia Ba Vì",
        description: "Không có gì tuyệt vời hơn khi hòa mình vào không gian thiên nhiên nơi đây",
        latitude: "21.0822394",
        longitude: "105.3674493",
    }, {
        name: "Time-City Vĩnh Tuy, Hai Bà Trưng Hà Nội",
        description: "Nơi tham quan, mua sắm cho gia đình dịp cuối tuần",
        latitude: "20.9943777",
        longitude: "105.8635175",
    }, {
        name: "Đồng Mô",
        description: "1 nơi tốt để diễn ra các hoạt động cắm trại",
        latitude: "21.0373008",
        longitude: "105.4531714",
    }, {
        name: "Bãi biển Đồ Sơn",
        description: "Đi du lịch Đồ Sơn, bạn có nhiều lựa chọn vui chơi, bạn có thể tắm biển và vui chơi trên bãi biển, tham quan các danh lam thắng cảnh ở khu vực Đồ Sơn.",
        latitude: "20.659106",
        longitude: "106.6218291",
    }, {
        name: "Bảo tàng lịch sử Quốc gia",
        description: "Nơi lưu giữ những hiện vật lịch sử của Việt Nam",
        latitude: "21.011816",
        longitude: "105.843592",
    }, {
        name: "Bảo tàng Dân tộc học Việt Nam",
        description: "Bảo tàng Dân tộc học Việt Nam là tổ chức sự nghiệp trực thuộc Viện Hàn lâm Khoa học xã hội Việt Nam, có chức năng nghiên cứu khoa học, sưu tầm, kiểm kê, bảo quản, phục chế hiện vật và tư liệu về các dân tộc; tổ chức trưng bày,trình diễn và những hình thức hoạt động khác nhằm giới thiệu, phổ biến và giáo dục về các giá trị lịch sử, văn hoá của các dân tộc trong và ngoài nước; cung cấp tư liệu nghiên cứu về các dân tộc cho các ngành; đào tạo cán bộ nghiên cứu, nghiệp vụ, quản lý về nhân học bảo tàng.",
        latitude: "21.040633",
        longitude: "105.7985155",
    }, {
        name: "Vincom Ice Rink Royal City",
        description: "Sân trượt băng đầu tiên tại Việt nam, có huấn luyện viên chuyên nghiệp.",
        latitude: "21.0032842",
        longitude: "105.8153112",
    },
])

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
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'du-lich-lang-gom-bat-trang-1.jpg')),
    filename: 'du-lich-lang-gom-bat-trang-1.jpg',
)
places[4].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '7.jpg')),
    filename: '7.jpg',
)
places[5].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '1.jpg')),
    filename: '1.jpg',
)
places[6].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '2.jpg')),
    filename: '2.jpg',
)
places[7].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '3.jpg')),
    filename: '3.jpg',
)
places[8].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '4.jpg')),
    filename: '4.jpg',
)
places[9].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '5.jpg')),
    filename: '5.jpg',
)
places[10].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '8.jpg')),
    filename: '8.jpg',
)
places[11].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '6.jpg')),
    filename: '6.jpg',
)
places[12].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '9.jpg')),
    filename: '9.jpg',
)
places[13].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '10.jpg')),
    filename: '10.jpg',
)
places[14].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '11.jpg')),
    filename: '11.jpg',
)
places[15].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '12.jpg')),
    filename: '12.jpg',
)
places[16].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '13.jpg')),
    filename: '13.jpg',
)
places[17].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'dong-mo.jpg')),
    filename: 'dong-mo.jpg',
)
places[18].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '14.jpg')),
    filename: '14.jpg',
)
places[19].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', '15.png')),
    filename: '15.png',
)
places[20].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bt1.jpg')),
    filename: 'bt1.jpg',
)
places[21].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'royal-city-ice-rink.jpg')),
    filename: 'royal-city-ice-rink.jpg',
)

tags = Tag.create!([
    {name: "yosakoi"},
    {name: "Trải nghiệm"},
    {name: "Buổi biểu diễn"},
    {name: "Tham quan"},
    {name: "Thiên nhiên"},
    {name: "Khám phá"},
])

events = Event.create!([
    {
        name: "Trải nghiệm Yosakoi",
        description: "Đây là sự kiện diễn ra nhằm giới thiệu cho các em thiếu nhi về 1 nét văn hoá của Nhật Bản",
        place_id: 3,
        start: 5.days.from_now,
        end: 6.days.from_now,
        hidden_status: false,
        age_filter: 1,
        tag_ids: [1, 2, 3]
    }, {
        name: "Dã ngoại ở công viên Thống Nhất",
        description: "Với cây xanh và hồ trong sạch, cùng trải nghiệm các hoạt động ngoài trời",
        place_id: 1,
        start: 5.days.from_now,
        end: 6.days.from_now,
        hidden_status: false,
        age_filter: 5,
        tag_ids: [4, 5, 6]
    }, {
        name: "Chương trình xiếc đặc biệt",
        description: "Chương trình có sự tham gia của rất nhiều nghệ sĩ xiếc nổi tiếng trong và ngoài nước. Giữa chương trình có các tiết mục biểu diễn hài và ca nhạc. Buổi diễn chỉ bán vé cho các gia đình có con nhỏ",
        place_id: 2,
        start: 5.days.from_now,
        end: 6.days.from_now,
        hidden_status: false,
        age_filter: 6,
        tag_ids: [3]
    }, {
        name: "Trải nghiệm tự tay làm đồ gốm",
        description: "1 trong những cách sáng tạo để có thể cho trẻ nhỏ học nghệ thuật",
        place_id: 4,
        start: 5.days.from_now,
        end: 6.days.from_now,
        hidden_status: false,
        age_filter: 5,
        tag_ids: [2]
    }, {
        name: "Khám phá rừng Cúc Phương",
        description: "Dịp để các em nhỏ tìm hiểu với thiên nhiên và tham quan Cây chò ngàn năm",
        place_id: 11,
        start: 10.days.from_now,
        end: 12.days.from_now,
        hidden_status: false,
        age_filter: 8,
        tag_ids: [2,4,5]
    }, {
        name: "Làm quen với nhạc cụ dân tộc",
        description: "Sự kiện tổ chức nhằm cho các em thiếu nhi làm quen với các nhạc cụ dân tộc và thử 1 vài nhạc cụ",
        place_id: 21,
        start: 10.days.from_now,
        end: 11.days.from_now,
        hidden_status: false,
        age_filter: 8,
        tag_ids: [2,4]
    }, {
        name: "Xem múa rối nước",
        description: "Sự kiện tổ chức nhằm cho các em thiếu nhi làm quen với nghệ thuật múa rối nước",
        place_id: 21,
        start: 12.days.from_now,
        end: 13.days.from_now,
        hidden_status: false,
        age_filter: 4,
        tag_ids: [2,4]
    }, {
        name: "Trò chơi vận động tổng hợp",
        description: "Sự kiện tổ chức nhằm cho các em thiếu nhi vận động",
        place_id: 18,
        start: 12.days.from_now,
        end: 13.days.from_now,
        hidden_status: false,
        age_filter: 4,
        tag_ids: [2]
    }, {
        name: "Chương trình hài thiếu nhi",
        description: "Có sự góp mặt của các nghệ sĩ hài nổi tiếng",
        place_id: 5,
        start: 12.days.from_now,
        end: 13.days.from_now,
        hidden_status: false,
        age_filter: 4,
        tag_ids: [3]
    }, {
        name: "Chương trình ca nhạc thiếu nhi",
        description: "Có sự góp mặt của các ca sĩ nổi tiếng",
        place_id: 5,
        start: 7.days.from_now,
        end: 8.days.from_now,
        hidden_status: false,
        age_filter: 4,
        tag_ids: [3]
    }, {
        name: "Trò chơi vận động tổng hợp bãi biển",
        description: "Sự kiện tổ chức nhằm cho các em thiếu nhi vận động",
        place_id: 19,
        start: 12.days.from_now,
        end: 13.days.from_now,
        hidden_status: false,
        age_filter: 4,
        tag_ids: [2]
    },
])
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
events[1].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '2.jpg')), filename: '2.jpg'])
events[3].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '6.jpg')),
        filename: '6.jpg'
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '5.png')),
        filename: '5.png',
    }
])
events[4].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '7.jpg')),
        filename: '7.jpg'
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '8.jpg')),
        filename: '8.jpg',
    }
])
events[5].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '9.jpg')),
        filename: '9.jpg'
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '10.jpg')),
        filename: '10.jpg',
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '11.jpg')),
        filename: '11.jpg',
    }
])
events[7].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '13.jpg')), filename: '13.jpg'])
events[6].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '12.jpg')), filename: '12.jpg'])
events[8].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '14.jpg')), filename: '14.jpg'])
events[9].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '15.jpg')), filename: '15.jpg'])
events[10].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '16.jpeg')), filename: '16.jpeg'])

200.times do
    Comment.create!(
        user_id: rand(4..24),
        event_id: rand(1..10),
        content: Faker::Lorem.sentence,
    )
end

40.times do
    Attendance.create!(
        user_id: rand(4..24),
        event_id: rand(1..10),
        adults_number: rand(1..2),
        children_number: rand(1..5),
    )
end
