.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$2:Z

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->$r8$classId:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$2:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    check-cast v5, Landroid/graphics/Point;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_0

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v1, v5, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v6, v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v6, v3, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    mul-int/2addr v1, v4

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v5}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v6, v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v6, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    mul-int/2addr v1, v4

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, v5}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    check-cast v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->shareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->deleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->ROTATE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    if-eq v5, v2, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getItemCount()I

    move-result v5

    if-lez v5, :cond_5

    if-ltz v1, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getItemCount()I

    move-result v5

    if-lt v1, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/thumbnail/MediaUtil;->isMediaStoreVideoUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->pauseVideo()V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->shareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->deleteButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    return-void

    :pswitch_1
    check-cast p0, Landroid/graphics/PointF;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    if-eqz v6, :cond_a

    const/4 p0, 0x1

    invoke-virtual {v5, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetColorPickerPosition(Z)V

    goto :goto_4

    :cond_a
    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_b

    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    :cond_b
    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-eqz v0, :cond_c

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :cond_c
    :goto_4
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsPosition(Landroid/view/View;)V

    if-eqz v6, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsPosition(Landroid/view/View;)V

    if-eqz v6, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    check-cast v5, Landroid/view/View;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onLastContentClosed:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    :cond_10
    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    iget-object p0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_12

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-boolean v0, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v0, :cond_11

    sget v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    sget-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->removeFromProcessingList(I)V

    goto :goto_5

    :cond_11
    iget-boolean v0, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->removeFromProcessingList(I)V

    :cond_12
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
