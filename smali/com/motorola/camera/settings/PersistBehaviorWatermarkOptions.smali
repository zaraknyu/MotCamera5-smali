.class public final Lcom/motorola/camera/settings/PersistBehaviorWatermarkOptions;
.super Lcom/motorola/camera/settings/PersistBehavior;
.source "SourceFile"


# virtual methods
.method public final copyValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;->fromString(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public final performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;->fromString(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
