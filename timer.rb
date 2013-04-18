def exec_time(proc)
    start_time = Time.now
  proc.call
    ending_time = Time.now
  timer_time = ending_time - start_time
end
