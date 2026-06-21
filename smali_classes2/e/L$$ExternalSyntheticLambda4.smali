.class public final synthetic Le/L$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Le/D;

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(FFLe/D;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/L$$ExternalSyntheticLambda4;->f$0:F

    iput p2, p0, Le/L$$ExternalSyntheticLambda4;->f$1:F

    iput-object p3, p0, Le/L$$ExternalSyntheticLambda4;->f$2:Le/D;

    iput p4, p0, Le/L$$ExternalSyntheticLambda4;->f$3:I

    iput-wide p5, p0, Le/L$$ExternalSyntheticLambda4;->f$4:J

    iput-wide p7, p0, Le/L$$ExternalSyntheticLambda4;->f$5:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string p1, "$this$Canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Le/L$$ExternalSyntheticLambda4;->f$0:F

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    iget p1, p0, Le/L$$ExternalSyntheticLambda4;->f$1:F

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    new-instance v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move-object p1, v4

    iget-object v1, p0, Le/L$$ExternalSyntheticLambda4;->f$2:Le/D;

    iget-object v1, v1, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Le/L$$ExternalSyntheticLambda4;->f$3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    iget-wide v1, p0, Le/L$$ExternalSyntheticLambda4;->f$5:J

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    const/16 v8, 0x68

    iget-wide v1, p0, Le/L$$ExternalSyntheticLambda4;->f$4:J

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
