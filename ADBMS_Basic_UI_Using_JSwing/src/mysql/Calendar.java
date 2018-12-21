package mysql;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import com.toedter.calendar.JDateChooser;
import com.toedter.calendar.JDayChooser;
import com.toedter.components.JLocaleChooser;
import com.toedter.components.JSpinField;

public class Calendar extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Calendar frame = new Calendar();
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
	public Calendar() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JDateChooser dateChooser = new JDateChooser();
		dateChooser.setDateFormatString("MM/DD/YYYY");
		dateChooser.setBounds(249, 103, 127, 20);
		contentPane.add(dateChooser);
		
		JDayChooser dayChooser = new JDayChooser();
		dayChooser.setBounds(10, 99, 182, 133);
		contentPane.add(dayChooser);
		
		JLocaleChooser localeChooser = new JLocaleChooser();
		localeChooser.setBounds(210, 163, 214, 20);
		contentPane.add(localeChooser);
		
		JSpinField spinField = new JSpinField();
		spinField.setBounds(187, 40, 29, 20);
		contentPane.add(spinField);
	}
}
