import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class UserDefinedClassLoader extends ClassLoader{

    public byte[] getContent(String filePath) throws IOException {
        File file = new File(filePath);
        long fileSize = file.length();
        if (fileSize > Integer.MAX_VALUE) {
            System.out.println("file too big...");
            return null;
        }
        FileInputStream fi = new FileInputStream(file);
        byte[] buffer = new byte[(int) fileSize];
        int offset = 0;
        int numRead = 0;
        while (offset < buffer.length
                && (numRead = fi.read(buffer, offset, buffer.length - offset)) >= 0) {
            offset += numRead;
        }
        // 确保所有数据均被读取
        if (offset != buffer.length) {
            throw new IOException("Could not completely read file "
                    + file.getName());
        }
        fi.close();
        return buffer;
    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException{
        try {
            //read local .xlass file by name
            byte[] bytes = getContent( "xclass" + File.separator +  name + ".xlass");
            for(int i=0;i<bytes.length;i++){
                bytes[i] = (byte)~bytes[i];
            }
            return defineClass(name,bytes,0,bytes.length);
        }
        catch(IOException e){
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        try{
            Class<?> hello = new UserDefinedClassLoader().findClass("Hello");
            Object o = hello.newInstance();
            Method m = hello.getDeclaredMethod("hello");
            m.invoke(o);
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        catch(IllegalAccessException e){
            e.printStackTrace();
        }
        catch(InstantiationException e){
            e.printStackTrace();
        }
        catch(NoSuchMethodException e){
            e.printStackTrace();
        }
        catch(InvocationTargetException e){
            e.printStackTrace();
        }
    }
}
