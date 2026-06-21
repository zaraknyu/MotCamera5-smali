.class public final synthetic Le/A$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:J

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:J

.field public final synthetic f$8:J

.field public final synthetic f$9:Landroidx/compose/ui/graphics/AndroidImageBitmap;


# direct methods
.method public synthetic constructor <init>(FJFJLkotlin/jvm/functions/Function1;FFJJLandroidx/compose/ui/graphics/AndroidImageBitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/A$$ExternalSyntheticLambda1;->f$0:F

    iput-wide p2, p0, Le/A$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Le/A$$ExternalSyntheticLambda1;->f$2:F

    iput-wide p5, p0, Le/A$$ExternalSyntheticLambda1;->f$3:J

    iput-object p7, p0, Le/A$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Le/A$$ExternalSyntheticLambda1;->f$5:F

    iput p9, p0, Le/A$$ExternalSyntheticLambda1;->f$6:F

    iput-wide p10, p0, Le/A$$ExternalSyntheticLambda1;->f$7:J

    iput-wide p12, p0, Le/A$$ExternalSyntheticLambda1;->f$8:J

    iput-object p14, p0, Le/A$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Le/A$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iget v2, v0, Le/A$$ExternalSyntheticLambda1;->f$5:F

    iget v3, v0, Le/A$$ExternalSyntheticLambda1;->f$6:F

    iget-wide v4, v0, Le/A$$ExternalSyntheticLambda1;->f$7:J

    iget-wide v6, v0, Le/A$$ExternalSyntheticLambda1;->f$8:J

    iget-object v8, v0, Le/A$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v10, "$this$Canvas"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v0, Le/A$$ExternalSyntheticLambda1;->f$0:F

    invoke-interface {v9, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v12

    const/16 v16, 0x0

    const/16 v17, 0x7c

    iget-wide v10, v0, Le/A$$ExternalSyntheticLambda1;->f$1:J

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v13

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v11, v10, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v15, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v15}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x20

    move/from16 p1, v12

    move-wide/from16 v19, v13

    shr-long v12, v16, v18

    long-to-int v12, v12

    :try_start_1
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v15}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v14

    const-wide v21, 0xffffffffL

    and-long v14, v14, v21

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    div-float/2addr v14, v13

    invoke-virtual {v11, v12, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v1, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v1, v1, v12, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-virtual {v11, v2, v12, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    invoke-static {v4, v5, v6, v7}, La/l;->a(JJ)J

    move-result-wide v1

    shr-long v3, v1, v18

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    and-long v1, v1, v21

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v11, v3, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    const/4 v1, 0x0

    const/16 v2, 0x3e

    invoke-static {v9, v8, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-wide/from16 v1, v19

    invoke-virtual {v10, v1, v2}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iget v1, v0, Le/A$$ExternalSyntheticLambda1;->f$2:F

    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v3, v1

    sub-float v12, p1, v1

    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    const/4 v15, 0x0

    const/16 v17, 0x6c

    iget-wide v10, v0, Le/A$$ExternalSyntheticLambda1;->f$3:J

    const-wide/16 v13, 0x0

    move/from16 v0, p1

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    move-wide v11, v10

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    neg-float v4, v0

    shr-long v5, v2, v18

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long v2, v2, v21

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v5, v5, v18

    and-long v2, v2, v21

    or-long v13, v5, v2

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    shr-long v5, v2, v18

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long v2, v2, v21

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v5, v5, v18

    and-long v2, v2, v21

    or-long v15, v5, v2

    move v10, v1

    invoke-interface/range {v9 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0(FJJJ)V

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    shr-long v5, v1, v18

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v4

    and-long v1, v1, v21

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    shl-long v1, v2, v18

    and-long v3, v4, v21

    or-long v13, v1, v3

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    shr-long v3, v1, v18

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v0

    and-long v0, v1, v21

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    shl-long v0, v1, v18

    and-long v2, v3, v21

    or-long v15, v0, v2

    invoke-interface/range {v9 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0(FJJJ)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    move-wide/from16 v1, v19

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v1, v13

    :goto_0
    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v10, v1, v2}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
.end method
