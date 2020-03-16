package application;
	
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

import java.sql.*;
import java.util.Properties;
import java.util.Scanner;


public class Main extends Application {
	private Scene titleScreen; 
	private Scene userScene;
	private Scene adminScene;
	
	public static String getResource (String path)
	{
		return Main.class.getResource(path).toExternalForm(); 
	}
	
	
	@Override
	public void start(Stage primaryStage) {
		try {
/////////////////////////////////////////////////Connect to DB///////////////////////////////////////////////////		
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			Query q = new Query(); 
		
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////First Scene/////////////////////////////////////////////////////			
			
			primaryStage.setTitle("NFL History Database");
			
	
			
			
			StackPane layout1 = new StackPane();  
			layout1.setBackground(null); 
			
			Text i = new Text(); 
			i.setText("Welcome to NFL History Database.");
			
			
			i.setStyle("-fx-font: 45 Dubai;");
			i.setTranslateY(-300);
			
			Button admin = new Button("Admin"); 
			admin.setOnAction(e -> primaryStage.setScene(adminScene));
	
			Button normalUser = new Button("User"); 
			normalUser.setTranslateY(50); 
			normalUser.setOnAction(e -> primaryStage.setScene(userScene));
			
			ImageView nflLogo = new ImageView(new Image(getResource("/images/1200px-National_Football_League_logo.svg.png"))); 
			nflLogo.setFitHeight(500);
			nflLogo.setFitWidth(350);
		
			
			layout1.getChildren().addAll(i,nflLogo, admin, normalUser);
			titleScreen = new Scene(layout1, 1000, 750);
			primaryStage.setScene(titleScreen); 
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////Admin Scene/////////////////////////////////////////////////////	
			
			StackPane layout2 = new StackPane();  
			layout2.setBackground(null); 
			
			Text adminText = new Text();
			adminText.setText("Enter Query");
			adminText.setStyle("-fx-font: 45 arial;");
			adminText.setTranslateY(-200);
	
	
			Button doStuff = new Button("Enter Query"); 
			doStuff.setTranslateY(0);
			
			TextField b = new TextField(); 
			b.setTranslateY(40); 
			
		
			  b.setOnAction(new EventHandler<ActionEvent>() {
				   @Override public void handle (ActionEvent e) {
					   String s =  b.getText(); 
					   try {
						q.baseQuery(s);
					} catch (ClassNotFoundException | SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					   
				   }
			  });
			  
				Button goToUser = new Button("Go to user view"); 
				goToUser.setOnAction(e -> primaryStage.setScene(userScene));
				goToUser.setTranslateY(300); 
				goToUser.setTranslateX(330); 
				
				Button goHome = new Button("Go to home page"); 
				goHome.setOnAction(e -> primaryStage.setScene(titleScreen));
				goHome.setTranslateY(300); 
				goHome.setTranslateX(445); 
				
				ImageView jj = new ImageView(new Image(getResource("/gifs/mac2.gif"))); 
				jj.setTranslateY(225);
				jj.setFitHeight(275);
				jj.setFitWidth(500);
				
	
			
			layout2.getChildren().addAll(adminText, doStuff,b,goToUser,goHome,jj);
			adminScene = new Scene(layout2, 1000, 750);
			
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////User Scene//////////////////////////////////////////////////////
			
			
			StackPane layout3 = new StackPane();  
			layout2.setBackground(null); 
			
			Text userText = new Text();
			userText.setText("About Teams");
			userText.setStyle("-fx-font: 25 arial;");
			userText.setTranslateY(-300);
			userText.setTranslateX(-400);
			

			// Display upcoming games for specific team
			Button displayUpcomingGamesForSpecificTeam = new Button("Display upcoming games for a specific team");
			displayUpcomingGamesForSpecificTeam.setTranslateY(-275); 
			displayUpcomingGamesForSpecificTeam.setTranslateX(-350);
			displayUpcomingGamesForSpecificTeam.setOnAction(e -> {
					try {
						q.displayUpcomingGamesSpecificTeam();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			// Shows stats of team from every year they played in the NFL
			Button stats = new Button("Show the stats of a selected team: year, passing yards, rushing yards, touchdowns, sacks, interceptions, wins, losses and ties");
			stats.setTranslateY(-250); 
			stats.setTranslateX(-160);
			stats.setOnAction(e -> {
					try {
						q.stats();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			
			// Super bowl champs each year
			Button wonSuperBowl = new Button("Show the years a team has won the Super Bowl");
			wonSuperBowl.setTranslateY(-225); 
			wonSuperBowl.setTranslateX(-340);
			wonSuperBowl.setOnAction(e -> {
					try {
						q.wonSuperBowl();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			
			// Display All players on a specific team
			Button displayPlayersOnTeam = new Button("Display all players on a team");
			displayPlayersOnTeam.setTranslateY(-200); 
			displayPlayersOnTeam.setTranslateX(-390);
			displayPlayersOnTeam.setOnAction(e -> {
					try {
						q.displayPlayersOnTeam();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			// Stats
			Button yearsOverYards = new Button("Show the years and team that have had stats in specific categories");
			yearsOverYards.setTranslateY(-175); 
			yearsOverYards.setTranslateX(-300);
			yearsOverYards.setOnAction(e -> {
					try {
						q.yearsOverYards();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			
			Text pText = new Text();
			pText.setText("About Players");
			pText.setStyle("-fx-font: 25 arial;");
			pText.setTranslateY(-300);
			pText.setTranslateX(400);
			
			//Display all players
			Button disp = new Button("Display all players"); 
			disp.setTranslateY(-275); 
			disp.setTranslateX(375);
			
			disp.setOnAction(e -> {
				try {
					q.printResults();
				} catch (ClassNotFoundException | SQLException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
			});
			
			// Show player career
			Button yearsAndTeams = new Button("Show the years and teams a player has played on");
			yearsAndTeams.setTranslateY(-250); 
			yearsAndTeams.setTranslateX(320);
			yearsAndTeams.setOnAction(e -> {
					try {
						q.yearsAndTeams();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			// All players who have played for a team
			Button playFor = new Button("Show all players who have played for a specific team");
			playFor.setTranslateY(-225); 
			playFor.setTranslateX(320);
			playFor.setOnAction(e -> {
					try {
						q.playFor();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			
			Text qText = new Text();
			qText.setText("Other Queries");
			qText.setStyle("-fx-font: 25 arial;");
			qText.setTranslateY(-100);
			//qText.setTranslateX(400);
			
			
			// Display All players on a specific team
			Button injury = new Button("Recovery time for this player's injury");
			injury.setTranslateY(-75); 
			injury.setOnAction(e -> {
					try {
						q.injury();
					} catch (ClassNotFoundException | SQLException e1) {
								// TODO Auto-generated catch block
							e1.printStackTrace();
					}
			});
			
			
			// Display upcoming games
			Button displayUpcomingGames = new Button("Display upcoming games");
			displayUpcomingGames.setTranslateY(-50); 
			displayUpcomingGames.setOnAction(e -> {
				try {
					q.displayUpcomingGames();
				} catch (ClassNotFoundException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			});
			
	
						// All super bowl winners
						Button allSuperBowlWinners = new Button("All super bowl winners by year");
						allSuperBowlWinners.setTranslateY(-25); 
						allSuperBowlWinners.setOnAction(e -> {
								try {
									q.allSuperBowlWinners();
								} catch (ClassNotFoundException | SQLException e1) {
											// TODO Auto-generated catch block
										e1.printStackTrace();
								}
						});
						
						// Displays the stadiums a team has used
						Button showStadium = new Button("Show all stadiums of a specific team");
						showStadium.setTranslateY(0); 
						showStadium.setOnAction(e -> {
								try {
									q.showStadium();
								} catch (ClassNotFoundException | SQLException e1) {
											// TODO Auto-generated catch block
										e1.printStackTrace();
								}
						});
						
						
						Button goToAdmin = new Button("Go to admin page"); 
						goToAdmin.setOnAction(e -> primaryStage.setScene(adminScene));
						goToAdmin.setTranslateY(300); 
						goToAdmin.setTranslateX(330); 
						
						Button goToHome = new Button("Go to home page"); 
						goToHome.setOnAction(e -> primaryStage.setScene(titleScreen));
						goToHome.setTranslateY(300); 
						goToHome.setTranslateX(445); 
						
						ImageView dance = new ImageView(new Image(getResource("/gifs/dance3.gif"))); 
						dance.setTranslateY(0);
						dance.setTranslateX(-300);
						dance.setFitHeight(175);
						dance.setFitWidth(300);
						
						ImageView hit = new ImageView(new Image(getResource("/gifs/sack.gif"))); 
						hit.setTranslateY(0);
						hit.setTranslateX(300);
						hit.setFitHeight(175);
						hit.setFitWidth(300);
					

		
			layout3.getChildren().addAll(goToAdmin, goToHome, userText, pText, qText, disp, displayUpcomingGames,displayUpcomingGamesForSpecificTeam,displayPlayersOnTeam,stats, wonSuperBowl, yearsAndTeams, yearsOverYards, allSuperBowlWinners, showStadium, playFor, injury, dance, hit);
			userScene = new Scene(layout3, 1000, 750);
			
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////SQL Stuff/////////////////////////////////////////////////////	
	
				
		titleScreen.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		primaryStage.setScene(titleScreen);
		primaryStage.show();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
