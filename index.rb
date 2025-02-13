def programme_boucle
loop do
  puts "veuillez entrez une premiere sequences d'ADN (utilisez uniquement les lettres C,A,G,T:)"
  sequence_one=gets.chomp
  puts "veuillez entrez une deuxieme sequences d'ADN (utilisez uniquement les lettres C,A,G,T:)"
  sequence_two=gets.chomp
  s1=sequence_one.gsub(' ','')
  s2=sequence_two.gsub(' ','')
  if s1.match?(/\A[CAGTcagt]*\z/) and s2.match?(/\A[CAGTcagt]*\z/)
    if s1.size==s2.size
      distance_hamming(sequence_one,sequence_two)
      break
    else 
      puts "les sequences doit avoir la meme taille"
    end
  else
    puts "Veuillez utilisez uniquement les lettres C,A,G,T"
end
end
end

def distance_hamming(s1,s2)
  lettre_s1=s1.chars
  lettre_s2=s2.chars
  distance=0
  for i in 0..s1.size
    if lettre_s1[i]!=lettre_s2[i]
      distance=distance+1
    end
  end
  puts "la distance hamming est #{distance}"
end
programme_boucle

