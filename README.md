# Almazing
建置環境: Yocto zeus Linux 5.6 

問題一:
    
    執行 make 產生執行檔
    執行 "./tcp interface port" for sniffing and store to stored.txt
    
問題二:
    
    執行 "question2.sh 檔案名 關鍵字 取代字串" 
    example:
        root@:~/Almazing# cat test
        hello world helloword
        helloeverone
        root@:~/Almazing# ./question2.sh test he hi
        the quantity replaced is 3
        hillo world hilloword
        hilloeverone
