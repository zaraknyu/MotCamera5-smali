.class public final Lcom/motorola/camera/adobe_scan/ComponentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/IComponentProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/adobe_scan/ComponentProvider;",
        "Lcom/motorola/camera/ui/IComponentProvider;",
        "<init>",
        "()V",
        "feature_adobe_scan_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComposeComponent(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)Lcom/motorola/camera/ui/compose/component/ComposeComponent;
    .locals 0

    new-instance p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    return-object p0
.end method

.method public final processFrame(ILandroid/media/Image;)Z
    .locals 2

    const/16 p0, 0x33

    const/4 v0, 0x0

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->analyzeFrameJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object p0

    iget-object p0, p0, Lh/C;->d:Lh/d;

    iget-object p0, p0, Lh/d;->c:La/i;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;-><init>(Landroid/media/Image;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->analyzeFrameJob:Lkotlinx/coroutines/StandaloneCoroutine;

    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return v0
.end method
