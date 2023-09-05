num = 1002
copy = num
edited = 0
while (num!=0){
  print(num)
  reminder = num%%10
  num = num%/%10
  edited = edited*10 +reminder
}
print(edited)
if(edited == copy){
  print("The number is a palindrome")
}else{
  print("The number is not a palindrome")
}