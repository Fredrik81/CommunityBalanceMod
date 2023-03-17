if Server then
    function UmbraMixin:SetOnFire()
        -- CommunityBalanceMod
        -- Don't delete umbra on players when they're set on fire if we have Resilience at any shell level
        if not self:GetHasUpgrade(kTechId.Resilience) and self:GetShellLevel() > 0 then
            self.dragsUmbra = false
            self.timeUmbraExpires = 0
        end
    end
end
