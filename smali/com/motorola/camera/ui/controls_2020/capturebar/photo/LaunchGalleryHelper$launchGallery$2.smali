.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;
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

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;->$onUIUpdate:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
