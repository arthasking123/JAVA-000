package com.zy.dt.config;

import java.io.InputStream;
import java.util.Map;

import com.zy.dt.exception.ConfigException;
import org.yaml.snakeyaml.Yaml;

public final class YAMLLoader {

    private static volatile YAMLLoader INSTANCE = new YAMLLoader();
    private static Map<String,Object> map = null;

    static {
        if(!loadAppYaml()){
            throw new ConfigException("framework.yml load failed!");
        }
    }

    private static boolean loadAppYaml(){
        Yaml yaml = new Yaml();
        InputStream in = null;
        try {
            in = YAMLLoader.class.getClassLoader().getResourceAsStream("framework.yml");
            map = yaml.load(in);
        }
        catch(Exception ex){
            ex.printStackTrace();
            return false;
        }

        return true;
    }

    public static Map loadMap(String path){
       String[] arr = path.split("\\.");
       Map m = map;
       for(String str : arr){
           m = (Map)m.get(str);
       }
       return m;
    }

    public static String loadString(String path){
        String[] arr = path.split("\\.");
        Map m = map;
        for(int i=0; i < arr.length - 1; i++){
            m = (Map)m.get(arr[i]);
        }
        return m.get(arr[arr.length - 1]).toString();
    }

    public static YAMLLoader getInstance(){
        return INSTANCE;
    }

}
