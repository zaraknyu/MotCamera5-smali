.class public abstract synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic getMCheckInData(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const/16 p0, 0xd

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0xb

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x6

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static m(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result p0

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public static m(IIII)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result p0

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    add-int/2addr p0, p3

    return p0
.end method

.method public static m(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;
    .locals 1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    return-object p0
.end method

.method public static m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzad;
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;-><init>(I)V

    return-object p0
.end method

.method public static m(ILcom/tinder/StateMachine;)Lcom/google/firebase/encoders/FieldDescriptor;
    .locals 2

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    .line 17
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    .line 18
    iget-object p0, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 19
    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    .line 20
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object p0, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfe;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p0, Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object v0, p1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 23
    iget-object v1, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 24
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 26
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public static m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 28
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzad;)Ljava/util/HashMap;
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static m(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static m(JLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 43
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public static m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static m(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static m(Ljava/util/HashMap;)V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static synthetic stringValueOf$1(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "END_DOCUMENT"

    return-object p0

    :pswitch_1
    const-string p0, "NULL"

    return-object p0

    :pswitch_2
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_3
    const-string p0, "NUMBER"

    return-object p0

    :pswitch_4
    const-string p0, "STRING"

    return-object p0

    :pswitch_5
    const-string p0, "NAME"

    return-object p0

    :pswitch_6
    const-string p0, "END_OBJECT"

    return-object p0

    :pswitch_7
    const-string p0, "BEGIN_OBJECT"

    return-object p0

    :pswitch_8
    const-string p0, "END_ARRAY"

    return-object p0

    :pswitch_9
    const-string p0, "BEGIN_ARRAY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public static synthetic stringValueOf$2(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "END_DOCUMENT"

    return-object p0

    :pswitch_1
    const-string p0, "NULL"

    return-object p0

    :pswitch_2
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_3
    const-string p0, "NUMBER"

    return-object p0

    :pswitch_4
    const-string p0, "STRING"

    return-object p0

    :pswitch_5
    const-string p0, "NAME"

    return-object p0

    :pswitch_6
    const-string p0, "END_OBJECT"

    return-object p0

    :pswitch_7
    const-string p0, "BEGIN_OBJECT"

    return-object p0

    :pswitch_8
    const-string p0, "END_ARRAY"

    return-object p0

    :pswitch_9
    const-string p0, "BEGIN_ARRAY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public static synthetic stringValueOf$5(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "ZSL_DEPTH_DUAL"

    return-object p0

    :cond_1
    const-string p0, "DEPTH_DUAL"

    return-object p0

    :cond_2
    const-string p0, "DUAL"

    return-object p0

    :cond_3
    const-string p0, "NORMAL"

    return-object p0
.end method

.method public static synthetic stringValueOf$6(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "OUTPUT"

    return-object p0

    :cond_1
    const-string p0, "INPUT"

    return-object p0
.end method

.method public static synthetic stringValueOf$7(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "PREVIEW_RATE_MOTION_LIMIT"

    return-object p0

    :cond_1
    const-string p0, "PREVIEW_RATE_DEPTH_LIMIT"

    return-object p0

    :cond_2
    const-string p0, "PREVIEW_RATE_LIMIT_LVL_2"

    return-object p0

    :cond_3
    const-string p0, "PREVIEW_RATE_LIMIT_LVL_1"

    return-object p0

    :cond_4
    const-string p0, "PREVIEW_RATE_LIMIT_DEFAULT"

    return-object p0
.end method

.method public static synthetic valueOf(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_3

    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "FIXED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "NON_FIXED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.motorola.camera.IqConfigManager.QcMfnrSetting.MfnrAnchorSelectionAlgos."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic valueOf$1(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_3

    const-string v0, "TIMESTAMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "SHARPNESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "LIGHTING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.motorola.camera.IqConfigManager.QcMfnrSetting.MfnrAnchorSelectionModes."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
