package TokoObat;
import java.sql.*;

import javax.swing.JOptionPane;

//import java.awt.EventQueue;

import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
//import javax.swing.JTextArea;
import javax.swing.ImageIcon;

import java.awt.Color;

import javax.swing.JInternalFrame;
//import javax.swing.JDesktopPane;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class login extends JInternalFrame {
	private JButton btnLogin;
	private JTextField txtUser;
	private JTextField txtPass;
	private JLabel lblWallMDI;
	public static String nama;
	public static javax.swing.JInternalFrame f;
	public static javax.swing.JInternalFrame f2;

	public login() {
		super("Login");
		setBounds(100, 100, 600, 375);
		getContentPane().setLayout(null);
		setVisible(true);
		f = new admin();
		f2 = new transaksiPenjualan();
		
		JLabel lblNo = new JLabel("Username : ");
		lblNo.setForeground(new Color(255,255,255));
		lblNo.setBounds(10, 217, 100, 15);
		getContentPane().add(lblNo);
		
		JLabel lblNama = new JLabel("Password : ");
		lblNama.setForeground(new Color(255,255,255));
		lblNama.setBounds(10, 247, 100, 15);
		getContentPane().add(lblNama);
		
		JLabel lblJudul = new JLabel("<html><h2>Aplikasi Penjualan Obat Herbal</h2></html>");
		lblJudul.setForeground(new Color(255,255,255));
		lblJudul.setBounds(16, 50, 1000, 50);
		getContentPane().add(lblJudul);
		
		JLabel lblIdentitas = new JLabel("Dany Prambudi | 13.41010.0078");
		lblIdentitas.setForeground(new Color(255,255,255));
		lblIdentitas.setBounds(55, 100, 1000, 15);
		getContentPane().add(lblIdentitas);
		
		btnLogin = new JButton("LOGIN");
		btnLogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//try {
			      // Connection Con = configuration.getCon();
			       //String sql = "Select * from PENGGUNA WHERE username = '"+txtUser.getText()+"' and password = '" + txtPass.getText() + "'";
			       //Statement st = Con.createStatement();  
			       //ResultSet rs = st.executeQuery(sql);rs.getString(3).equalsIgnoreCase("admin") 
			       //if (rs.next()) {
				        if (txtUser.getText().equals("dany") && txtPass.getText().equals("2603")) {
				            JOptionPane.showMessageDialog(null, "Selamat Datang Admin");
				            menuUtama.tampil(f);
				            nama = txtUser.getText();
				            //this.dispose();
				        } else {
				        	JOptionPane.showMessageDialog(null, "Selamat Datang Kasir");
				        	menuUtama.tampil(f2);
				        	nama = txtUser.getText();
				        }
			       //} else {
			    	  // JOptionPane.showMessageDialog(null, "Username dan Password Salah");
			       //}
		        //} catch (Exception ex) {
		        	//JOptionPane.showMessageDialog(null, "Maaf, Tidak Ada Koneksi Ke Database");
		        //}
			}
		});
		
		btnLogin.setBounds(100, 276, 90, 36);
		getContentPane().add(btnLogin);
		
		txtUser = new JTextField();
		txtUser.setBounds(100, 213, 159, 27);
		getContentPane().add(txtUser);
		txtUser.setColumns(10);
		
		txtPass = new JPasswordField();
		txtPass.setBounds(100, 243, 159, 27);
		getContentPane().add(txtPass);
		txtPass.setColumns(10);
		
		lblWallMDI = new JLabel("");
		lblWallMDI.setIcon(new ImageIcon("/D:/Dany_doc/Wallpaper/Dekstop Background/Java.jpg"));
		lblWallMDI.setBounds(0, 0, 617, 375);
		getContentPane().add(lblWallMDI);
	}
}
