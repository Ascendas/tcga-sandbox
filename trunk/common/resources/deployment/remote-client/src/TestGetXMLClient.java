import java.io.DataInputStream;
import java.io.File;
import java.io.FileWriter;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collection;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;


public class TestGetXMLClient extends TestClient
{
	public static void main(String args[])
	{
		TestGetXMLClient client = new TestGetXMLClient();
		try
		{
			client.testXML();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void testXML() throws Exception
	{
		Collection<Class> classList = getClasses();
		String serverUrl = "http://localhost:8080/tcgadccws";
		for(Class klass:classList)
		{
			if (!Modifier.isAbstract(klass.getModifiers())){

				System.out.println("Searching for "+klass.getName());
                FileWriter myWriter = null;
                DataInputStream dis = null;
				try
				{
					String searchUrl = serverUrl+"/GetXML?query="+klass.getName()+"&"+klass.getName();
					URL url = new URL(searchUrl);
					URLConnection conn = url.openConnection();

					//Uncomment following two lines for secured system and provide proper username and password
					//String base64 = "userId" + ":" + "password";
					//conn.setRequestProperty("Authorization", "Basic " + new String(Base64.encodeBase64(base64.getBytes())));

					File myFile = new File("./output/" + klass.getName() + "_test-getxml.xml");

                    //noinspection IOResourceOpenedButNotSafelyClosed
                    myWriter = new FileWriter(myFile);
                    //noinspection IOResourceOpenedButNotSafelyClosed
                    dis = new DataInputStream(conn.getInputStream());

					String s = null;
					while ((s = dis.readLine()) != null)
						myWriter.write(s);

					myWriter.close();
				}catch(Exception e)
				{
					System.out.println("Exception caught: " + e.getMessage());
					e.printStackTrace();
				} finally {
                    IOUtils.closeQuietly(myWriter);
                    IOUtils.closeQuietly(dis);
                }
				//break;
			}
		}
	}
}