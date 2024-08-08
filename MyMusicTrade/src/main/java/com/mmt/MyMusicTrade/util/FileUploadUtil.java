package com.mmt.MyMusicTrade.util;

import java.io.File;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtil {

    public static File saveFile(MultipartFile file, String uploadPath) throws Exception {
        try {
            String originalFileName = file.getOriginalFilename();
            String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
            String savedFileName = UUID.randomUUID() + extension;
            
            File targetDirectory = new File(uploadPath + extension + File.separator + getDirectoryByExtension(extension));
            
            File targetFile = new File(targetDirectory + savedFileName);
            
            System.out.println(targetDirectory + "><><><>><><><><><><><><><><><><><><><><>");

            // 폴더가 없으면 생성
            if (!targetDirectory.exists()) {
            	targetDirectory.mkdirs(); // 폴더 생성
            }
            
            InputStream fileStream = file.getInputStream();
            FileUtils.copyInputStreamToFile(fileStream, targetFile);

            return targetFile;
            
        } catch (Exception e) {
            throw new Exception("파일 저장 중 오류 발생", e);
        }
    }

    private static String getDirectoryByExtension(String extension) {
        if (isMp3File(extension)) {
            return "/mp3/";
        } else if (isImageFile(extension)) {
            return "/images/";
        } else if (isVideoFile(extension)) {
            return "/video/";
        } else {
            return "/other/";
        }
    }

    private static boolean isMp3File(String extension) {
        return extension.equals(".mp3") || extension.equals(".ogg");
    }

    private static boolean isImageFile(String extension) {
        return extension.equals(".jpg") || extension.equals(".jpeg") || extension.equals(".png") || extension.equals(".svg");
    }

    private static boolean isVideoFile(String extension) {
        return extension.equals(".mp4") || extension.equals(".webm") || extension.equals(".wmv") || extension.equals(".avi");
    }
}