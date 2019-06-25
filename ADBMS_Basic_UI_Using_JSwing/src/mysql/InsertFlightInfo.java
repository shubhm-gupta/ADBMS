package mysql;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.awt.event.ActionEvent;
import java.awt.Color;
import javax.swing.JTextPane;
import com.toedter.calendar.JDateChooser;

public class InsertFlightInfo extends JFrame {

	private JPanel contentPane;
	private JTextField txtAirlineInformationUpdate;
	private JTextField airlineName;
	private JLabel lblAirlineNumber;
	private JLabel lblSource;
	private JLabel lblDestination;
	private JLabel lblDate;
	private JLabel lblDepartureTimehhmmss;
	private JTextField airlineNumber;
	private JLabel lblArrivalTimehhmmss;
	private JTextField source;
	private JTextField destination;
	private JTextField departureTime;
	private JTextField arrivalTime;
	private JTextField date;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					InsertFlightInfo frame = new InsertFlightInfo();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public InsertFlightInfo() {
		
		JButton button = new JButton("");
		getContentPane().add(button, BorderLayout.CENTER);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 772, 497);
		contentPane = new JPanel();
		contentPane.setBackground(Color.LIGHT_GRAY);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		txtAirlineInformationUpdate = new JTextField();
		txtAirlineInformationUpdate.setBackground(Color.LIGHT_GRAY);
		txtAirlineInformationUpdate.setForeground(Color.BLUE);
		txtAirlineInformationUpdate.setFont(new Font("Segoe UI", Font.BOLD, 28));
		txtAirlineInformationUpdate.setText("Airline Information Update");
		txtAirlineInformationUpdate.setBounds(199, 24, 363, 55);
		contentPane.add(txtAirlineInformationUpdate);
		txtAirlineInformationUpdate.setColumns(10);
		
		JLabel lblAirlineName = new JLabel("Airline Name");
		lblAirlineName.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblAirlineName.setBounds(35, 94, 86, 32);
		contentPane.add(lblAirlineName);
		
		airlineName = new JTextField();
		airlineName.setBounds(256, 101, 86, 20);
		contentPane.add(airlineName);
		airlineName.setColumns(10);
		
		lblAirlineNumber = new JLabel("Airline Number");
		lblAirlineNumber.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblAirlineNumber.setBounds(35, 141, 97, 32);
		contentPane.add(lblAirlineNumber);
		
		lblSource = new JLabel("Source");
		lblSource.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblSource.setBounds(35, 184, 86, 32);
		contentPane.add(lblSource);
		
		lblDestination = new JLabel("Destination");
		lblDestination.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDestination.setBounds(35, 227, 86, 32);
		contentPane.add(lblDestination);
		
		lblDate = new JLabel("Date (YYYY-MM-DD)");
		lblDate.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDate.setBounds(35, 270, 210, 32);
		contentPane.add(lblDate);
		
		lblDepartureTimehhmmss = new JLabel("Departure Time (HH:MM:SS)");
		lblDepartureTimehhmmss.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDepartureTimehhmmss.setBounds(35, 313, 197, 32);
		contentPane.add(lblDepartureTimehhmmss);
		
		airlineNumber = new JTextField();
		airlineNumber.setColumns(10);
		airlineNumber.setBounds(256, 148, 86, 20);
		contentPane.add(airlineNumber);
		
		lblArrivalTimehhmmss = new JLabel("Arrival Time (HH:MM:SS)");
		lblArrivalTimehhmmss.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblArrivalTimehhmmss.setBounds(35, 356, 172, 32);
		contentPane.add(lblArrivalTimehhmmss);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setFont(new Font("Segoe UI", Font.BOLD, 22));
		btnNewButton.setForeground(Color.BLACK);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection c = DriverManager.getConnection("awslink", "username", "password");
					Statement stmt = c.createStatement();
					String sql="Insert into Flight(airline_no,airline_name,source,destination,date,departure_time,arrival_time) "
							+ "values('"+airlineNumber.getText()+"', '"+airlineName.getText()+"','"+source.getText()+"', '"+destination.getText()+"','"+date.getText()+"', "
									+ "'"+departureTime.getText()+"', '"+arrivalTime.getText()+"')";

					
					stmt.executeUpdate(sql);
						JOptionPane.showMessageDialog(null, "Flight Information Updated Successfully");
						c.close();}
					catch (Exception e) {System.out.println(e);
			}
			}
		});
		
		
		btnNewButton.setBounds(256, 415, 149, 32);
		contentPane.add(btnNewButton);
		
		source = new JTextField();
		source.setColumns(10);
		source.setBounds(256, 196, 86, 20);
		contentPane.add(source);
		
		destination = new JTextField();
		destination.setColumns(10);
		destination.setBounds(256, 234, 86, 20);
		contentPane.add(destination);
		
		departureTime = new JTextField();
		departureTime.setColumns(10);
		departureTime.setBounds(256, 320, 86, 20);
		contentPane.add(departureTime);
		
		arrivalTime = new JTextField();
		arrivalTime.setColumns(10);
		arrivalTime.setBounds(256, 363, 86, 20);
		contentPane.add(arrivalTime);
		
		date = new JTextField();
		date.setColumns(10);
		date.setBounds(256, 277, 86, 20);
		contentPane.add(date);

	}
}
