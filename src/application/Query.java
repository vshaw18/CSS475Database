package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import javafx.scene.text.Text;

public class Query 
{
	public Query() throws ClassNotFoundException, SQLException
	{
		// Initialize connection variables.	
				String host = "nflhistorydatabase.mysql.database.azure.com";
				String database = "nflhistorydatabase";
				String user = "uwbhuskies@nflhistorydatabase";
				String password = "Gohuskies!";
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = null;
				// Initialize connection object
				try
				{
					connection = DriverManager.getConnection("jdbc:mysql://nflhistorydatabase.mysql.database.azure.com:3306/nflhistorydatabase?serverTimezone=UTC",user,password);
				}
				catch (SQLException e)
				{
					throw new SQLException("Failed to create connection to database.", e);
				}
				if (connection != null) 
				{ 
				//	System.out.println("Successfully created connection to database.");
				
				}
				else {
					System.out.println("Failed to create connection to database.");
				}
			//	System.out.println("Execution finished.");
				
				String outputString = null;
				try
				{
					Statement statement = connection.createStatement();
					ResultSet results = statement.executeQuery("SELECT * from PLAYER;");
					while (results.next())
					{
						outputString = 
							String.format(
								"Data row = (%s, %s, %s)",
								results.getString(1),
								results.getString(2),
								results.getString(3));
					}	
				}
				catch (SQLException e)
				{
					throw new SQLException("Encountered an error when executing given sql statement", e);
				}		
	}
	
	public Connection getConnection() throws ClassNotFoundException, SQLException
	{
		// Initialize connection variables.	
		String host = "nflhistorydatabase.mysql.database.azure.com";
		String database = "nflhistorydatabase";
		String user = "uwbhuskies@nflhistorydatabase";
		String password = "Gohuskies!";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = null;
		// Initialize connection object
		try
		{
			connection = DriverManager.getConnection("jdbc:mysql://nflhistorydatabase.mysql.database.azure.com:3306/nflhistorydatabase?serverTimezone=UTC",user,password);
		}
		catch (SQLException e)
		{
			throw new SQLException("Failed to create connection to database.", e);
		}
		if (connection != null) 
		{ 
			return connection; 
		}
		else {
			System.out.println("Failed to create connection to database.");
		}
		return connection;
	}

	public void printResults() throws SQLException, ClassNotFoundException 
	{
		
			Connection connection = getConnection(); 
		
		if (connection != null) 
		{ 
			System.out.println("Successfully created connection to database.");
		
		}
		else 
		{
			System.out.println("Failed to create connection to database.");
		}
		
		String outputString = null;
		try
		{
			Statement statement = connection.createStatement();
			ResultSet results = statement.executeQuery("SELECT * from PLAYER;");
			while (results.next())
			{
				outputString = 
					String.format(
						"Data row = (%s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}		
	}
	
	public String displayUpcomingGames() throws ClassNotFoundException, SQLException
	{
		String outputString = null;
		String temp; 
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT gameDate, homeTeam, awayTeam FROM GAME WHERE gameDate > current_date() ORDER BY gameDate;");
			while (results.next())
			{
				outputString = 
					String.format(
						"(%s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
			return outputString;
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}		
	}
	
	public void displayUpcomingGamesSpecificTeam() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter a teamname");
		 
		String teamName = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT gameDate, homeTeam, awayTeam FROM GAME WHERE gameDate > current_date() AND (homeTeam = '"+ teamName + "' OR awayTeam = '" + teamName + "' ) ORDER BY gameDate;");
			while (results.next())
			{
				String outputString = 
					String.format(
						"(%s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}		
	}
	
	public void displayPlayersOnTeam() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter a teamname");
		 
		String teamName = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT fName, lName,  position FROM player as p, team as t, played_for as pf WHERE p.playerID = pf.P_playerID AND t.teamName = pf.T_teamName AND t.teamName = '" + teamName + "' ORDER BY position;"
);
			while (results.next())
			{
				String outputString = 
					String.format(
						"(%s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}		
	}
	
	public void wonSuperBowl() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter a teamname");
		 
		String teamName = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT s.year FROM season as s WHERE s.T_championTeam = '" + teamName + "';");
			while (results.next())
			{
				String outputString = 
					String.format(
						"(%s)",
						results.getString(1));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void yearsAndTeams() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter a First Name");
		String fName = scan.nextLine();  // Read user input
		
		Scanner scan2 = new Scanner(System.in); 
		System.out.println("Enter a Last Name");
		String lName = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT S_year, T_teamName FROM played_for WHERE P_playerID IN (SELECT playerID FROM player WHERE fname = '" + fName + "' AND lname = '" + lName + "');");
			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s, %s)",
						results.getString(1),
						results.getString(2));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void yearsOverYards() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Passing Yards");
		String passingYards = scan.nextLine();  // Read user input
		
		Scanner scan2 = new Scanner(System.in); 
		System.out.println("Rushing Yards");
		String rushingYards = scan.nextLine();  // Read user input
		
		Scanner scan3 = new Scanner(System.in); 
		System.out.println("Sacks");
		String sacks = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT S_year, T_teamName FROM team_performance WHERE passingYards >'" + passingYards + "' AND rushingYards > '" + rushingYards + "' AND sacks > '" + sacks + "';");
			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s, %s)",
						results.getString(1),
						results.getString(2));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void allSuperBowlWinners() throws ClassNotFoundException, SQLException
	{
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT year, T_championTeam FROM season ORDER BY year;");
			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s, %s)",
						results.getString(1),
						results.getString(2));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void showStadium() throws ClassNotFoundException, SQLException
	{
		
		Scanner scan = new Scanner(System.in); 
		System.out.println("Team Name");
		String teamName = scan.nextLine();  // Read user input
		
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT * FROM stadium where T_homeTeam = '" + teamName + "';");
			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s, %s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3),
						results.getString(4));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void injury() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Injury Type");
		String injuryType = scan.nextLine();  // Read user input
		
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT recoveryTime FROM injury_report where injuryType = '" + injuryType + "';");

			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s)",
						results.getString(1));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	public void baseQuery(String input) throws ClassNotFoundException, SQLException
	{
		try
		{
			
			 PreparedStatement preparedStmt = getConnection().prepareStatement(input);
			 preparedStmt.execute();
			
				System.out.println("-------------------------------------------------------------------------");

		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
		
		System.out.println("Query Succesful"); 
	}
	
	/*
	 * 
	 * 
	 * COMPLEX QUERIES
	 * 
	 * 
	 * 
	 * 
	 */
	
	// "Show all players who have played for a specific team"
	public void playFor() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter team name");
		String team = scan.nextLine();  // Read user input
		
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT fName, lName,  position FROM player as p, team as t, played_for as pf WHERE p.playerID = pf.P_playerID AND t.teamName = pf.T_teamName AND t.teamName = '" + team + "' ORDER BY position;");

			while (results.next())
			{
				String outputString = 
					String.format(
							"(%s, %s, %s)",
							results.getString(1),
							results.getString(2),
							results.getString(3));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	// SELECT S_year, passingYards, rushingYards, touchdowns, sacks, interceptions, wins, losses, ties FROM team_performance WHERE T_teamName IN (SELECT teamName FROM team WHERE teamName = '" + teamName + "');"
	public void stats() throws ClassNotFoundException, SQLException
	{
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter a teamname");
		 
		String teamName = scan.nextLine();  // Read user input
		try
		{
			Statement statement = getConnection().createStatement();
			ResultSet results = statement.executeQuery("SELECT S_year, passingYards, rushingYards, touchdowns, sacks, interceptions, wins, losses, ties FROM team_performance WHERE T_teamName IN (SELECT teamName FROM team WHERE teamName = '" + teamName + "');");

			while (results.next())
			{
				String outputString = 
					String.format(
						"(%s, %s, %s, %s, %s, %s, %s, %s, %s)",
						results.getString(1),
						results.getString(2),
						results.getString(3),
						results.getString(4),
						results.getString(5),
						results.getString(6),
						results.getString(7),
						results.getString(8),
						results.getString(9));
				System.out.println(outputString);
			}	
			System.out.println("-------------------------------------------------------------------------");
		}
		catch (SQLException e)
		{
			throw new SQLException("Encountered an error when executing given sql statement", e);
		}
	}
	
	
}
