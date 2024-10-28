package com.example.competitionsystem.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Testdata {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne // 外键，关联题目
    private Question question;

    private String zip_file_path;//每道题目需上传多个zip测试数据

    public void setZipFilePath(String zipFilePath) {
        this.zip_file_path = zipFilePath;
    }

    // 添加一些业务逻辑
    public boolean isValid() {
        // 检查zip文件路径是否有效
        return zip_file_path != null && !zip_file_path.isEmpty();
    }

}
