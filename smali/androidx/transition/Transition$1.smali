.class public final Landroidx/transition/Transition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Lkotlin/coroutines/CoroutineContext$Key;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;


# static fields
.field public static zza:Landroidx/transition/Transition$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/transition/Transition$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PermissionCallback;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Landroidx/transition/Transition$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(FFFF)Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public static getShuffleCartoons()Ljava/util/ArrayList;
    .locals 5

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/UIntArray$Iterator;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->LEGACY:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzk;

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 6
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 7
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzj;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final zzb(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 2
    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    :goto_0
    move v3, v0

    goto :goto_3

    .line 5
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_2

    .line 6
    :cond_3
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    move v3, v2

    move-object v2, p0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :goto_3
    if-eqz p0, :cond_6

    .line 7
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz v3, :cond_5

    .line 8
    sget-object p0, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    invoke-static {v2, p0}, Landroidx/transition/Transition$1;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object p0

    goto :goto_4

    .line 9
    :cond_5
    sget-object p0, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    aget-object p0, p0, v1

    filled-new-array {p0}, [Lcom/google/android/gms/common/zzj;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/transition/Transition$1;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Landroidx/transition/Transition$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/mlkit/vision/barcode/internal/zzg;

    const-class v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-virtual {p1, v1}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p1, v2}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/mlkit/common/internal/zzc;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public endTracks()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    new-instance p0, Lcom/google/android/gms/tasks/zzu;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tasks/zzu;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public getCodecCount()I
    .locals 0

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result p0

    return p0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCutoutsCoordinates()Ljava/util/ArrayList;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHasCutout()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string/jumbo p0, "secure-playback"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "video/avc"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public secureDecodersExplicit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 0

    .line 9
    new-instance p0, Lcom/google/android/play/core/splitinstall/zzbe;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method
