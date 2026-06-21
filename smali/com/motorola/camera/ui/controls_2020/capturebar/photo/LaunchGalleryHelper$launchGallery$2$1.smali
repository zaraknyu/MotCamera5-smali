.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $bitmap:Landroid/graphics/Bitmap;

.field public final synthetic $onUIUpdate:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
