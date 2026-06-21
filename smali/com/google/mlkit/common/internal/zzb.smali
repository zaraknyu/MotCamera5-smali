.class public synthetic Lcom/google/mlkit/common/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;
.implements Landroidx/preference/Preference$SummaryProvider;
.implements Lkotlin/coroutines/CoroutineContext$Key;
.implements Lcom/google/android/datatransport/runtime/time/Clock;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static sSimpleSummaryProvider:Lcom/google/mlkit/common/internal/zzb;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 3
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public static createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 2

    if-nez p2, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_0
    iget p1, p1, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;-><init>()V

    return-object p0
.end method

.method public getTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "OptionalModuleUtils"

    const-string v0, "Failed to request modules install request"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onResourceReady(Lcom/motorola/camera/thumbnail/ThumbnailKey;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroidx/preference/EditTextPreference;

    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const p1, 0x7f120335

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public readData(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 0

    const/4 p0, 0x4

    iput p0, p2, Landroidx/media3/decoder/Buffer;->flags:I

    const/4 p0, -0x4

    return p0
.end method

.method public skipData(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
