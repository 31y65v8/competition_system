package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Testdata;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface TestdataRepository extends JpaRepository<Testdata, Long>{
    // 未来可以添加更多自定义查询方法
    List<Testdata> findByQuestionId(int questionid);
}
