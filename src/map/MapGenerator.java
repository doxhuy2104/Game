package map;

import java.io.FileWriter;
import java.io.IOException;

public class MapGenerator {
    public static void main(String[] args) {
        int rows = 100; // Số hàng
        int cols =100; // Số cột
        String fileName = "map.txt"; // Tên file

        try {
            FileWriter writer = new FileWriter(fileName);

            // Tạo mảng hai chiều và điền giá trị "00"
            for (int i = 0; i < rows; i++) {
                for (int j = 0; j < cols; j++) {
                    writer.write("00,"); // Ghi "00 " vào file
                }
                writer.write("\n"); // Xuống dòng sau mỗi hàng
            }

            writer.close(); // Đóng file
            System.out.println("File " + fileName + " đã được tạo thành công.");
        } catch (IOException e) {
            System.out.println("Có lỗi xảy ra khi tạo file: " + e.getMessage());
        }
    }
}