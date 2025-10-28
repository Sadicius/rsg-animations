-- Definicja tłumaczeń
local Translations = {

    client = {  -- tłumaczenia po stronie klienta
        lang_1 = 'dodaj tutaj',
    },

    server = {  -- tłumaczenia po stronie serwera
        lang_1 = 'dodaj tutaj',
    },

}

-- Utworzenie nowego obiektu Locale z wprowadzonymi tłumaczeniami
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true  -- ostrzegaj, jeśli brak tłumaczenia
})

-- Przykładowe użycie:
-- Lang:t('client.lang_1')  -- pobiera tłumaczenie po stronie klienta
-- Lang:t('server.lang_1')  -- pobiera tłumaczenie po stronie serwera
