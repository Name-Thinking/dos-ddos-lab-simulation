# DoS & DDoS Simulation Lab (ICMP Flood)

โปรเจกต์จำลองการโจมตีแบบ DoS และ DDoS ด้วยวิธี ICMP Flood บนระบบเครือข่ายจำลอง (VirtualBox) และวิเคราะห์ปริมาณทราฟฟิกด้วยโปรแกรม Wireshark

## Demo Video
- **YouTube:** [Demo Video (YouTube)](https://youtu.be/L6hLnSAkv5Q?si=3urtgz3DfPQkM6vJ)
- **Google Drive:** [GoHard Video Live Demo (Google Drive)](https://drive.google.com/drive/folders/1UWy6RxN-n9wvdmf7NMen3Dj9biPiIDSf)

## Lab Environment (VirtualBox)
- **Network Mode:** Bridged Adapter (Promiscuous Mode: Allow All)
- **Victim VM (`Frank`):** `10.230.4.202`
- **Attacker VM (`Supachok`):** เครื่องต้นทางสำหรับยิงทราฟฟิก DoS
- **Secondary VM (`Sila`):** `10.230.4.201` (ร่วมยิงทราฟฟิกพร้อมกันเพื่อจำลอง DDoS)

## Commands & Source Code
1. **DoS Simulation (`dos_attack.bat`):**
   ```cmd
   ping 10.230.4.202 -n 20 -l 65500
   ```

2. **DDoS Simulation (`ddos_attack.bat`):**
   รันคำสั่งยิงต่อเนื่องพร้อมกันหลายเซสชัน/หลายเครื่อง:
   ```cmd
   ping 10.230.4.202 -t -l 65500
   ```

## Results
- การส่งแพ็กเก็ตขนาด 65,500 bytes ไปยังเครื่องเป้าหมาย `10.230.4.202` สำเร็จครบถ้วน (`Lost = 0%`)
- ตรวจสอบทราฟฟิกผ่าน Wireshark (`Statistics > I/O Graphs`) พบปริมาณแพ็กเก็ตพุ่งสูงขึ้นอย่างชัดเจนในช่วงที่ทำการโจมตี

