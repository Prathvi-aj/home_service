package utils;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.HttpURLConnection;
 
public class smsSend {
    public static void SendSMS(String phone,String message1)
	{
		try {
			// Construct data
			String apiKey = "apikey=" + "VFWcj31Dsn0-1A8bEemvW2JB07jUzPOfMXzrTbJPeV";
			String message = "&message=" + message1;
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "+917724933973,+918770071553,+917974670879";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			//return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			//return "Error "+e;
		}
	}

}