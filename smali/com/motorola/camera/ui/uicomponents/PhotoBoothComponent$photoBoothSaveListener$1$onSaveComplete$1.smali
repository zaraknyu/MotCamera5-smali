.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cameraData:Ljava/util/List;

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const/16 p1, 0xb40

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-direct {v4, v2, p0, v1, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;-><init>(Ljava/util/List;Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/Canvas;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    const/16 v2, 0x15

    invoke-direct {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Lcom/motorola/camera/saving/FileName;

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v2, v0, v4, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->saveCollageCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;-><init>(Lcom/motorola/camera/saving/FileName;Ljava/util/concurrent/atomic/AtomicReference;JLcom/motorola/camera/ui/widgets/gl/Matrices;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
