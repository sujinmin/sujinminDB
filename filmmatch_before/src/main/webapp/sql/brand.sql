use moviedb;
CREATE TABLE brand (
    brand_idx INT AUTO_INCREMENT PRIMARY KEY, -- 제조사 식별자
    brand_name VARCHAR(255) NOT NULL, -- 제조사명
    brand_description TEXT, -- 제조사에 대한 설명
    brand_number VARCHAR(20), -- 제조사 연락처
    brand_addr VARCHAR(255) -- 제조사 주소
);
commit;