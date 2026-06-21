.class public final Landroidx/media3/exoplayer/MediaSourceList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final childSources:Ljava/lang/Object;

.field public final enabledMediaSourceHolders:Ljava/lang/Object;

.field public final eventHandler:Ljava/lang/Object;

.field public final eventListener:Ljava/lang/Object;

.field public isPrepared:Z

.field public final mediaSourceByMediaPeriod:Ljava/lang/Object;

.field public final mediaSourceByUid:Ljava/lang/Object;

.field public final mediaSourceHolders:Ljava/lang/Object;

.field public final mediaSourceListInfoListener:Ljava/lang/Object;

.field public mediaTransferListener:Ljava/lang/Object;

.field public final playerId:Ljava/lang/Object;

.field public shuffleOrder:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    .line 3
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    .line 4
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    .line 6
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v1}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Ljava/lang/Object;

    .line 10
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Ljava/lang/Object;

    .line 11
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    .line 12
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    check-cast v2, [Lcom/airbnb/lottie/value/LottieFrameInfo;

    new-instance v3, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v3}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    aput-object v3, v2, v1

    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p4, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Ljava/lang/Object;

    .line 20
    new-instance p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addMediaSources(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_4

    sub-int v1, p3, p1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    const/4 v2, 0x0

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget v3, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v4, v4, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    iput-boolean v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iput v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    iput-boolean v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    move v3, p3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v5, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v5, v2

    iput v5, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaSourceList;->prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/gms/tasks/zzs;Landroid/graphics/Path;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    check-cast v5, [Landroid/graphics/Matrix;

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    check-cast v7, [Lcom/airbnb/lottie/value/LottieFrameInfo;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v8, [Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v2, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v11, 0x1

    if-ge v12, v15, :cond_9

    iget-object v15, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/PointF;

    if-eq v12, v11, :cond_2

    if-eq v12, v13, :cond_1

    if-eq v12, v14, :cond_0

    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_0
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_1
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_2
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    :goto_1
    if-eq v12, v11, :cond_5

    if-eq v12, v13, :cond_4

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3

    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_3
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_4
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_5
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    :goto_2
    aget-object v11, v7, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v14, v2}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v14

    move-object/from16 v18, v5

    move/from16 v5, p2

    invoke-virtual {v13, v11, v5, v14}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/airbnb/lottie/value/LottieFrameInfo;FF)V

    add-int/lit8 v11, v12, 0x1

    rem-int/lit8 v13, v11, 0x4

    mul-int/lit8 v13, v13, 0x5a

    int-to-float v13, v13

    aget-object v14, v8, v12

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    const/4 v14, 0x1

    if-eq v12, v14, :cond_8

    const/4 v14, 0x2

    if-eq v12, v14, :cond_7

    const/4 v14, 0x3

    if-eq v12, v14, :cond_6

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15, v14, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_6
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    aget-object v5, v8, v12

    iget v14, v15, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v5, v8, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v5, v7, v12

    iget v14, v5, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    aput v14, v6, v16

    iget v5, v5, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    const/16 v17, 0x1

    aput v5, v6, v17

    aget-object v5, v8, v12

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v5, v18, v12

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    aget-object v5, v18, v12

    aget v14, v6, v16

    aget v15, v6, v17

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v5, v18, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v12, v11

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_9
    move-object/from16 v18, v5

    move/from16 v5, v16

    :goto_4
    if-ge v5, v15, :cond_13

    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    aput v12, v6, v16

    iget v11, v11, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    const/16 v17, 0x1

    aput v11, v6, v17

    aget-object v11, v8, v5

    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v5, :cond_a

    aget v11, v6, v16

    aget v13, v6, v17

    invoke-virtual {v4, v11, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_a
    aget v11, v6, v16

    aget v13, v6, v17

    invoke-virtual {v4, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v11, v7, v5

    aget-object v13, v8, v5

    invoke-virtual {v11, v13, v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v3, :cond_b

    aget-object v11, v7, v5

    aget-object v13, v8, v5

    iget-object v14, v3, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v15, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p2, v12

    move/from16 v12, v16

    invoke-virtual {v15, v5, v12}, Ljava/util/BitSet;->set(IZ)V

    iget-object v12, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v14, v11, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    invoke-virtual {v11, v14}, Lcom/airbnb/lottie/value/LottieFrameInfo;->addConnectingShadowIfNecessary(F)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v13, Ljava/util/ArrayList;

    iget-object v11, v11, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v11, v13, v14}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v11, v12, v5

    goto :goto_6

    :cond_b
    move/from16 p2, v12

    :goto_6
    iget-object v11, v0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Path;

    iget-object v12, v0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast v12, Lcom/airbnb/lottie/value/LottieFrameInfo;

    add-int/lit8 v13, v5, 0x1

    rem-int/lit8 v14, v13, 0x4

    aget-object v15, v7, v5

    iget v2, v15, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    const/16 v16, 0x0

    aput v2, v6, v16

    iget v2, v15, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    const/16 v17, 0x1

    aput v2, v6, v17

    aget-object v2, v8, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Ljava/lang/Object;

    check-cast v2, [F

    aget-object v15, v7, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput p2, v2, v16

    iget v15, v15, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    aput v15, v2, v17

    aget-object v15, v8, v14

    invoke-virtual {v15, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v15, v6, v16

    aget v19, v2, v16

    sub-float v15, v15, v19

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    float-to-double v7, v15

    aget v15, v6, v17

    aget v2, v2, v17

    sub-float/2addr v15, v2

    float-to-double v2, v15

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    move/from16 v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget-object v3, v19, v5

    iget v7, v3, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    const/16 v16, 0x0

    aput v7, v6, v16

    iget v3, v3, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    const/4 v7, 0x1

    aput v3, v6, v7

    aget-object v3, v20, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v5, v7, :cond_c

    const/4 v3, 0x3

    if-eq v5, v3, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aget v8, v6, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    goto :goto_7

    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    const/16 v16, 0x0

    aget v7, v6, v16

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    :goto_7
    const/high16 v3, 0x43870000    # 270.0f

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v3, v7}, Lcom/airbnb/lottie/value/LottieFrameInfo;->reset(FFF)V

    const/4 v7, 0x1

    if-eq v5, v7, :cond_f

    const/4 v3, 0x2

    if-eq v5, v3, :cond_e

    const/4 v7, 0x3

    if-eq v5, v7, :cond_d

    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Landroidx/collection/internal/Lock;

    goto :goto_8

    :cond_d
    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Landroidx/collection/internal/Lock;

    goto :goto_8

    :cond_e
    const/4 v7, 0x3

    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Landroidx/collection/internal/Lock;

    goto :goto_8

    :cond_f
    const/4 v3, 0x2

    const/4 v7, 0x3

    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Landroidx/collection/internal/Lock;

    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v12, v2, v8}, Lcom/airbnb/lottie/value/LottieFrameInfo;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v11}, Lcom/airbnb/lottie/value/LottieFrameInfo;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0, v11, v5}, Landroidx/media3/exoplayer/MediaSourceList;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0, v11, v14}, Landroidx/media3/exoplayer/MediaSourceList;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    const/16 v17, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v11, v11, v10, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 v8, 0x0

    const/16 v16, 0x0

    aput v8, v6, v16

    iget v2, v12, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    const/16 v17, 0x1

    aput v2, v6, v17

    aget-object v2, v18, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v6, v16

    aget v8, v6, v17

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v9}, Lcom/airbnb/lottie/value/LottieFrameInfo;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_b

    :goto_a
    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_b
    if-eqz p4, :cond_12

    aget-object v2, v18, v5

    move-object/from16 v8, p4

    iget-object v11, v8, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v14, v11, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    add-int/lit8 v15, v5, 0x4

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v3}, Ljava/util/BitSet;->set(IZ)V

    iget-object v11, v11, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v14, v12, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    invoke-virtual {v12, v14}, Lcom/airbnb/lottie/value/LottieFrameInfo;->addConnectingShadowIfNecessary(F)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v12, v12, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v12, v2, v14}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v12, v11, v5

    goto :goto_c

    :cond_12
    move-object/from16 v8, p4

    const/4 v3, 0x0

    :goto_c
    move-object/from16 v2, p3

    move/from16 v16, v3

    move-object v3, v8

    move v5, v13

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v15, 0x4

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v9, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method

.method public createTimeline()Landroidx/media3/common/Timeline;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iput v2, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v1, v0, p0}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    return-object v1
.end method

.method public disableUnusedMediaSources()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    check-cast v1, [Lcom/airbnb/lottie/value/LottieFrameInfo;

    aget-object v1, v1, p2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast p0, [Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0, v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method public prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 6

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    new-instance v1, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaSourceList;)V

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;-><init>(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    new-instance v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    iput-object v2, v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    iput-object v2, v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/datasource/TransferListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1, p1, p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    check-cast p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    return-void
.end method

.method public removeMediaSourcesInternal(II)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_0
    if-lt p2, p1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    neg-int v3, v3

    move v4, p2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v6, v3

    iput v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v1, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
