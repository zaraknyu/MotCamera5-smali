.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->instance$delegate:Ljava/lang/Object;

    const-string p1, "LaunchGalleryHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
