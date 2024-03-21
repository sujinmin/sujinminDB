package com.movie.filmmatch.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

/**
 * goods에 대한 데이터 객체
 */
@Data
@Alias("goods")
public class GoodsVo {

    private int goods_idx; // 상품 식별을 위한 고유 ID
    private String goods_name; // 상품명
    private String goods_contents; // 상품 내용에 대한 HTML 코드 또는 텍스트 형태의 데이터
    private int goods_price; // 상품 가격
    private int goods_quantity; // 재고 수량
    private String release_date; // 상품 출시일
    private String goods_brand; // 제조사 또는 브랜드
    private String image_url; // 상품 이미지 URL
    private double goods_rating; // 상품의 평가나 별점
    private int goods_reviews; // 상품에 대한 리뷰 수
    private boolean goods_availability; // 상품의 입고 여부

}