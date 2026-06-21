.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->refreshing:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->lastCameraData:Lcom/motorola/camera/CameraData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v1, v0, v0, p0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->refreshing:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
