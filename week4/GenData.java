import java.io.*;
import java.util.Random;

public class GenData {
	private final static int MAX = 1000000;
	public static void main(String[] args) throws IOException {
		if(args.length < 1) {
			System.out.println("need output filename!!\n");
			return;
		}
		String filename =args[0]; 
		String ext = ".csv";
		for(int i=0; i < 10; i ++)
			genData(filename + i+ ext, i);		
		System.out.println("main endeed");
	}
	
	
	public static void genData(String filename, int idx) throws IOException {
		Random r = new Random();
		BufferedWriter bw = new BufferedWriter(new FileWriter(filename));
		for(int i = 0; i < MAX; i++ ) {
			String output ="";
			int num = idx * MAX + i;
			output += "id" + num +","; //id;
			output += "name" + num +","; //name
			output += getLeague() + ","; //league
			output += r.nextInt(5000)*100 + ","; //score
			output += r.nextInt(30) + ","; //LV
			int pnum = r.nextInt(1000); // num_play
			int win = (int) (pnum * r.nextDouble());
			output += pnum +"," + win; //num_play
			output += "\n";
			bw.write(output);
		}
		bw.close();
	}
	
	public static char getLeague() {
		int x = (int) (Math.random() * 10 + 1);
		switch(x) {
		case 1:
			return 'D';
		case 2:
			return 'P';
		case 3:
			return 'G';
		case 4:
		case 5:
			return 'S';
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		default:
			return 'B';
		}
		
	}
}



