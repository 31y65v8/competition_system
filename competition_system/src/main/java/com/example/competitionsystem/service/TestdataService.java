package com.example.competitionsystem.service;

import com.example.competitionsystem.model.Testdata;
import com.example.competitionsystem.repository.TestdataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestdataService {

    @Autowired
    private TestdataRepository  testdataRepository;

    // 根基题目id获取一道题的所有测试数据
    public List<Testdata> getAllTestdataByQuestionid(int questionid) {
        return testdataRepository.findByQuestionId(questionid); // 获取所有测试数据
    }



    // 创建新的测试数据
    public void createTestData(Testdata testdata) {
        if (testdata.isValid()) { // 调用模型中的方法验证地址是否有效
            testdataRepository.save(testdata);
        } else {
            throw new IllegalArgumentException("Invalid test data.");
        }
    }
    //测试数据可以增加，但不能减少或修改


}
