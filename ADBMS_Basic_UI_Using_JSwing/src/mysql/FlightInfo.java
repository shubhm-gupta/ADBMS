package mysql;
import java.sql.*;
import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTable;
import javax.swing.JScrollPane;
import net.proteanit.sql.DbUtils;

public class FlightInfo extends JFrame {

	private JPanel contentPane;
	private JTable table;
	private JScrollPane scrollPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FlightInfo frame = new FlightInfo();
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
	public FlightInfo() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 720, 738);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnShowFlight = new JButton("Show Flights");
		btnShowFlight.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://fall2018dbshubham.cutrzcvjwnrd.us-east-2.rds.amazonaws.com:3306/ADBMS", "sgupta37", "Avenger220");
					Statement stmt=con.createStatement();
					String sql="Select * from Flight";
					ResultSet rs=stmt.executeQuery(sql);
					
					table.setModel(DbUtils.resultSetToTableModel(rs));
					con.close();
					
					
				} catch (Exception e) {System.out.println(e);}
				}
				
		});
		btnShowFlight.setBounds(221, 43, 247, 37);
		contentPane.add(btnShowFlight);
		
		scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 102, 684, 429);
		contentPane.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
	}
}
