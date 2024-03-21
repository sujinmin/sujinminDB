package com.movie.filmmatch.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.movie.filmmatch.vo.GoodsVo;

/**
 * 굿즈 상품에 대한 서비스 객체
 */
@Service
public interface GoodsService {
 /** 굿즈 리스트 출력 */
 public Map<String,List<GoodsVo>> select_list();
 public GoodsVo selectOne(int goods_idx);

 /** 굿즈 등록 
  * 재고 테이블에 
  데이터를 어찌넣어야 할까 고민 중입니다 
 */
 public int goods_insert(GoodsVo vo);   
 /**굿즈 삭제(상품 전부삭제? 아니면 삭제만 하고 재고는 그대로?) */
 public int goods_delete(int goods_idx);
 /** 굿즈 정보 수정할 때, 재고량도 추가해야 할까? */
 public int goods_update(GoodsVo vo);  
 


}
