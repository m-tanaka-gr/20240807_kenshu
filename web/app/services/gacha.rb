class Gacha

    def self.doGacha
        r = ['佐藤', '鈴木', '伊藤', '渡辺', '山本', '中村', '小林', '加藤', '吉田', '山田']
        sr = ['神田川', '大河内', '五郎丸', '阿久津', '曽我部']
        picSr = ['九頭龍', '与那覇']
        ssr = ['五所川原', '小比類巻']
        picSsr = '武者小路'

        numList = Array.new(10){rand 199}

        if numList.find{|num| num <= 29} === nil
            numList.shift(1)
            rarity = rand(29)
            numList.unshift(rarity)
        end

        for num in numList do

            if (0..9) === num 
                # puts 'SSR'
                if (0..4) === num
                    puts("SSR" + picSsr)
                else 
                    name = ssr.sample
                    puts ("SSR" + name)
                end

            elsif (10..29) === num 
                # puts 'SR'
                if (10..19) === num
                    puts("SR" + picSr.sample)
                else
                    name = sr.sample
                    puts("SR" + name)
                end
            
            else (30..199) === num 
                # puts 'R'
                name = r.sample
                puts("R" + name)
            end
        end
    end
end