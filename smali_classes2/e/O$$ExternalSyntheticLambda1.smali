.class public final synthetic Le/O$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Le/W0;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Le/W0;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/O$$ExternalSyntheticLambda1;->f$0:Le/W0;

    iput p2, p0, Le/O$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Le/O$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const-string p1, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/O$$ExternalSyntheticLambda1;->f$0:Le/W0;

    iget-wide v1, p1, Le/W0;->a:J

    iget-wide v3, p1, Le/W0;->b:J

    const/16 p1, 0x20

    shr-long v5, v1, p1

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v1, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    div-float/2addr v1, v6

    invoke-virtual {v0, v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    iget v1, p0, Le/O$$ExternalSyntheticLambda1;->f$1:F

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v1, v1, v9, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    iget p0, p0, Le/O$$ExternalSyntheticLambda1;->f$2:F

    invoke-virtual {v0, p0, v9, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    shr-long p0, v3, p1

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v6

    and-long v1, v3, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/4 v2, 0x0

    const/16 v5, 0x13

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;FFFFI)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
