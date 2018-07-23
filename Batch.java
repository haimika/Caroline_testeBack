import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Batch {
	
	private static final String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
    private static final String DB_CONNECTION = "jdbc:oracle:thin:@localhost";
    private static final String DB_USER = "user";
    private static final String DB_PASSWORD = "password";
	
	public static void main(String[] args) {
		
		try {
			 
            batchInsert();
 
        } catch (SQLException e) {
 
            System.out.println(e.getMessage());
 
        }

	}
	
	private static void batchInsert() throws SQLException {
		 
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
 
        String insertTableSQL = "INSERT INTO tb_customer_account"
                + "(id_customer, cpf_cnpj, nm_customer, is_active, vl_total) VALUES"
                + "(?,?,?,?)";
 
        try {
            dbConnection = getDBConnection();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
 
            dbConnection.setAutoCommit(false);
 
            preparedStatement.setInt(1, 1672);
            preparedStatement.setString(2, "12345678987");
            preparedStatement.setString(3, "Joao da Silva");
            preparedStatement.setString(4, "Ativo");
            preparedStatement.setInt(5, 2173627);
            preparedStatement.addBatch();
 
            preparedStatement.setInt(1, 2857);
            preparedStatement.setString(2, "78945612352");
            preparedStatement.setString(3, "Alex de Souza");
            preparedStatement.setString(4, "Ativo");
            preparedStatement.setInt(5, 245);
            preparedStatement.addBatch();
 
            preparedStatement.setInt(1, 160);
            preparedStatement.setString(2, "45612378985");
            preparedStatement.setString(3, "Julia Barbosa");
            preparedStatement.setString(4, "Inativo");
            preparedStatement.setInt(5, 560);
            preparedStatement.addBatch();
 
            preparedStatement.executeBatch();
 
            dbConnection.commit();
            
        } catch (SQLException e) {
        	 
            System.out.println(e.getMessage());
            dbConnection.rollback();
 
        } finally {
 
            if (preparedStatement != null) {
                preparedStatement.close();
            }
 
            if (dbConnection != null) {
                dbConnection.close();
            }
 
        }
 
    }
	
	public void media() {
		try {
			String query = "SELECT id_customer, nm_customer, vl_total FROM  tb_customer_account WHERE vl_total > '560' AND id_customer BETWEEN '1500' AND '2700';  
			this.resultset = this.statement.executeQuery(query);
			while(this.resultset.next()) {
				System.out.println("ID:" + this .resultset.getint("id_customer") + "Nome: " + this.resultset.getString ("nm_customer") + "Total:" + this.resultset.getint ("vl_total") );
			}
			String query = "SELECT AVG(vl_total) FROM  tb_customer_account WHERE vl_total > '560' AND id_customer BETWEEN '1500' AND '2700';
		} catch(Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
		
	}

}
