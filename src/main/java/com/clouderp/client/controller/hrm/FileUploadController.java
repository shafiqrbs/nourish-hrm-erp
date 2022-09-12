package com.clouderp.client.controller.hrm;

import com.clouderp.client.Utility.StaticName;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WS on 18/07/2018.
 */
@Controller
@RequestMapping("/fileupload")
public class FileUploadController {

    @RequestMapping(value = "/file",method = RequestMethod.POST)
    public @ResponseBody String attendacneFileUpload(@RequestBody @RequestParam(value = "file") MultipartFile file,
                                                     @RequestParam(value = "token") String token) {

        if (file.isEmpty()) {
            return null;
        }

        try {
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(StaticName.FILE_UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            uploadUsingRestTemplate(path.toFile(), token);

        } catch (IOException e) {
            e.printStackTrace();
            return e.getMessage();
        }

        return "Success";
    }

    private void uploadUsingRestTemplate (File file , String token){

        String url = "http://localhost:2222/api/v1/file/?access_token="+token;
        RestTemplate template = new RestTemplate();
        MultiValueMap<String, Object> multipartMap = new LinkedMultiValueMap<>();
        multipartMap.add("file", new FileSystemResource(file));
//        multipartMap.add("file", new ClassPathResource(FILE_UPLOADED_FOLDER + fileName));

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);

        HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<MultiValueMap<String, Object>>(multipartMap, headers);
        ResponseEntity<byte[]> result = template.exchange(url, HttpMethod.POST, request, byte[].class);

        System.out.println("Request for File Upload : " + result);
    }

    @RequestMapping(value = "/filelist",method = RequestMethod.POST)
    public @ResponseBody String attendacneFileListUpload(@RequestBody @RequestParam(value = "files") MultipartFile[] files,
                                                     @RequestParam(value = "token") String token) {
        List<Path> pathList = new ArrayList<>();
        if (files.length == 0) {
            throw new RuntimeException("File not found");
        }
        try {
            for (MultipartFile file: files) {


                byte[] bytes = file.getBytes();
                Path path = Paths.get(StaticName.FILE_UPLOADED_FOLDER + file.getOriginalFilename());
                Files.write(path, bytes);
                pathList.add(path);

            }
            if(pathList.size() > 0)
                uploadListUsingRestTemplate(pathList, token);
        }catch (IOException e) {
            e.printStackTrace();
            return "File Upload failed due to " +e.getMessage();
        }
        return "File Uploaded";
    }

    private void uploadListUsingRestTemplate (List<Path> pathList , String token){
        String url = "http://localhost:2222/api/v1/file/uploadMultipleFiles?access_token="+token;
        RestTemplate template = new RestTemplate();
        MultiValueMap<String, Object> multipartMap = new LinkedMultiValueMap<>();

        for (Path path : pathList) {
            multipartMap.add("files", new FileSystemResource(path.toFile()));
        }

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);

        HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<MultiValueMap<String, Object>>(multipartMap, headers);
        ResponseEntity<byte[]> result = template.exchange(url, HttpMethod.POST, request, byte[].class);

        System.out.println("Request for File Upload : " + result);
    }

    @RequestMapping(value = "/empimage",method = RequestMethod.POST)
    public @ResponseBody String employeeImageUpload(@RequestBody @RequestParam(value = "pic") MultipartFile pic,
                                                 @RequestParam(value = "employeeCode") String empCode) {

        if (pic.isEmpty()) {
            return null;
        }
        try {
            saveFile(pic,StaticName.PROFILE__PIC_FOLDER, empCode, "JGG");

        } catch (IOException e) {
            e.printStackTrace();
            return e.getMessage();
        }

        return "Success";
    }
    @RequestMapping(value = "/images",method = RequestMethod.POST)
    public @ResponseBody String employeeImageUpload(@RequestBody @RequestParam(value = "profilePic") MultipartFile profilePic,
                                                 @RequestParam(value = "signPic") MultipartFile signPic,
                                                 @RequestParam(value = "employeeCode") String empCode) {
        if (profilePic.isEmpty()) {
            return null;
        }

        try {
            // Get the file and save it somewhere
            saveFile(profilePic, StaticName.PROFILE__PIC_FOLDER, empCode,"JPG");

            saveFile(signPic, StaticName.SIGN__PIC_FOLDER, empCode,"JPG");


        } catch (IOException e) {
            e.printStackTrace();
            return e.getMessage();
        }

        return "Success";
    }

    @RequestMapping(value = "/nomineeImage",method = RequestMethod.POST)
    public @ResponseBody String nomineeImageUpload(@RequestBody @RequestParam(value = "image") MultipartFile image,
                                                    @RequestParam(value = "employeeCode") String empCode) {

        if (image.isEmpty()) {
            return null;
        }

        try {
            saveFile(image,StaticName.NOMINEE__PIC_FOLDER, empCode, "JPG");

        } catch (IOException e) {
            e.printStackTrace();
            return e.getMessage();
        }

        return "Success";
    }

    private void saveFile(MultipartFile file, String directoryPath, String fileName, String extenstion) throws IOException {
        String pathText = this.getClass()
                .getResource(directoryPath).getFile()
                .substring(1).replaceAll("%20"," ");

        File directory = getDirectory(pathText );

        byte[] bytes = file.getBytes();
        Path path = Paths.get(directory.getAbsolutePath() + "/"  + fileName +"." + extenstion.replace(".",""));
        Files.write(path, bytes);
    }


    private File getDirectory(String path){
        File directory = new File(path);

        if (! directory.exists())
            directory.mkdir();
        return  directory;
    }

}
