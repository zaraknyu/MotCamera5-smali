.class public Landroidx/collection/internal/Lock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
.implements Landroidx/media3/extractor/text/SubtitleParser$Factory;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/collection/internal/Lock;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/collection/internal/Lock;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30;

    .line 4
    invoke-direct {p0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/View;)V

    .line 5
    iput-object p1, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    return-void
.end method

.method public static fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
    .locals 3

    const-string v0, "mcfJsonConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    invoke-direct {v0, p0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom512:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Qcom512;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom64:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Qcom64;

    return-object p0

    :cond_1
    const-string p0, "mtk"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Mtk:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Mtk;

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->TAG:Ljava/lang/String;

    const-string v0, "Could not retrieve SoC manufacturer"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SoC manufacturer \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom512:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Qcom512;

    return-object p0
.end method

.method public static getSingleSelected(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
    .locals 6

    const-string v0, "keyTarget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v5, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
    .locals 0

    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SubtitleParser.Factory doesn\'t support any formats."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/collection/internal/Lock;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    const-class v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;-><init>(Lcom/google/firebase/inject/Provider;)V

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, Lokio/Timeout;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lokio/Timeout;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getCueReplacementBehavior(Landroidx/media3/common/Format;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    return-void
.end method

.method public selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/motorola/camera/utility/Error;
    .locals 1

    new-instance p0, Lcom/motorola/camera/utility/Error;

    invoke-direct {p0}, Lcom/motorola/camera/utility/Error;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zza(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    :cond_1
    return-object p0
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
