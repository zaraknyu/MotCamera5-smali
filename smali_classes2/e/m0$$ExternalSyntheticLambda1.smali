.class public final synthetic Le/m0$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$1:J

.field public final synthetic f$2:Le/W0;

.field public final synthetic f$3:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;JLe/W0;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m0$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-wide p2, p0, Le/m0$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Le/m0$$ExternalSyntheticLambda1;->f$2:Le/W0;

    iput p5, p0, Le/m0$$ExternalSyntheticLambda1;->f$3:F

    iput p6, p0, Le/m0$$ExternalSyntheticLambda1;->f$5:F

    iput p7, p0, Le/m0$$ExternalSyntheticLambda1;->f$6:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Le/m0$$ExternalSyntheticLambda1;->f$3:F

    iget v2, v0, Le/m0$$ExternalSyntheticLambda1;->f$5:F

    iget v3, v0, Le/m0$$ExternalSyntheticLambda1;->f$6:F

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v5, "$this$Canvas"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Le/m0$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v5, :cond_0

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-wide v9, v0, Le/m0$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, v0, Le/m0$$ExternalSyntheticLambda1;->f$2:Le/W0;

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 p1, v6

    goto/16 :goto_0

    :cond_1
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v7

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {v11}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v14, v11, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    move-object/from16 p1, v6

    move-wide v15, v7

    const-wide/16 v6, 0x0

    invoke-static {v9, v10, v1, v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static {v10, v2, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v10

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Le/W0;->a(FZ)F

    move-result v0

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    const/16 v1, 0x20

    shr-long v2, v8, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v6, 0xffffffffL

    and-long/2addr v8, v6

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v14, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    shr-long v1, v15, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    and-long v2, v15, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v14, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v14, v0, v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-virtual {v14, v10, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    iget-object v0, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    const/4 v0, 0x0

    const/16 v1, 0x3e

    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v11, v12, v13}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v11, v12, v13}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :goto_0
    return-object p1
.end method
