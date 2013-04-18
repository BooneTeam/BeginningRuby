def is_fibonacci?(n)
(2..n).inject([0,1]) { |sum| [sum[1],(sum[0]+sum[1])]}[1]
end
print is_fibonacci?(10)