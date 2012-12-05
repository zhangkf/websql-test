require 'csv'
f = File.new("csv.sql", "w")
CSV.open('price_list.csv', 'r') do |data|
	f.puts "tx.executeSql('INSERT INTO foo (id, ITEM_CLASS, ITEM_CODE, ITEM_NAME, ITEM_SPEC, UNITS, PRICE, PREFER_PRICE, FOREIGNER_PRICE, PERFORMED_BY, FEE_TYPE_MASK, CLASS_ON_INP_RCPT, CLASS_ON_OUTP_RCPT, CLASS_ON_RECKONING, SUBJ_CODE, CLASS_ON_MR, MEMO, START_DATE, STOP_DATE, OPERATOR, ENTER_DATE ,INSURANCESCOPE) VALUES(" + data[0] + ", " +"\"" + data[1] + "\""+ "," + "\"" + data[2] + "\""+ ", " + "\"" + "XXXXXXXXXXXXXXXXXXX" + "\""+ ", " + "\"" + "SSSSSSSSSSSSSSSS" + "\""+ ", " + "\"" + "UUUUUU" + "\""+ "," + "\"" + data[6] + "\""+ ", " + "\"" + data[7] + "\""+ ", " + "\"" + data[8] + "\""+ ",  " + "\"" + data[9] + "\""+ "," + "\"" + data[10] + "\""+ "," + "\"" + data[11] + "\""+ ", " + "\"" + data[12] + "\""+ ",  " + "\"" + data[13] + "\""+ ",  " + "\"" + data[14] + "\""+ ", " + "\"" + data[15] + "\""+ ",  " + "\"" + "MMMMMMMMMMMMMMMMMMMM" + "\""+ "," + "\"" + data[17] + "\""+ "," + "\"" + data[18] + "\""+ ", " + "\"" + data[19] + "\""+ ",  " + "\"" + data[20] + "\""+ ", " + "\"" + data[21] + "\"" +")');"

end
f.close