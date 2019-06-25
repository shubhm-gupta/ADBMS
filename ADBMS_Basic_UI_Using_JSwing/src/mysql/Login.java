package mysql;

import java.sql.*;
import java.awt.BorderLayout;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.Color;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Login extends JFrame {

	private JPanel contentPane;
	private final JLabel lblUsername = new JLabel("Username");
	private JTextField user;
	private JPasswordField pass;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login frame = new Login();
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
	public Login() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 301, 334);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Login Page");
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(5, 5, 275, 42);
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 24));
		contentPane.add(lblNewLabel);
		lblUsername.setFont(new Font("Times New Roman", Font.PLAIN, 15));
		lblUsername.setBounds(5, 53, 275, 26);
		contentPane.add(lblUsername);
		
		user = new JTextField();
		user.setBounds(5, 90, 204, 20);
		contentPane.add(user);
		user.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Password");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 15));
		lblNewLabel_1.setBounds(5, 121, 150, 26);
		contentPane.add(lblNewLabel_1);
		
		pass = new JPasswordField();
		pass.setBounds(5, 152, 211, 20);
		contentPane.add(pass);
		
		
		JButton btnNewButton = new JButton("Login");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://awslink", "username", "password");
					Statement stmt=con.createStatement();
					String sql="Select * from Account where username='"+user.getText()+"' and password='"+pass.getText().toString()+"'";
					ResultSet rs=stmt.executeQuery(sql);
					if (rs.next()) {
						JOptionPane.showMessageDialog(null, "Login Successfully..");
						Welcome welcome = new Welcome(user.getText());
							welcome.setVisible(true);
					}
					else
						JOptionPane.showMessageDialog(null, "Incorrect username or password");
					con.close();
				}catch (Exception e) {System.out.println(e);}
			}
		});
		btnNewButton.setFont(new Font("Times New Roman", Font.PLAIN, 12));
		btnNewButton.setBounds(5, 191, 89, 23);
		contentPane.add(btnNewButton);
	}
}
