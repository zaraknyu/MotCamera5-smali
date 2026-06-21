.class public final Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lh/d;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lh/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/b;->a:Lh/d;

    iput p2, p0, Lh/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iget-object v3, v0, Lh/b;->a:Lh/d;

    iget-object v4, v3, Lh/d;->c:La/i;

    iget-object v5, v3, Lh/d;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-boolean v4, v4, La/i;->d:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    if-eqz v2, :cond_7

    new-instance v4, Lc/a;

    invoke-virtual {v2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v2

    const-string v11, "getPointsRef(...)"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lc/a;-><init>([Landroid/graphics/PointF;)V

    sget-object v2, Lg/x;->c:Landroid/app/ActivityManager;

    iget-object v2, v4, Lc/a;->a:[Landroid/graphics/PointF;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v4, v2

    new-array v10, v4, [Landroid/graphics/PointF;

    move v11, v8

    :goto_0
    if-ge v11, v4, :cond_1

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v8

    :goto_1
    if-ge v11, v4, :cond_2

    aget-object v12, v2, v11

    new-instance v13, Landroid/graphics/PointF;

    iget v14, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-direct {v13, v14, v12}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v10, :cond_7

    array-length v2, v10

    if-eq v2, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v2, 0x5a

    const/4 v4, 0x3

    iget v0, v0, Lh/b;->b:I

    if-eq v0, v2, :cond_6

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_4

    goto/16 :goto_3

    :cond_4
    aget-object v0, v10, v8

    iget v2, v0, Landroid/graphics/PointF;->y:F

    int-to-float v11, v9

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v12

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iput v12, v0, Landroid/graphics/PointF;->y:F

    aget-object v0, v10, v9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v12

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iput v12, v0, Landroid/graphics/PointF;->y:F

    aget-object v0, v10, v7

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v12

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iput v12, v0, Landroid/graphics/PointF;->y:F

    aget-object v0, v10, v4

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iput v11, v0, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_5
    int-to-float v0, v9

    aget-object v2, v10, v8

    iget v11, v2, Landroid/graphics/PointF;->x:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->y:F

    sub-float v12, v0, v12

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v9

    iget v11, v2, Landroid/graphics/PointF;->x:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->y:F

    sub-float v12, v0, v12

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v7

    iget v11, v2, Landroid/graphics/PointF;->x:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->y:F

    sub-float v12, v0, v12

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v4

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v4

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v11

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iput v0, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_6
    int-to-float v0, v9

    aget-object v2, v10, v8

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->x:F

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v9

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->x:F

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v7

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float v11, v0, v11

    iget v12, v2, Landroid/graphics/PointF;->x:F

    iput v11, v2, Landroid/graphics/PointF;->x:F

    iput v12, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v10, v4

    iget v4, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iput v0, v2, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    :cond_7
    :goto_3
    iget-object v2, v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    :cond_8
    iget-object v0, v3, Lh/d;->c:La/i;

    iget v0, v0, La/i;->c:I

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v0, :cond_a

    if-le v0, v7, :cond_9

    goto :goto_4

    :cond_9
    move-object v15, v5

    goto/16 :goto_8

    :cond_a
    :goto_4
    sget-object v0, Lh/a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v0, v0, v11

    if-eq v0, v9, :cond_b

    if-eq v0, v7, :cond_b

    sget-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->LookingForDocument:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->Capturing:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    :goto_5
    iget-object v7, v3, Lh/d;->h:Lc/B;

    sget-object v11, Lh/d;->k:[Lkotlin/reflect/KProperty;

    aget-object v11, v11, v8

    invoke-virtual {v7, v0, v11}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    iput-object v10, v3, Lh/d;->f:[Landroid/graphics/PointF;

    iget-object v0, v3, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iget-object v0, v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;->onBoundaryDetected:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lh/d;->f:[Landroid/graphics/PointF;

    if-nez v0, :cond_d

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    :cond_c
    move-object v15, v5

    goto :goto_7

    :cond_d
    array-length v7, v0

    if-ne v7, v6, :cond_c

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    iget-object v7, v3, Lh/d;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v0

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    array-length v11, v0

    :goto_6
    if-ge v8, v11, :cond_e

    aget-object v12, v0, v8

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    move-object v15, v5

    int-to-long v4, v12

    const/16 v12, 0x20

    shl-long v12, v13, v12

    const-wide v16, 0xffffffffL

    and-long v4, v4, v16

    or-long/2addr v4, v12

    new-instance v12, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v12, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object v5, v15

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_6

    :cond_e
    move-object v15, v5

    new-instance v0, Le/o0;

    invoke-direct {v0, v10, v9}, Le/o0;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_7
    iget-object v0, v3, Lh/d;->f:[Landroid/graphics/PointF;

    if-eqz v0, :cond_10

    array-length v0, v0

    if-ne v0, v6, :cond_10

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintHoldForCapture:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    if-eq v2, v0, :cond_f

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintReadyForCapture:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    if-ne v2, v0, :cond_10

    :cond_f
    iget-object v0, v3, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iget-object v0, v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;->onReadyForCapture:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_10
    :goto_8
    if-nez v1, :cond_11

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    :cond_11
    return-void
.end method
