# dstat
function dstat()
{
    cat <<EOF
===dstat===
参考URL:
https://orebibou.com/2016/06/dstat%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%81%A7%E8%A6%9A%E3%81%88%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E4%BD%BF%E3%81%84%E6%96%B96%E5%80%8B/
http://www.atmarkit.co.jp/ait/articles/1506/01/news152.html

-CPU-
usr … ユーザ空間で使われたCPU使用時間の割合
sys … システム空間で使われたCPU仕様時間の割合
idl … アイドル状態のCPU時間の割合
wai … 応答の待ち状態にあったCPU時間の割合
hiq … ハードウェア割り込み処理に使われたCPU時間の割合
siq … ソフトウェア割り込み処理に使われたCPU時間の割合

-DISK-
read … ディスクの読み込みバイト数
writ … ディスクの書き込みバイト数

-ネットワーク-
recv … ネットワーク全体での受信データ容量
send … ネットワーク全体での送信データ容量

-ページング-
in … ディスクからメモリに読み込んだバイト数
out … メモリ不足時にディスクに書き出したバイト数

-割り込み／コンテキストスイッチの回数-
int … 割り込み回数
csw … コンテキストスイッチの回数
===========
EOF
}
