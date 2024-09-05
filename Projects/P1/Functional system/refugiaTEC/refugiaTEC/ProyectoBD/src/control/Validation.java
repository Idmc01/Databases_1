package control;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *Aqui validamos la contraseña con regex. Las passwords deben tener de 8 a 20 caracteres, un signo y mayuscula.
 */
public class Validation {
    public static boolean verifyPassword(char[] pass){
        String fullPassword = new String(pass);
        String regex = "^(?=.*[0-9])(?=.*[A-Z])(?=.*[!@#$%^&*()_+\\-=\\[\\]{};':\",.<>/?]).{8,20}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(fullPassword);
        
        return matcher.matches();
    }
}
