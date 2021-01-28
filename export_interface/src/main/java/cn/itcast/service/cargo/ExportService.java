package cn.itcast.service.cargo;

import cn.itcast.domain.cargo.Export;
import cn.itcast.domain.cargo.ExportExample;
import cn.itcast.vo.ExportResult;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface ExportService {

    Export findById(String id);

    void save(Export export);

    void update(Export export);

    void delete(String id);

	PageInfo findAll(ExportExample example, int page, int size);

    void exportE(String id);

    List<Export> findAll(ExportExample exportExample);

    void updateE(ExportResult exportResult);
}
