# solution with loops
def fibs numb
  seq = numb == 0? [numb] : [0, 1]
  (numb - 1).times { seq << seq[-2] + seq[-1] }
  seq
end

# solution with recursions
def fibs_rec numb, sec = [0, 1]
  return [0] if numb == 0
  return sec if numb == 1
  
  sec << sec[-2] + sec[-1]
  fibs_rec numb - 1, sec
end

