import java.io.IOException;
import java.util.Arrays;
import java.io.UnsupportedEncodingException;
import java.util.InputMismatchException;
import java.util.Comparator;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.io.InputStream;

/**
 * Built using CHelper plug-in
 * Actual solution is at the top
 * @author gridnevvvit
 */
public class mC {
    public static void main(String[] args) {
        InputStream inputStream = System.in;
        OutputStream outputStream = System.out;
        InputReader in = new InputReader(inputStream);
        PrintWriter out = new PrintWriter(outputStream);
        C solver = new C();
        solver.solve(1, in, out);
        out.close();
    }
}

class C {
    public void solve(int testNumber, InputReader in, PrintWriter out) {
        int n = in.readInt();
        Pair pts[] = new Pair[n];
        int szAns = 0;
        for(int i = 0; i < n; i++) {
            int x = in.readInt();
            int y = in.readInt();
            szAns += 2;
            if (x != 0)
                szAns += 2;
            if (y != 0)
                szAns += 2;
            pts[i]= new Pair(x, y);

        }

        Arrays.sort(pts, new Comparator<Pair>() {
            @Override
            public int compare(Pair o1, Pair o2) {
                int dist1 = Math.abs(o1.first) + Math.abs(o1.second);
                int dist2 = Math.abs(o2.first) + Math.abs(o2.second);

                Integer v1 = dist1;
                Integer v2 = dist2;

                return v1.compareTo(v2);
            }
        });
        out.println(szAns);
        for(int i = 0; i < n; i++) {
            if (pts[i].first > 0)
                out.println(1 + " " + pts[i].first + " R");

            if (pts[i].first < 0)
                out.println(1 + " " + -pts[i].first + " L");

            if (pts[i].second > 0)
                out.println(1 + " " + pts[i].second + " U");

            if (pts[i].second < 0)
                out.println(1 + " " + -pts[i].second + " D");

            out.println(2);

            if (pts[i].first > 0)
                out.println(1 + " " + pts[i].first + " L");

            if (pts[i].first < 0)
                out.println(1 + " " + -pts[i].first + " R");

            if (pts[i].second > 0)
                out.println(1 + " " + pts[i].second + " D");

            if (pts[i].second < 0)
                out.println(1 + " " + -pts[i].second + " U");

            out.println(3);
        }


    }

    public class Pair {
        int first = 0, second = 0;

        public Pair (int x, int y) {
            this.first = x;
            this.second = y;
        }

    }
}

class InputReader {

    private InputStream stream;
    private byte[] buf = new byte[1024];
    private int curChar;
    private int numChars;

    public InputReader(InputStream stream) {
        this.stream = stream;
    }

    public int read() {
        if (numChars == -1)
            throw new InputMismatchException();
        if (curChar >= numChars) {
            curChar = 0;
            try {
                numChars = stream.read(buf);
            } catch (IOException e) {
                throw new InputMismatchException();
            }
            if (numChars <= 0)
                return -1;
        }
        return buf[curChar++];
    }

    public int readInt() {
        int c = read();
        while (isSpaceChar(c))
            c = read();
        int sgn = 1;
        if (c == '-') {
            sgn = -1;
            c = read();
        }
        int res = 0;
        do {
            if (c < '0' || c > '9')
                throw new InputMismatchException();
            res *= 10;
            res += c - '0';
            c = read();
        } while (!isSpaceChar(c));
        return res * sgn;
    }

    public static boolean isSpaceChar(int c) {
        return c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == -1;
    }

    }