.class public final Lcom/motorola/camera/settings/PersistEnumBehavior;
.super Lcom/motorola/camera/settings/PersistBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/settings/PersistEnumBehavior;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/settings/PersistBehavior;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final copyValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget p0, p0, Lcom/motorola/camera/settings/PersistEnumBehavior;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_2
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_3
    const-wide/16 v0, 0x0

    invoke-interface {p3, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_4
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_5
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_6
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_7
    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    :pswitch_8
    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public load(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 3

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    :try_start_0
    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIO_TYPES:Ljava/util/EnumMap;

    .line 31
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 35
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)Lcom/motorola/camera/VideoFormat;
    .locals 1

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    .line 42
    :cond_0
    :try_start_0
    new-instance p1, Lcom/motorola/camera/VideoFormat;

    invoke-direct {p1, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 43
    :catch_0
    const-string/jumbo p1, "unable to load: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersistVideoFormatBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    const-class p1, Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 39
    :catch_0
    const-string/jumbo p1, "unable to load: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersistEnumBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p3
.end method

.method public final load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/PersistEnumBehavior;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p3, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, p2, p1, p3}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    check-cast p3, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    check-cast p3, [Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, [Ljava/lang/String;

    :cond_0
    return-object p3

    .line 9
    :pswitch_2
    check-cast p3, Landroid/util/Size;

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p3

    :cond_1
    return-object p3

    .line 13
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_5
    check-cast p3, Ljava/lang/Float;

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_6
    check-cast p3, Ljava/lang/Boolean;

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_7
    check-cast p3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_8
    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p0, p2, p1, p3}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/settings/PersistEnumBehavior;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_1
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_2
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    :cond_3
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_4
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_5
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_6
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_7
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0, v0, p2, p1}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    :cond_4
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    return-void

    :pswitch_8
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/settings/PersistEnumBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/PersistEnumBehavior;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p3, Lcom/motorola/camera/VideoFormat;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/motorola/camera/VideoFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_1
    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_2
    check-cast p3, Landroid/util/Size;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Float;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_6
    check-cast p3, Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_7
    check-cast p3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p3, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_8
    check-cast p3, Ljava/lang/Enum;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
