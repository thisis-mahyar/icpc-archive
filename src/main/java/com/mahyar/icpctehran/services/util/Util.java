package com.mahyar.icpctehran.services.util;

public class Util {

    // this method isn't a good practise
    // it is better to fetch that from db
    // but whatever!
    public static String getLanguage(int id) {
        return switch (id) {
            case 105 -> "C++";
            case 103 -> "C";
            case 91 -> "Java";
            case 100 -> "Python";
            default -> "";
        };
    }

    // for the code that will be shown in submissions
    // so that no conflicts will happen with <>
    public static String formatCode(String code) {
        return code.replace("<", "&lt;").replace(">", "&gt;");
    }
}
