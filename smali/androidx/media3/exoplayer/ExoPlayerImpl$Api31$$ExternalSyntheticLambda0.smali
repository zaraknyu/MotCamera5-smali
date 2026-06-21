.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Integer;ZLcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->aiLensAllowed:Z

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showView$default(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v6, :cond_0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    return-void

    :pswitch_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v1, :cond_6

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    const v2, 0x7f080185

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageResource(I)V

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060457

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    iget-object v8, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    if-ne v5, v10, :cond_7

    move v3, v9

    :cond_7
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v8, v9}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v10, v0

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, v4, v7, v1, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_8
    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->crossFadeAnimDuration:I

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    if-ne v5, v0, :cond_9

    const v6, 0x3ecccccd    # 0.4f

    :cond_9
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6, v2, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/CameraData;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v5, :cond_a

    goto/16 :goto_7

    :cond_a
    if-eqz v3, :cond_13

    if-eqz v4, :cond_13

    sget-boolean v5, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v5, :cond_11

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getCaptureMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v0

    new-instance v5, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v6, 0x6

    invoke-direct {v5, v3, v0, v6}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v6, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v3, v6, :cond_b

    iget-object v6, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v0, v6, :cond_c

    :cond_b
    iget-object v6, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v4}, Lcom/motorola/camera/watermark/WatermarkEditor;->shouldAddThumbnailWatermark(Lcom/motorola/camera/CameraData;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    :cond_d
    new-instance v0, Landroid/util/Size;

    iget-object v3, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v6, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v3, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v6

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v7

    invoke-static {v3, v0, v6, v7}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object v0

    new-instance v6, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v11

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v6 .. v17}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    invoke-virtual {v6}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMinorCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v6, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/extractor/mkv/Sniffer;

    iget-object v7, v5, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0, v7}, Landroidx/media3/extractor/mkv/Sniffer;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v6, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v6, Lcom/google/common/base/Splitter;

    invoke-virtual {v6, v0, v5}, Lcom/google/common/base/Splitter;->put(Ljava/lang/String;Lcom/motorola/camera/ui/DownUpDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    :goto_5
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez v0, :cond_f

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_f
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getCaptureMode()I

    move-result v3

    const/16 v5, 0x30

    if-ne v3, v5, :cond_13

    :cond_10
    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->addCameraData(Lcom/motorola/camera/CameraData;Z)V

    goto :goto_6

    :cond_11
    invoke-static {v4, v2}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_12
    invoke-static {v0, v3, v4, v2}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/motorola/camera/CameraData;Z)V

    :cond_13
    :goto_6
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :pswitch_2
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/analytics/PlayerId;

    const-string v0, "media_metrics"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_8

    :cond_14
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object v0, v5

    :goto_8
    if-nez v0, :cond_15

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    if-eqz v2, :cond_16

    iget-object v1, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    monitor-enter v4

    :try_start_2
    iget-object v1, v4, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/LogSessionId;

    sget-object v3, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v2, v3}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object v0, v1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    :goto_9
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
