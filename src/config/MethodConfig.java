package config;

/**
 * @author 张越
 * @date 2022/10/16 21:42
 * @project_name 2020145120张越实验二
 * @Title MethodConfig
 * }
 */




public class MethodConfig {
    private int strLen;
    private int time;

    public static int REFRESH = 0;
    public static int EASY = 1;
    public static int NORMAL = 2;
    public static int DIFFICULT = 3;
    public static int YANG_LE_GE_YANG = 4;

    public MethodConfig(int method) {
        strLen += 5 * method;
        time -= 5 * method;
    }

    public MethodConfig() {
    }

    public void setMethod(int method){
        strLen = 5 + 5 * method;
        time = 25 - 5 * method;
    }

    public int getStrLen() {
        return strLen;
    }

    public int getTime() {
        return time;
    }
}