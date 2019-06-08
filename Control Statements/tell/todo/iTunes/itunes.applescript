on is_running(appname)
    tell application "System Events" to set theCount to the count of (processes whose name is appname)
    return theCount > 0
end is_running


script iTunes
    property fade_seconds : 5 #время затухания/включения
    property delay_seconds : 2 #пауза перед затуханием/включением
    property fade_volume : 50

    on get_volume() #возвращает громкость
        tell application "iTunes" to return sound volume
    end get_volume

    on set_volume(volume) #устанавливаем громкость
        tell application "iTunes" to set the sound volume to volume
    end set_volume

    on is_running()
        return is_running("iTunes")
    end is_running

    on player_state() #состояние {playing, paused, stopped}
        tell application "iTunes" to return player state
    end player_state

    on is_playing() #true если playing
        return player_state() is playing
    end is_playing

    on is_paused() #true если paused
        return player_state() is paused
    end is_paused


    on fadein() --затухание
        if is_running() then #iTunes запущен
            if is_playing() then # и играет в данный момент
                set fade_volume to get_volume() #запоминаем громкость
                set delay_period to fade_seconds / (get_volume() + 1) #рассчитываем время чтобы затихнуть за n_seconds секунд
                repeat with i from currentvolume to 0 by -1
                    set_volume(i)
                    delay delay_seconds
                end repeat
                tell application "iTunes" to pause #ПАУЗА
                delay delay_seconds #выдерживаем небольшую паузу
            end if
        end if
    end fadein

    on fadeout() --мягкое включение
        if is_running() then #iTunes запущен
            if is_paused() = true then #был поставлен на паузу
                delay delay_seconds #выдерживаем небольшую паузу
                tell application "iTunes" to play #включаем воспроизведение
                repeat with i from 0 to fade_volume by 1
                    set_volume(i)
                end repeat
            end if
        end if
    end fadeout

end script

#tell iTunes to fadein()
tell iTunes to player_state()
