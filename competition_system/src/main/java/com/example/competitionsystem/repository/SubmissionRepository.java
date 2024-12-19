package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Submission;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubmissionRepository extends JpaRepository<Submission, Long> {
    // 未来可以添加更多自定义查询方法
}
