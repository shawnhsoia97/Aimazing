# Aimazing
建置環境: Yocto zeus Linux 5.6 

問題一:
    
    執行 make 產生執行檔
    執行 make test 產生測試檔
    執行 "./tcp interface port" for sniffing and store to stored.txt
    執行 "./send" 傳送tcp stream 到 127.0.0.1:80
    執行測試腳本 "./question1.sh"
    
問題二:
    
    執行 "question2.sh 檔案名 關鍵字 取代字串" 
    example:
        root@:~/Aimazing# cat test
        hello world helloword
        helloeverone
        root@:~/Aimazing# ./question2.sh test he hi
        the quantity replaced is 3
        hillo world hilloword
        hilloeverone
