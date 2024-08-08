package com.mmt.MyMusicTrade.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mmt.MyMusicTrade.model.Fileupload;
import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.service.Music_infoService;
import com.mmt.MyMusicTrade.util.FileUploadUtil;

@Controller
@RequestMapping("/music_info/{role}/add/{userID}")
public class FileuploadController {

    @Autowired
    @Qualifier("fileUploadPath")
    private String uploadPath;

    @Autowired
    private Music_infoService service;

    @ResponseBody
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    String upload(Music_info item, @RequestParam("article_file") List<MultipartFile> Fileupload,
            HttpServletRequest request) {

        List<Fileupload> fileupload = new ArrayList<>();
        String strResult = "{ \"result\":\"FAIL\" }";

        try {
            // 파일이 있을 때 탄다.
            if (Fileupload.size() > 0 && !Fileupload.get(0).getOriginalFilename().equals("")) {

                for (MultipartFile file : Fileupload) {
                    try {
                        File targetFile = FileUploadUtil.saveFile(file, uploadPath);
                        // 파일 업로드 정보를 Fileupload 모델에 추가
                        Fileupload fileUploadModel = new Fileupload();
                        fileUploadModel.setFilename(targetFile.getName());
                        fileUploadModel.setUuid(UUID.randomUUID().toString());
                        fileUploadModel.setFileExtension(
                        targetFile.getName().substring(targetFile.getName().lastIndexOf(".") + 1));
                        fileupload.add(fileUploadModel);
                    } catch (Exception e) {
                        // 파일 업로드 중 오류 발생 시 처리
                        e.printStackTrace();
                        strResult = "{ \"result\":\"FAIL\" }";
                        return strResult;
                    }
                }
                strResult = "{ \"result\":\"OK\" }";
            }
            // 파일 아무 것도 첨부 안했을 때 탄다.
            else
                strResult = "{ \"result\":\"OK\" }";
        } catch (Exception e) {
            e.printStackTrace();
        }

        item.setFileupload(fileupload);
        service.add(item);

        return strResult;
    }
}
