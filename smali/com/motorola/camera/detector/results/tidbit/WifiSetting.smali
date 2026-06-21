.class public final Lcom/motorola/camera/detector/results/tidbit/WifiSetting;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;
.source "SourceFile"


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getIcon()I
    .locals 0

    const p0, 0x7f0802af

    return p0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiSetting:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1203d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
