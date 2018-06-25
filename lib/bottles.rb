
class Bottles
  def verse(bottles)
    verse = []

    if bottles > 1
      verse << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    elsif bottles == 1
      verse << "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
    else
      verse << "No more bottles of beer on the wall, no more bottles of beer."
    end

    if bottles > 2
      verse << "Take one down and pass it around, #{bottles-1} bottles of beer on the wall."
    elsif bottles == 2
      verse << "Take one down and pass it around, 1 bottle of beer on the wall."
    elsif bottles == 1
      verse << "Take it down and pass it around, no more bottles of beer on the wall."
    else
      verse << "Go to the store and buy some more, 99 bottles of beer on the wall."
    end

    verse.join("\n") + "\n"
  end

  def verses(initial, final)
    range(initial, final).map{|bottles| verse(bottles)}.join("\n")
  end

  def song
    verses(99,0)
  end

  def range(initial, final)
    if initial > final
      (final..initial).to_a.reverse
    else
      (initial..final).to_a
    end
  end
end
