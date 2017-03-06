#!/bin/bash

while read ip
do
    sshpass -p 'operativos' ssh -o StrictHostKeyChecking=no operativos@$ip "curl http://www.gutenberg.org/files/54240/54240-0.txt >> /tmp/libroDescargado.txt"
done < ipsFile.txt

