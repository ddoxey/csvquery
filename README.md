# csvquery
Query CSV files with gawk

# Usage
```
$ cat sample.csv 
a,b,c,d,e,f,g,h
1,2,3,4,5,6,7,8
2,3,1,5,6,5,1,6
5,3,1,5,6,5,1,6
```
```
$ awk -F, -v query='a:2,g:1' -f csvquery/csvquery.awk sample.csv 
2,3,1,5,6,5,1,6
```
```
$ awk -F, -v query='g:1' -f csvquery/csvquery.awk sample.csv 
2,3,1,5,6,5,1,6
5,3,1,5,6,5,1,6
```
