package com.movie.filmmatch.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.filmmatch.dao.GoodsDao;
import com.movie.filmmatch.vo.GoodsVo;
import java.util.List;
import java.util.Map;
@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    GoodsDao goods_dao;


    @Override
    public Map<String,List<GoodsVo>> select_list() {   
        Map<String,List<GoodsVo>> map=new HashMap<>();
        
        List<GoodsVo> goods_contents=goods_dao.selectList();
        map.put("goods_contents", goods_contents);
    
        return map;
    }

    /**
     * 상품 상세보기
     */
    @Override
    public GoodsVo selectOne(int goods_idx) {
        GoodsVo vo=goods_dao.selectOne(goods_idx);
        return vo;
    }

    /**
     * 재고 테이블에 직빵으로 집어넣을 지, 아니면 후처리할지는...흐음 나중에 보자
     */
    @Override
    public int goods_insert(GoodsVo vo) {
        int res=goods_dao.insert(vo);
        return res;
    }

    @Override
    public int goods_delete(int goods_idx) {
       
        return 0;
    }

    @Override
    public int goods_update(GoodsVo vo) {
       
        return 0;
    }
}
