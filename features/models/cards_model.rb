class CardsModel
    attr_accessor :name, :desc, :pos, :due

    def invalid_date_post
    {
      name: @name,
      desc: @desc,
      pos: @pos,
      due: @due
    }
  end

  def invalid_campo_post
    {
      name: @name,
      desc: @desc,
      pos: @pos,
      due: @due
    }
  end
  
  def card_hash_post
      {
        name: @name,
        desc: @desc,
        pos: @pos,
        due: @due
    }
  end

  def card_hash_put
    {
      name: @name,
      desc: @desc,
      pos: @pos,
      due: @due
    }
  end
end