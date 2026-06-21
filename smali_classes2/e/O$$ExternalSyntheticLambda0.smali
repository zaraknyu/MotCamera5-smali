.class public final synthetic Le/O$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method public synthetic constructor <init>(JJLandroidx/compose/ui/geometry/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/O$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p3, p0, Le/O$$ExternalSyntheticLambda0;->f$1:J

    iput-object p5, p0, Le/O$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Le/O$$ExternalSyntheticLambda0;->f$0:J

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    iget-wide v0, p0, Le/O$$ExternalSyntheticLambda0;->f$1:J

    shr-long v2, v0, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    iget-object p0, p0, Le/O$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/geometry/Rect;

    iget v0, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v1, p0

    neg-float p0, v1

    div-float/2addr p0, v4

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
