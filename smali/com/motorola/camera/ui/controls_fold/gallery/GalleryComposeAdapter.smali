.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final dataList:Ljava/util/ArrayList;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public final itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

.field public minTimestampForApplyAnimation:J

.field public onItemClick:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

.field public uiRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;FLjava/util/ArrayList;J)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->eventListener:Lcom/motorola/camera/EventListener;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->uiRotation:F

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->minTimestampForApplyAnimation:J

    return-void
.end method

.method public static getViewSize(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;F)Landroid/util/Size;
    .locals 3

    const/16 v0, 0x5a

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/16 p1, 0xb4

    int-to-float p1, p1

    rem-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->viewSize:Landroid/util/Size;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isBoundInLandscape:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int v1, v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isBoundInLandscape:Z

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int p0, p1, p0

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_2
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_7
    const-string/jumbo p0, "viewSize"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide p0

    return-wide p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v4, p2

    .line 1
    move-object/from16 v6, p1

    check-cast v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    .line 2
    const-string v1, "holder"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v7, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iget-object v3, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    move-object v2, v1

    iget-object v1, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    .line 3
    iget-object v8, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    if-ltz v4, :cond_0

    .line 4
    iget-object v5, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v9, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_1

    :cond_0
    move-object v1, v8

    goto/16 :goto_b

    .line 6
    :cond_1
    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 7
    iget v9, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->uiRotation:F

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    .line 9
    iget-object v10, v10, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    .line 10
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    .line 11
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-object v13, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    .line 12
    iget-object v12, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v14, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    const-string v15, "cameraData"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v15, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    .line 13
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 p1, v2

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/thumbnail/MediaUtil;->isMediaStoreVideoUri(Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v27, v5

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v15, :cond_e

    .line 16
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getCaptureMode()I

    move-result v4

    move/from16 v16, v15

    const/16 v15, 0x30

    if-ne v4, v15, :cond_2

    .line 17
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 18
    :goto_0
    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    iget-object v15, v15, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    move/from16 v17, v4

    .line 20
    iget v4, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v29, v8

    .line 21
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v8

    move/from16 v30, v9

    .line 22
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v9

    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v10

    invoke-virtual/range {v31 .. v31}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    .line 23
    invoke-static {v8, v9, v10, v0}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object v0

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070181

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 25
    div-int/lit8 v9, v4, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v9, v8

    .line 26
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    if-eqz v17, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v8, v9

    .line 27
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v10

    mul-float/2addr v8, v10

    :goto_1
    float-to-int v8, v8

    .line 28
    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v9, v8}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v18, v0

    .line 29
    invoke-virtual/range {v31 .. v31}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v0

    move/from16 v19, v8

    invoke-virtual/range {v31 .. v31}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v8

    if-le v0, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 30
    :goto_2
    iget v8, v15, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    .line 31
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v20

    move/from16 v21, v15

    mul-float v15, v20, v4

    move/from16 v20, v0

    .line 32
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->eventListener:Lcom/motorola/camera/EventListener;

    move-object/from16 v22, v0

    .line 33
    invoke-interface/range {v22 .. v22}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    int-to-float v8, v8

    sub-float v23, v8, v15

    div-float v23, v23, v21

    sub-float v23, v23, v0

    .line 34
    invoke-static/range {v23 .. v23}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    float-to-int v15, v15

    add-int/2addr v15, v0

    if-eqz v17, :cond_7

    .line 35
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v4}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/2addr v15, v0

    int-to-float v0, v15

    div-float v0, v0, v21

    .line 36
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v21

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    .line 37
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v21

    add-float/2addr v8, v4

    float-to-int v15, v8

    goto/16 :goto_7

    :cond_6
    :goto_3
    sub-int v0, v15, v19

    goto/16 :goto_7

    :cond_7
    move/from16 v17, v0

    .line 38
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 39
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    .line 40
    :cond_8
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 42
    :cond_9
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 43
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v13, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    move/from16 v0, v17

    goto :goto_7

    .line 44
    :cond_b
    :goto_5
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    mul-float/2addr v0, v4

    .line 45
    invoke-interface/range {v22 .. v22}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    .line 46
    new-instance v15, Lcom/motorola/camera/PreviewSize;

    move/from16 v17, v0

    iget v0, v13, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 v18, v8

    iget v8, v13, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v15, v0, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 47
    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    sub-float v8, v18, v17

    div-float v8, v8, v21

    sub-float/2addr v8, v0

    .line 48
    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    int-to-float v4, v9

    .line 49
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v8

    mul-float/2addr v8, v4

    float-to-int v4, v8

    add-int v15, v0, v4

    goto :goto_7

    :cond_d
    :goto_6
    add-int v15, v17, v19

    goto :goto_4

    .line 50
    :goto_7
    invoke-interface/range {v22 .. v22}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v8

    .line 52
    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v8, v4

    float-to-int v4, v8

    .line 53
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v8

    .line 54
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v9

    move/from16 v17, v20

    goto :goto_8

    :cond_e
    move-object/from16 v29, v8

    move/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v16, v15

    .line 55
    iget-object v10, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    .line 56
    iget-boolean v0, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    .line 57
    iget v4, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    .line 58
    iget v15, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    .line 59
    iget v8, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    .line 60
    iget v9, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    move/from16 v17, v0

    .line 61
    iget v0, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    move/from16 v32, v9

    move v9, v0

    move v0, v4

    move v4, v8

    move/from16 v8, v32

    .line 62
    :goto_8
    iput v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 63
    iput v9, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 64
    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 65
    iput v9, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v19, v8

    const/4 v8, 0x0

    .line 66
    invoke-static {v0, v14, v8}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    .line 67
    invoke-static {v15, v12, v8}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    .line 68
    iget-object v12, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->actionLayoutGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v4, v12, v8}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    .line 69
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 72
    new-instance v12, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    move/from16 v23, v4

    .line 73
    iget-wide v4, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    .line 74
    iget v2, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->uiRotation:F

    move/from16 v21, v0

    move-object v8, v1

    .line 75
    iget-wide v0, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    const/16 v18, 0x0

    move-wide/from16 v25, v0

    move/from16 v24, v2

    move/from16 v20, v9

    move-object v14, v10

    move/from16 v22, v15

    move/from16 v9, v16

    move-wide v15, v4

    .line 76
    invoke-direct/range {v12 .. v26}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;-><init>(Lcom/motorola/camera/PreviewSize;Landroid/util/Size;JZZIIIIIFJ)V

    move/from16 v0, v17

    .line 77
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 78
    iget-wide v1, v11, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    move-object/from16 v4, p0

    .line 79
    iget-wide v4, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->minTimestampForApplyAnimation:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 80
    :goto_9
    iget-object v10, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->playButton:Landroid/widget/ImageView;

    .line 81
    iput-object v14, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->viewSize:Landroid/util/Size;

    move-object/from16 v2, v31

    .line 82
    iput-object v2, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->cameraData:Lcom/motorola/camera/CameraData;

    .line 83
    iput-boolean v0, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isBoundInLandscape:Z

    move/from16 v11, v30

    .line 84
    invoke-static {v6, v11}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getViewSize(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;F)Landroid/util/Size;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v11}, Landroid/view/View;->setRotation(F)V

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 89
    iget-boolean v0, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v0, :cond_10

    .line 90
    invoke-static {v6, v11}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getViewSize(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;F)Landroid/util/Size;

    move-result-object v0

    .line 91
    invoke-virtual {v7, v11}, Landroid/view/View;->setRotation(F)V

    .line 92
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 95
    :cond_10
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v0

    .line 96
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v13

    .line 97
    invoke-static {v0, v4, v5, v13}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object v0

    .line 98
    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v4

    .line 99
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    new-instance v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;

    invoke-direct {v13, v4, v5}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Landroid/net/Uri;)V

    .line 101
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 102
    iput-object v4, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 104
    iput v4, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    .line 105
    iput v0, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    .line 106
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    .line 107
    iput v0, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    .line 108
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v14

    .line 109
    iput-wide v4, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    .line 110
    iput-wide v14, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, v13, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    .line 112
    new-instance v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    .line 113
    iget-object v5, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->viewSize:Landroid/util/Size;

    const/4 v14, 0x0

    if-eqz v5, :cond_16

    .line 114
    invoke-direct {v4, v6, v3, v1, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;Landroid/widget/ImageView;ZLcom/motorola/camera/CameraData;)V

    invoke-virtual {v13, v4}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->into(Lcom/google/mlkit/common/internal/zzb;)V

    .line 115
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    .line 116
    invoke-virtual {v3, v11}, Landroid/view/View;->setRotation(F)V

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v13, 0x0

    .line 118
    invoke-virtual {v3, v13}, Landroid/view/View;->setAlpha(F)V

    move/from16 v28, v0

    .line 119
    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object v4, v8

    move v8, v1

    move-object v1, v4

    move/from16 v4, p2

    move/from16 v15, v28

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lcom/motorola/camera/CameraData;Landroid/view/View;II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v10, v11}, Landroid/view/View;->setRotation(F)V

    const/16 v0, 0x8

    .line 121
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 123
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0, v6}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v7, v11}, Landroid/view/View;->setRotation(F)V

    .line 125
    iget-boolean v3, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v3, :cond_14

    .line 126
    invoke-virtual {v7, v10}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->setPlayButton(Landroid/widget/ImageView;)V

    .line 127
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v5, "getUri(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-wide v3, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    .line 129
    iput-object v0, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaUri:Landroid/net/Uri;

    .line 130
    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 131
    sget-object v5, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v4}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    .line 132
    move-object v4, v3

    check-cast v4, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v4}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v14, v5, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    :cond_11
    const-string v5, ""

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 133
    :cond_12
    invoke-virtual {v4, v0}, Landroidx/media3/common/BasePlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 134
    move-object v0, v3

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    .line 135
    :cond_13
    move-object v0, v3

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    .line 136
    iget-object v4, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playerListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;

    .line 137
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v7, v3}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 141
    invoke-virtual {v7, v8}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 142
    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    .line 143
    :cond_14
    invoke-virtual {v7, v0}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 144
    :goto_a
    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    move/from16 v4, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lcom/motorola/camera/CameraData;Landroid/view/View;II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_15

    .line 145
    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    invoke-direct {v0, v2, v12}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;-><init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void

    .line 146
    :cond_16
    const-string/jumbo v0, "viewSize"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 147
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dataList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 6

    .line 148
    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    .line 149
    const-string p1, "holder"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->TAG:Ljava/lang/String;

    if-ltz p2, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    move-object v0, p0

    move v3, p2

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-super {p0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 155
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/os/Bundle;

    .line 156
    const-string v0, "ORIENTATION"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iget p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->uiRotation:F

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->rotateView(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;FIZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;)V

    return-void

    .line 159
    :cond_3
    const-string p0, "invalid payload parameters"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :goto_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid position: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", dataList size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0071

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->releasePlayer()V

    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->releasePlayer()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final rotateView(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;FIZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;)V
    .locals 8

    invoke-static {p1, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getViewSize(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;F)Landroid/util/Size;

    move-result-object v0

    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    goto :goto_0

    :goto_1
    const v1, 0x7f0b0020

    if-eqz v4, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result p4

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v5, 0x0

    aput p4, v3, v5

    const/4 p4, 0x1

    aput p2, v3, p4

    const-string/jumbo v5, "rotation"

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    filled-new-array {v6, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p4}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4, v4, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v3, v5, v0}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;

    move-object v3, p0

    move v6, p2

    move v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Landroid/view/View;IFLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_1
    move v6, p2

    invoke-virtual {v4, v6}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :cond_2
    move v6, p2

    :goto_2
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p2, p0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v6}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
