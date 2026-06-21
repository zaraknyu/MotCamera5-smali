.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final instance$delegate:Ljava/lang/Object;


# instance fields
.field public volatile allowClick:Z

.field public cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field public launchRequestInfo:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->instance$delegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final launchGallery(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/EventListener;Lkotlin/jvm/functions/Function1;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "eventListener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->allowClick:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->allowClick:Z

    if-eqz p3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    new-instance v4, Ljava/util/concurrent/CyclicBarrier;

    new-instance v5, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v6, 0xc

    invoke-direct {v5, v6, v0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v3, v5}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz p3, :cond_4

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object v3

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v4

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v15

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v16

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v18

    new-instance v10, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    const/16 v21, 0x1

    const/16 v20, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    new-instance v3, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v10, v3}, Lcom/motorola/camera/thumbnail/wrapper/DecoderWrapper;->decode(Lcom/motorola/camera/thumbnail/ThumbnailKey;Lcom/google/mlkit/common/internal/zzb;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnail(Lcom/motorola/camera/CameraData;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v9

    :goto_1
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v4, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;

    move-object/from16 v6, p5

    invoke-direct {v5, v6, v3, v0, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$2;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v9, v9, v5, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_4
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v3

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    new-instance v6, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v6, v2, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v10

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v9, v9, v0, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
