import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class ValidParentheses {
    public static void main(String[] args) {
        System.out.println(isValid("()"));
    }

    public static boolean isValid(String s) {
        Map<Character,Character> pairs = new HashMap<Character,Character>();
        pairs.put('(', ')'); pairs.put('{', '}'); pairs.put('[', ']');

        Stack<Character> seen = new Stack<Character>();
        for (char c : s.toCharArray()) {
            if (pairs.containsKey(c))
                seen.push(c);
            else if (pairs.containsValue(c))
                if(seen.empty() || pairs.get(seen.pop()) != c)
                    return false;
        }
        return seen.isEmpty();
    }
}