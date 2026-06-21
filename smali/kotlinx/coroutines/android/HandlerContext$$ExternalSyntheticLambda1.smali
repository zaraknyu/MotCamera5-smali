.class public final synthetic Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setZoomValueX(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void

    :pswitch_3
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    monitor-exit v0

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->loadTexture()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_7
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_4
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez v1, :cond_8

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->onPixelsRead(Ljava/nio/Buffer;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v0

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->onPixelsRead(Ljava/nio/Buffer;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    monitor-enter v1

    :try_start_3
    iget-object p0, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast p0, Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v2, Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Bitmap;

    cmpl-float v6, v3, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_a

    const/high16 v6, 0x43700000    # 240.0f

    mul-float/2addr v6, v4

    div-float v9, v6, v3

    mul-float/2addr v9, v2

    float-to-int v9, v9

    float-to-int v6, v6

    invoke-static {p0, v6, v9, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float v3, v6, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    float-to-int v3, v6

    invoke-static {p0, v3, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v5, v8

    goto :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_a
    const/high16 v6, 0x435c0000    # 220.0f

    mul-float/2addr v6, v4

    div-float v9, v6, v2

    mul-float/2addr v9, v3

    float-to-int v9, v9

    float-to-int v6, v6

    invoke-static {p0, v9, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float v2, v6, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    float-to-int v3, v6

    invoke-static {p0, v2, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v5, v8

    :goto_6
    aget-object v2, v5, v7

    if-eq v2, p0, :cond_b

    aget-object v2, v5, v8

    if-eq v2, p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    monitor-exit v1

    sput-boolean v7, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    aget-object v1, v5, v8

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/cache_bitmap.png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    int-to-float v2, v2

    :try_start_4
    invoke-static {v1, v2, v7, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v6

    invoke-virtual {v1, v4, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.motorola.camera5.background.provider.filedatacontract.FileProviderCustom"

    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    const-string v2, "UiMaskComponent"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->cacheURI:Landroid/net/Uri;

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    aget-object v0, v5, v7

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1, v7, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->realPoint:Landroid/util/SizeF;

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->getRealLocation()V

    :cond_d
    new-instance v1, Landroid/util/SizeF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->realPoint:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->realPoint:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x118

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1450

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :goto_9
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_9
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_a
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, [F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_a

    :cond_e
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_a
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v2, :cond_f

    int-to-float v2, v2

    invoke-static {p0, v2, v4, v4}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :cond_f
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_b
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_6
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->animateModeSwitch()V

    goto :goto_c

    :catchall_2
    move-exception p0

    goto :goto_d

    :cond_10
    :goto_c
    monitor-exit v0

    return-void

    :goto_d
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :pswitch_b
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
