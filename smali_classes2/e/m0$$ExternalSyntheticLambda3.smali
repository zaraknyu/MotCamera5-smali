.class public final synthetic Le/m0$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lc/v1;

.field public final synthetic f$1:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lc/x;

.field public final synthetic f$4:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f$5:Lc/a;

.field public final synthetic f$6:Lc/a;


# direct methods
.method public synthetic constructor <init>(Lc/v1;Landroidx/compose/ui/graphics/AndroidImageBitmap;FLc/x;Landroidx/compose/animation/core/Animatable;Lc/a;Lc/a;Lc/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m0$$ExternalSyntheticLambda3;->f$0:Lc/v1;

    iput-object p2, p0, Le/m0$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput p3, p0, Le/m0$$ExternalSyntheticLambda3;->f$2:F

    iput-object p4, p0, Le/m0$$ExternalSyntheticLambda3;->f$3:Lc/x;

    iput-object p5, p0, Le/m0$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/animation/core/Animatable;

    iput-object p6, p0, Le/m0$$ExternalSyntheticLambda3;->f$5:Lc/a;

    iput-object p7, p0, Le/m0$$ExternalSyntheticLambda3;->f$6:Lc/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m0$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/animation/core/Animatable;

    iget-object v2, v0, Le/m0$$ExternalSyntheticLambda3;->f$5:Lc/a;

    iget-object v3, v0, Le/m0$$ExternalSyntheticLambda3;->f$6:Lc/a;

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v5, "$this$Canvas"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Le/m0$$ExternalSyntheticLambda3;->f$0:Lc/v1;

    invoke-virtual {v5}, Lc/v1;->d()Z

    move-result v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v6, :cond_0

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Le/m0$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-nez v6, :cond_1

    :cond_0
    move-object v10, v7

    goto/16 :goto_5

    :cond_1
    iget v8, v5, Lc/v1;->a:F

    iget v5, v5, Lc/v1;->b:F

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    shr-long v14, v10, v5

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    move-wide v15, v12

    shr-long v12, v8, v5

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    iget v13, v0, Le/m0$$ExternalSyntheticLambda3;->f$2:F

    invoke-static {v14, v12, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v12

    and-long/2addr v10, v15

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    and-long/2addr v8, v15

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v10, v8, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v8

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    shl-long v8, v9, v5

    and-long v10, v11, v15

    or-long/2addr v8, v10

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v9}, La/l;->a(JJ)Le/W0;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v12}, La/l;->a(Le/W0;FZ)Le/N;

    move-result-object v8

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v14, v10, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    move/from16 p1, v5

    iget-object v5, v8, Le/N;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, v0, Le/m0$$ExternalSyntheticLambda3;->f$3:Lc/x;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v5, v0, Lc/x;->a:Lc/H;

    iget v14, v5, Lc/H;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget v5, v5, Lc/H;->b:I

    if-lez v14, :cond_2

    if-gtz v5, :cond_3

    :cond_2
    move-object/from16 v20, v10

    move-wide/from16 v21, v11

    move-object v10, v7

    goto/16 :goto_2

    :cond_3
    :try_start_2
    iget-object v0, v0, Lc/x;->b:Landroid/graphics/RectF;

    move-wide/from16 v17, v15

    iget v15, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v19, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v20, v10

    move-wide/from16 v21, v11

    :try_start_3
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    move-object v12, v2

    move-object/from16 v23, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    iget v11, v10, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v11, v15, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v11

    iget v15, v10, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v15, v9, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v9

    iget v15, v10, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v15, v1, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    iget v10, v10, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v10, v0, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    move-object v10, v7

    iget-wide v7, v8, Le/N;->a:J

    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    iget v15, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v15, v11, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v11

    iget v15, v2, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v15, v9, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v9

    iget v15, v2, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v15, v1, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v2, v0, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-direct {v3, v11, v9, v1, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v0

    move-object/from16 v29, v3

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v27

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v0

    new-instance v24, Le/O$$ExternalSyntheticLambda0;

    move-wide/from16 v25, v7

    invoke-direct/range {v24 .. v29}, Le/O$$ExternalSyntheticLambda0;-><init>(JJLandroidx/compose/ui/geometry/Rect;)V

    move-object/from16 v2, v24

    iget-object v3, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v7, v14

    invoke-static {v3, v7, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    iget-object v7, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v5, v5

    invoke-static {v7, v5, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v7, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    shl-long v7, v7, p1

    and-long v14, v14, v17

    or-long/2addr v7, v14

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v0, v1, v7, v8}, La/l;->a(JJ)Le/W0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, La/l;->a(Le/W0;FZ)Le/N;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v2, v3}, Le/O$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Le/N;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-static {v12, v0, v13}, La/l;->a(Lc/a;Lc/a;F)Lc/a;

    move-result-object v0

    invoke-static {v6}, Landroidx/compose/ui/graphics/Brush;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "bitmap"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v3, v5, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v3}, La/l;->a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    shr-long v11, v7, p1

    long-to-int v3, v11

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v7, v7, v17

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/RectF;->right:F

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v8, v9, v2}, Landroid/graphics/PointF;-><init>(FF)V

    filled-new-array {v3, v5, v7, v8}, [Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v0, v2}, Lc/s1;->a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/compose/ui/graphics/Brush;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0, v5}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    const/4 v0, 0x0

    const/16 v3, 0x3e

    invoke-static {v4, v6, v0, v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v7, v8}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v14, v15}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v7, v8}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v14, v15}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v0

    move-object/from16 v20, v10

    move-wide/from16 v21, v11

    goto :goto_0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    return-object v10

    :catchall_4
    move-exception v0

    move-object v1, v10

    move-wide v2, v11

    goto :goto_4

    :cond_4
    move-object v1, v10

    move-wide v2, v11

    move-object v10, v7

    :goto_3
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    return-object v10

    :goto_4
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :goto_5
    return-object v10
.end method
