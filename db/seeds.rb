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
        longitude: "105.853507"
    },
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
    }
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
