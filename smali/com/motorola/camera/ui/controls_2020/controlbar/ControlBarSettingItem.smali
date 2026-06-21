.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;
.super Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;
.source "SourceFile"


# instance fields
.field public areMultiValuesEnabled:Z

.field public isAlwaysOn:Z

.field public isPrimaryTint:Z

.field public unspecifiedColor:Z


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isPrimaryTint:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ControlBarSettingItem(key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPrimaryTint="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLocked="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", areMultiValuesEnabled="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
