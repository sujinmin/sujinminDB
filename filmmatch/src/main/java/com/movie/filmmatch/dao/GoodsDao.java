package com.movie.filmmatch.dao;


import org.apache.ibatis.annotations.Mapper;
import com.movie.filmmatch.vo.GoodsVo;
import java.util.*;

@Mapper
public interface GoodsDao {

    /**상품 리스트 조회 */
    public List<GoodsVo> selectList();

    public GoodsVo selectOne(int goods_idx);
    /**상품 등록 */
    public int insert(GoodsVo vo);
    /**상품 삭제*/
    //public int delete(int goods_idx);
    /**상품 수정 */
    //public int update(GoodsVo vo);

}
