# inline condition : yes
# unless only : yes
# else : no

x unless y # => ok

unless y
  x
end
#=> ok

unless y
x
else
z
end
#=> Not ok
