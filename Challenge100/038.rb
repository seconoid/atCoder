# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_10_C&lang=ja
#
# LCS
# 最長共通部分列問題 (Longest Common Subsequence problem: LCS)は、
# ２つの与えられた列 X={x1,x2,...,xm} と Y={y1,y2,...,yn} の最長共通部分列を求める問題です。
# ある列 Z が X と Y 両方の部分列であるとき、Z を X とY の共通部分列と言います。
# 例えば、X={a,b,c,b,d,a,b}, Y={b,d,c,a,b,a} とすると、列 {b,c,a} は X と Y の共通部分列です
# 一方、列 {b,c,a} は X と Y の最長共通部分列ではありません。なぜなら、その長さは 3 であり、長さ 4 の共通部分列 {b,c,b,a} が存在するからです。
# 長さが 5 以上の共通部分列が存在しないので、列 {b,c,b,a} は X と Y の最長共通部分列の１つです。
# 与えられた２つの文字列 X、Yに対して、最長共通部分列 Z の長さを出力するプログラムを作成してください。
# 与えられる文字列は英文字のみで構成されています。
#
# input
# 複数のデータセットが与えられます。最初の行にデータセットの数 q が与えられます。続く 2×q 行にデータセットが与えられます。
# 各データセットでは２つの文字列 X, Y がそれぞれ１行に与えられます。
#
# output
# 各データセットについて X, Y の最長共通部分列 Z の長さを１行に出力してください。
#
# sample
# 3
# abcbdab
# bdcaba
# abc
# abc
# abc
# bc
# => 4
# => 3
# => 2

def resolve
  q = gets.to_i
  x_y_list = (q * 2).times.map do
    gets.chomp
  end

  lcs(x_y_list)
end

def lcs(x, y)

end

q = 3
x_y_list = %W(abcbdab bdcaba abc abc abc bc)

