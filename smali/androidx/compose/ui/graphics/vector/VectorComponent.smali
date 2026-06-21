.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "SourceFile"


# instance fields
.field public final cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

.field public final drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

.field public final intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public invalidateCallback:Lkotlin/jvm/internal/Lambda;

.field public isDirty:Z

.field public name:Ljava/lang/String;

.field public previousDrawSize:J

.field public final root:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field public rootScaleX:F

.field public rootScaleY:F

.field public tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public final viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    iput-object v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    const-string p1, ""

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    new-instance p1, Landroidx/compose/ui/graphics/vector/DrawCache;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    sget-object p1, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE$1:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->invalidateCallback:Lkotlin/jvm/internal/Lambda;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Landroidx/compose/ui/geometry/Size;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    iget-boolean v3, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    const/4 v4, 0x5

    .line 3
    iget-object v5, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 4
    iget-wide v8, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    const-wide/16 v10, 0x10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/ColorFilter;

    .line 6
    sget v8, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 7
    instance-of v8, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v9, 0x3

    if-eqz v8, :cond_1

    .line 8
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 9
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v9, :cond_4

    goto :goto_0

    :cond_1
    if-nez v3, :cond_4

    .line 10
    :goto_0
    instance-of v3, v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    if-eqz v3, :cond_3

    .line 11
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 12
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v9, :cond_4

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 13
    :goto_2
    iget-boolean v8, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    iget-object v9, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    if-nez v8, :cond_6

    iget-wide v10, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 14
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v8, :cond_5

    .line 15
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-ne v3, v8, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ne v3, v6, :cond_7

    .line 16
    iget-wide v10, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    .line 17
    new-instance v2, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    invoke-direct {v2, v10, v11, v4}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 18
    :goto_4
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 19
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    const/16 v2, 0x20

    shr-long/2addr v10, v2

    long-to-int v4, v10

    .line 20
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 21
    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Size;

    .line 22
    iget-wide v10, v8, Landroidx/compose/ui/geometry/Size;->packedValue:J

    shr-long/2addr v10, v2

    long-to-int v8, v10

    .line 23
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    div-float/2addr v4, v8

    .line 24
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    .line 25
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    long-to-int v4, v10

    .line 26
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 27
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/geometry/Size;

    .line 28
    iget-wide v10, v6, Landroidx/compose/ui/geometry/Size;->packedValue:J

    and-long/2addr v10, v12

    long-to-int v6, v10

    .line 29
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    div-float/2addr v4, v6

    .line 30
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    .line 31
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    shr-long/2addr v10, v2

    long-to-int v4, v10

    .line 32
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v10, v4

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v4, v10

    float-to-int v4, v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    and-long/2addr v10, v12

    long-to-int v6, v10

    .line 34
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    float-to-double v10, v6

    .line 35
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v6, v10

    float-to-int v6, v6

    int-to-long v10, v4

    shl-long/2addr v10, v2

    int-to-long v14, v6

    and-long/2addr v14, v12

    or-long/2addr v10, v14

    .line 36
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    .line 37
    iget-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 38
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/graphics/AndroidCanvas;

    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    shr-long v14, v10, v2

    long-to-int v14, v14

    .line 39
    iget-object v15, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    move/from16 v16, v2

    .line 40
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-wide/from16 v17, v12

    if-gt v14, v2, :cond_9

    and-long v12, v10, v17

    long-to-int v2, v12

    .line 41
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-gt v2, v12, :cond_9

    .line 42
    iget v2, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_8
    move/from16 v16, v2

    move-wide/from16 v17, v12

    :cond_9
    shr-long v12, v10, v16

    long-to-int v2, v12

    and-long v12, v10, v17

    long-to-int v6, v12

    .line 43
    invoke-static {v2, v6, v3}, Landroidx/compose/ui/graphics/Brush;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-result-object v6

    .line 44
    sget-object v2, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    .line 45
    new-instance v8, Landroidx/compose/ui/graphics/AndroidCanvas;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-static {v6}, Landroidx/compose/ui/graphics/Brush;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    iput-object v2, v8, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 47
    iput-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    .line 48
    iput-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    .line 49
    iput v3, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 50
    :goto_5
    iput-wide v10, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 51
    iget-object v2, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    .line 52
    iget-object v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 53
    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 54
    iget-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    iget-object v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-object/from16 v21, v8

    .line 56
    iget-wide v7, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    move-object/from16 v15, p1

    .line 57
    iput-object v15, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 58
    iput-object v4, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v4, v21

    .line 59
    iput-object v4, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 60
    iput-wide v2, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 61
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    move-object v2, v13

    move-object v3, v14

    .line 62
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Black:J

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    .line 63
    invoke-static/range {v12 .. v20}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 64
    iget-object v10, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    invoke-virtual {v10, v12}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 66
    iget-object v4, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 67
    iput-object v11, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 68
    iput-object v2, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 69
    iput-object v3, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 70
    iput-wide v7, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 71
    iget-object v2, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 73
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    :goto_6
    if-eqz v1, :cond_a

    move-object/from16 v29, v1

    goto :goto_8

    .line 74
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/ColorFilter;

    if-eqz v1, :cond_b

    .line 75
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    :goto_7
    move-object/from16 v29, v0

    goto :goto_8

    .line 76
    :cond_b
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    goto :goto_7

    .line 77
    :goto_8
    iget-object v0, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v23, :cond_c

    goto :goto_9

    .line 78
    :cond_c
    const-string v0, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 79
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 80
    :goto_9
    iget-wide v0, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const/16 v30, 0x0

    const/16 v31, 0x35a

    const-wide/16 v26, 0x0

    move-object/from16 v22, p1

    move/from16 v28, p2

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v31}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params: \tname: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
