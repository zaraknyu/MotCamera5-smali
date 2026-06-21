.class public final Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $startTime:J

.field public L$0:Lcom/motorola/camera/utility/lens/LensApi;

.field public label:I


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    iget-wide v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->$startTime:J

    invoke-direct {p1, v0, v1, p2}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;-><init>(JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Lcom/motorola/camera/utility/lens/LensApi;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    new-instance p1, Lcom/motorola/camera/utility/lens/LensApi;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Lcom/motorola/camera/utility/lens/LensApi;

    iput v3, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->label:I

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/motorola/camera/utility/lens/LensApi;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    int-to-long v4, v2

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "com.google.android.googlequicksearchbox"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string v4, "getPackageInfo(...)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const-wide/32 v6, 0x11f4fb4b

    cmp-long p0, v4, v6

    if-ltz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    sget-object v4, Lcom/motorola/camera/utility/lens/LensApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Lens activity available: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", valid version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    iput-boolean p0, p1, Lcom/motorola/camera/utility/lens/LensApi;->isAvailable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    sput-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;

    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    monitor-enter p0

    :try_start_0
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result p1

    if-nez p1, :cond_7

    move p1, v3

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_7
    move p1, v2

    :goto_5
    sput-boolean p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z

    sput-boolean v3, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    sget-object p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-array v1, v2, [Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "elements"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/HashSet;)V

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/motorola/camera/utility/lens/LensApi;->isAvailable:Z

    xor-int/2addr v3, v0

    :cond_8
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v0, "LENSSTAT"

    invoke-virtual {p1, v3, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, "iterator(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "next(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    invoke-interface {p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_6

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_7
    monitor-exit p0

    throw p1
.end method
